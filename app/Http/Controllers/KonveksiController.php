<?php

namespace App\Http\Controllers;

use App\Models\Konveksi;
use App\Models\Produksi;
use Illuminate\Http\Request;

class KonveksiController extends Controller
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

        return view('konveksi.index', [
            'konveksis' => $konveksis,
            'produksi' => $produksi,
            'title' => 'Konveksi',
        ]);
    }

    public function create()
    {
        $konveksis = Konveksi::all();

        return view('konveksi.create', [
            'konveksis' => $konveksis,
            'title' => 'Tambah Konveksi',
        ]);
    }

    public function store(Request $request)
    {
        $request->validate([
            'konveksi_id' => 'nullable|exists:konveksis,id',
            'model' => 'required|string',
            'bahan' => 'required|string',
            'jumlah_order' => 'required|integer',
            'detail_aksesoris' => 'required|string',
            'indent_bahan' => 'required|integer',
            'estimasi_produksi' => 'required|integer',
        ]);

        Produksi::create($request->all());

        return redirect()->route('konveksi.index')
            ->with('success', 'Estimasi produksi berhasil ditambahkan.');
    }

    public function edit($id)
    {
        $produksi = Produksi::findOrFail($id);
        $konveksis = Konveksi::all();

        return view('konveksi.edit', [
            'konveksis' => $konveksis,
            'produksi' => $produksi,
            'title' => 'Edit Konveksi',
        ]);
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'model' => 'required|string|max:255',
            'bahan' => 'required|string|max:255',
            'jumlah_order' => 'required|integer',
            'detail_aksesoris' => 'nullable|string|max:255',
            'indent_bahan' => 'required|integer',
            'estimasi_produksi' => 'required|integer',
            'konveksi' => 'nullable|exists:konveksis,id',
        ]);

        $produksi = Produksi::findOrFail($id);
        $produksi->update([
            'model' => $request->model,
            'bahan' => $request->bahan,
            'jumlah_order' => $request->jumlah_order,
            'detail_aksesoris' => $request->detail_aksesoris,
            'indent_bahan' => $request->indent_bahan,
            'estimasi_produksi' => $request->estimasi_produksi,
            'konveksi_id' => $request->konveksi,
        ]);

        return redirect()->back()->with('success', 'Data berhasil diperbarui.');
    }

    public function destroy($id)
    {
        Produksi::findOrFail($id)->delete();

        return redirect()->back()->with('success', 'Data berhasil dihapus.');
    }
}
