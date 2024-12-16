<?php

namespace App\Http\Controllers;

use DateTime;
use App\Models\Konveksi;
use Illuminate\Http\Request;
use App\Models\KonveksiProgress;
use Illuminate\Support\Facades\DB;

class DashboardController extends Controller
{
    public function index()
    {
        $totalOrders = DB::table('produksis')->sum('jumlah_order');
        $totalProjects = DB::table('konveksis')->count();
        $avgProgress = DB::table('konveksi_progress')->avg('progress');
        $totalProductionEstimation = DB::table('produksis')->sum('estimasi_produksi');

        $poNow = Konveksi::whereDate('date', '>=', now()->startOfDay())
            ->whereDate('date', '<=', now()->endOfDay())
            ->latest()
            ->paginate(5);

        $poNext = Konveksi::whereDate('date', '>', now()->endOfDay())
            ->latest()
            ->paginate(5);

        return view('dashboard', [
            'totalOrders' => $totalOrders,
            'totalProjects' => $totalProjects,
            'avgProgress' => $avgProgress,
            'totalProductionEstimation' => $totalProductionEstimation,
            'poNow' => $poNow,
            'poNext' => $poNext,
            'title' => 'Welcome!',
        ]);
    }

    public function chartData(Request $request)
    {
        $period = $request->get('period', '1y');

        // Ambil data dari tabel yang sudah terhubung
        $data = DB::table('konveksis')
            ->leftJoin('konveksi_progress', 'konveksis.id', '=', 'konveksi_progress.konveksi_id')
            ->join('produksis', 'konveksis.id', '=', 'produksis.konveksi_id')
            ->select(
                DB::raw('MONTH(konveksis.date) as month'),
                DB::raw('SUM(produksis.jumlah_order) as total_orders'),
                DB::raw('SUM(produksis.estimasi_produksi) as total_estimasi_produksi'),
                DB::raw('SUM(konveksi_progress.progress) as total_progress')
            )
            ->when($period === '1m', function ($query) {
                return $query->whereMonth('konveksis.date', '=', now()->month); // Filter untuk 1 bulan terakhir
            })
            ->when($period === '6m', function ($query) {
                return $query->whereBetween('konveksis.date', [now()->subMonths(6), now()]); // Filter untuk 6 bulan terakhir
            })
            ->when($period === '1y', function ($query) {
                return $query->whereBetween('konveksis.date', [now()->subYear(), now()]); // Filter untuk 1 tahun terakhir
            })
            ->groupBy(DB::raw('MONTH(konveksis.date)'))
            ->orderBy(DB::raw('MONTH(konveksis.date)'), 'asc')
            ->get();

        $categories = $data->pluck('month')->map(function ($month) {
            return DateTime::createFromFormat('!m', $month)->format('M'); // Mengubah angka bulan ke nama bulan
        });
        $orders = $data->pluck('total_orders');
        $estimasiProduksi = $data->pluck('total_estimasi_produksi');
        $progress = $data->pluck('total_progress');

        // Jika tidak ada data progress, set data progress sebagai array kosong
        if ($progress->isEmpty()) {
            $progress = collect(array_fill(0, $data->count(), 0)); // Mengisi progress dengan nilai 0
        }

        return response()->json([
            'categories' => $categories,
            'orders' => $orders,
            'estimasiProduksi' => $estimasiProduksi,
            'progress' => $progress,  // Mengirimkan data progress yang bisa kosong
        ]);
    }
}
