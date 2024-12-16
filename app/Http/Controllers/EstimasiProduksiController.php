<?php

namespace App\Http\Controllers;

use App\Enums\Bidang;
use App\Models\Konveksi;
use App\Models\Produksi;
use Barryvdh\DomPDF\Facade\Pdf;
use Illuminate\Http\Request;

class EstimasiProduksiController extends Controller
{
    public function index(Request $request)
    {
        $konveksiId = $request->get('konveksi_id');
        $konveksis = Konveksi::all();

        $produksi = Produksi::when($konveksiId, function ($query) use ($konveksiId) {
            return $query->where('konveksi_id', $konveksiId);
        })
            ->latest()
            ->paginate(10);

        return view('estimasi-produksi.index', [
            'konveksis' => $konveksis,
            'produksi' => $produksi,
            'title' => 'Estimasi Produksi',
        ]);
    }

    public function show($id)
    {
        $produksi = Produksi::findOrFail($id);
        $konveksis = Konveksi::all();

        return view('estimasi-produksi.show', [
            'produksi' => $produksi,
            'konveksis' => $konveksis,
            'title' => 'Detail Produksi',
        ]);
    }

    public function updateCatatan(Request $request)
    {
        $request->validate([
            'id' => 'required|exists:produksis,id',
            'catatan' => 'nullable|string|max:1000',
        ]);

        $produksi = Produksi::findOrFail($request->id);
        $produksi->update(['catatan' => $request->catatan]);

        return response()->json(['message' => 'Catatan berhasil diperbarui']);
    }

    public function cetakPDF($id)
    {
        $produksi = Produksi::findOrFail($id);

        $pdf = Pdf::loadView('estimasi-produksi.pdf', compact('produksi'))
            ->setPaper('a4', 'portrait');

        return $pdf->stream('estimasi-produksi-' . $produksi->id . '.pdf');
    }
}
