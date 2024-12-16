import ApexCharts from "apexcharts";
import axios from "axios";

// Data untuk chart
var options = {
    series: [
        {
            name: "Total Orders", // Data jumlah order
            type: "bar",
            data: [], // Data jumlah order
        },
        {
            name: "Estimasi Produksi", // Data estimasi produksi
            type: "area",
            data: [], // Data estimasi produksi
        },
        {
            name: "Progress", // Data progress
            type: "area",
            data: [], // Data progress (akan diisi jika ada)
        },
    ],
    chart: {
        height: 313,
        type: "line",
        toolbar: {
            show: false,
        },
    },
    stroke: {
        dashArray: [0, 0, 0],
        width: [0, 2, 2],
        curve: "smooth",
    },
    fill: {
        opacity: [1, 1, 0.2],
        type: ["solid", "gradient", "solid"],
        gradient: {
            type: "vertical",
            inverseColors: false,
            opacityFrom: 0.5,
            opacityTo: 0,
            stops: [0, 90],
        },
    },
    markers: {
        size: [0, 0, 0],
        strokeWidth: 2,
        hover: {
            size: 4,
        },
    },
    xaxis: {
        categories: [], // Kategori bulan
        axisTicks: {
            show: false,
        },
        axisBorder: {
            show: false,
        },
    },
    yaxis: {
        min: 0,
        axisBorder: {
            show: false,
        },
    },
    grid: {
        show: true,
        strokeDashArray: 3,
        xaxis: {
            lines: {
                show: false,
            },
        },
        yaxis: {
            lines: {
                show: true,
            },
        },
        padding: {
            top: 0,
            right: -2,
            bottom: 0,
            left: 10,
        },
    },
    legend: {
        show: true,
        horizontalAlign: "center",
        offsetX: 0,
        offsetY: 5,
        markers: {
            width: 9,
            height: 9,
            radius: 6,
        },
        itemMargin: {
            horizontal: 10,
            vertical: 0,
        },
    },
    plotOptions: {
        bar: {
            columnWidth: "30%",
            barHeight: "70%",
            borderRadius: 3,
        },
    },
    colors: ["#ff6c2f", "#22c55e", "#1e3a8a"], // Warna untuk tiga seri data
    tooltip: {
        shared: true,
        y: [
            {
                formatter: function (y) {
                    if (typeof y === "number" && !isNaN(y)) {
                        return y.toFixed(1) + "k"; // Hanya memanggil toFixed jika y adalah angka
                    }
                    return "-"; // Kembalikan tanda minus jika y tidak valid
                },
            },
            {
                formatter: function (y) {
                    if (typeof y === "number" && !isNaN(y)) {
                        return y.toFixed(1) + "k"; // Hanya memanggil toFixed jika y adalah angka
                    }
                    return "-"; // Kembalikan tanda minus jika y tidak valid
                },
            },
            {
                formatter: function (y) {
                    if (typeof y === "number" && !isNaN(y)) {
                        return y.toFixed(1) + "k"; // Hanya memanggil toFixed jika y adalah angka
                    }
                    return "-"; // Kembalikan tanda minus jika y tidak valid
                },
            },
        ],
    },
};

// Fungsi untuk mengupdate chart berdasarkan filter

document.addEventListener("DOMContentLoaded", function () {
    const loadingElement = document.getElementById("loading");
    function updateChart(period) {
        // URL bisa disesuaikan dengan API Anda
        axios
            .get(`/api/chart-data?period=${period}`)
            .then((response) => {
                const chartData = response.data;

                // Update chart dengan data baru
                options.series[0].data = chartData.orders; // Total Orders
                options.series[1].data = chartData.estimasiProduksi; // Estimasi Produksi
                options.series[2].data = chartData.progress.length
                    ? chartData.progress
                    : []; // Progress hanya jika ada data
                options.xaxis.categories = chartData.categories; // Kategori bulan

                // Render chart
                var chart = new ApexCharts(
                    document.querySelector("#dash-performance-chart"),
                    options
                );
                chart.render();
            })
            .finally(() => {
                showLoading(false);
            })
            .catch((error) => {
                console.error(error);
                showLoading(false);
            });
    }
    // Event listener untuk tombol filter
    document
        .getElementById("filter-all")
        .addEventListener("click", function () {
            showLoading(true);
            updateChart("all", function () {
                showLoading(false);
            });
            setActiveButton(this);
        });

    document.getElementById("filter-1m").addEventListener("click", function () {
        showLoading(true);
        updateChart("1m", function () {
            showLoading(false);
        });
        setActiveButton(this);
    });

    document.getElementById("filter-6m").addEventListener("click", function () {
        showLoading(true);
        updateChart("6m", function () {
            showLoading(false);
        });
        setActiveButton(this);
    });

    document.getElementById("filter-1y").addEventListener("click", function () {
        showLoading(true);
        updateChart("1y", function () {
            showLoading(false);
        });
        setActiveButton(this);
    });

    // Fungsi untuk menandai tombol yang aktif
    function setActiveButton(activeButton) {
        const buttons = document.querySelectorAll(".btn-outline-light");
        buttons.forEach((button) => {
            button.classList.remove("active");
        });
        activeButton.classList.add("active");
    }

    function showLoading(isLoading) {
        if (isLoading) {
            loadingElement.style.display = "flex";
        } else {
            loadingElement.style.display = "none";
        }
    }

    // Inisialisasi chart dengan data default (misalnya 1Y)
    updateChart("1y", function () {
        showLoading(false); // Sembunyikan loading setelah data dimuat
    });
});
