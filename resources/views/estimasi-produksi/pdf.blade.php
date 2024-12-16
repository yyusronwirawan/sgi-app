<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Estimasi Produksi</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
        }

        .container {
            padding: 20px;
            margin: auto;
        }

        .header {
            text-align: center;
            margin-bottom: 20px;
        }

        .header h1 {
            font-size: 24px;
            margin-bottom: 5px;
        }

        .header p {
            font-size: 14px;
            color: gray;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        table,
        th,
        td {
            border: 1px solid #ddd;
        }

        th,
        td {
            padding: 8px 12px;
            text-align: left;
        }

        th {
            background-color: #f4f4f4;
        }

        .footer {
            text-align: center;
            margin-top: 30px;
            font-size: 12px;
            color: gray;
        }
    </style>
</head>

<body>
    <div class="container">
        <div class="header">
            <h1>Estimasi Produksi</h1>
            <p>Data produksi untuk estimasi {{ $produksi->estimasi_produksi }} hari</p>
        </div>

        <table>
            <tr>
                <th>Jenis Model / Tipe</th>
                <td>{{ $produksi->model }}</td>
            </tr>
            <tr>
                <th>Nama Bahan</th>
                <td>{{ $produksi->bahan }}</td>
            </tr>
            <tr>
                <th>Jumlah Order</th>
                <td>{{ $produksi->jumlah_order }}</td>
            </tr>
            <tr>
                <th>Detail Aksesoris</th>
                <td>{{ $produksi->detail_aksesoris }}</td>
            </tr>
            <tr>
                <th>Indent Bahan</th>
                <td>{{ $produksi->indent_bahan }} Hari</td>
            </tr>
            <tr>
                <th>Catatan</th>
                <td>{{ $produksi->catatan }}</td>
            </tr>
        </table>

        <div class="footer">
            <p>Dicetak pada: {{ now()->format('d-m-Y H:i') }}</p>
        </div>
    </div>
</body>

</html>
