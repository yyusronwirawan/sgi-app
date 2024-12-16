<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class EstimasiProduksi extends Controller
{
    public function index()
    {
        return view('estimasi-produksi.index', [
            'title' => 'Estimasi Produksi'
        ]);
    }
}
