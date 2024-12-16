<?php

namespace App\Http\Controllers;

use App\Enums\Bidang;
use App\Models\Konveksi;
use App\Models\KonveksiProgress;
use Illuminate\Http\Request;

class LaporanVendorController extends Controller
{
    public function index()
    {
        return view('laporan.vendor.index', [
            'title' => 'Laporan Vendor',
        ]);
    }

    public function show($id)
    {
        $id = Bidang::searchSlug($id);

        $konveksi = Konveksi::with(['progress' => function ($query) {
            $query->latest()->first(); // Ambil hanya 1 progress terbaru
        }])
            ->whereBidang($id)
            ->latest()
            ->paginate(10);
        return view('laporan.vendor.show', [
            'konveksi' => $konveksi,
            'title' => $konveksi->first()?->bidang,
        ]);
    }

    public function edit($id)
    {
        $konveksi = Konveksi::find($id);

        $progressExist = $konveksi->progress()->pluck('progress')->toArray();
        $descriptionExist = $konveksi->progress()->pluck('desc')->toArray();

        return view('laporan.vendor.edit', [
            'konveksi' => $konveksi,
            'bidang' => Bidang::getCases(),
            'title' =>  $konveksi->bidang,
            'progressExist' => $progressExist,
            'descriptionExist' => $descriptionExist,
        ]);
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'customer' =>  ['required', 'max:100', 'string'],
            'no_po' =>  ['nullable', 'max:100', 'string'],
            'date' =>  ['required', 'date'],
            'nama_pesanan' => ['required', 'max:100', 'string'],
        ]);

        Konveksi::whereId($id)->update($request->only([
            'customer',
            'no_po',
            'date',
            'nama_pesanan'
        ]));

        return redirect()->back()
            ->with('success', 'Data berhasil diubah');
    }

    public function destroy($id)
    {
        Konveksi::whereId($id)->delete();

        return redirect()->back()
            ->with('success', 'Data berhasil dihapus');
    }

    public function progress($id)
    {
        $konveksi = Konveksi::find($id);

        return view('laporan.vendor.progress', [
            'konveksi' => $konveksi,
            'title' => 'Tambah Progress Vendor',
        ]);
    }

    public function destroyProgress($id)
    {
        KonveksiProgress::whereId($id)->delete();

        return redirect()->back()
            ->with('success-progress', 'Data berhasil dihapus')
            ->withFragment('progress');
    }

    public function storeProgress(Request $request, $id)
    {
        $request->validate([
            'progress' => ['required', 'integer', 'min:10', 'max:100'],
            'desc' => ['required', 'string'],
            'photo' => ['required', 'image', 'max:2048', 'mimes:jpg,jpeg,png'],
        ]);

        $photo = $request->file('photo')->store('bukti', 'public');

        KonveksiProgress::create([
            'konveksi_id' => $id,
            'progress' => $request->progress,
            'desc' => $request->desc,
            'photo' => $photo,
        ]);

        return redirect()->back()
            ->with('success-progress', 'Data berhasil ditambahkan')
            ->withFragment('progress');
    }
}
