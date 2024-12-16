/**
 * Theme: Larkon - Responsive Bootstrap 5 Admin Dashboard
 * Author: Techzaa
 * Module/App: Apex line Charts
 */
import ApexCharts from "apexcharts";

//
// Simple line chart
//
var colors = ["#7f56da"];
var options = {
  chart: {
    toolbar: {
      show: false,
    },
    height: 380,
    type: "line",
    zoom: {
      enabled: false,
    },
  },
  dataLabels: {
    enabled: false,
  },
  colors: colors,
  stroke: {
    width: [4],
    curve: "straight",
  },
  series: [
    {
      name: "Desktops",
      data: [30, 41, 35, 51, 49, 62, 69, 91, 126],
    },
  ],
  title: {
    text: "Product Trends by Month",
    align: "center",
  },
  grid: {
    row: {
      colors: ["transparent", "transparent"], // takes an array which will be repeated on columns
      opacity: 0.2,
    },
    borderColor: "#f1f3fa",
  },
  labels: series.monthDataSeries1.dates,
  xaxis: {
    categories: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep"],
  },
  responsive: [
    {
      breakpoint: 600,
      options: {
        chart: {
          toolbar: {
            show: false,
          },
        },
        legend: {
          show: false,
        },
      },
    },
  ],
};

var chart = new ApexCharts(document.querySelector("#line-chart"), options);
chart.render();

//
// Line chart with data labels
//

var colors = ["#ef5f5f", "#22c55e"];
var options = {
  chart: {
    height: 380,
    type: "line",
    zoom: {
      enabled: false,
    },
    toolbar: {
      show: false,
    },
  },
  colors: colors,
  dataLabels: {
    enabled: true,
  },
  stroke: {
    width: [3, 3],
    curve: "smooth",
  },
  series: [
    {
      name: "High - 2018",
      data: [28, 29, 33, 36, 32, 32, 33],
    },
    {
      name: "Low - 2018",
      data: [12, 11, 14, 18, 17, 13, 13],
    },
  ],
  title: {
    text: "Average High & Low Temperature",
    align: "left",
  },
  grid: {
    row: {
      colors: ["transparent", "transparent"], // takes an array which will be repeated on columns
      opacity: 0.2,
    },
    borderColor: "#f1f3fa",
  },
  markers: {
    style: "inverted",
    size: 6,
  },
  xaxis: {
    categories: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul"],
    title: {
      text: "Month",
    },
  },
  yaxis: {
    title: {
      text: "Temperature",
    },
    min: 5,
    max: 40,
  },
  legend: {
    position: "top",
    horizontalAlign: "right",
    floating: true,
    offsetY: -25,
    offsetX: -5,
  },
  responsive: [
    {
      breakpoint: 600,
      options: {
        chart: {
          toolbar: {
            show: false,
          },
        },
        legend: {
          show: false,
        },
      },
    },
  ],
};
var chart = new ApexCharts(
  document.querySelector("#line-chart-datalabel"),
  options
);
chart.render();

//
// Zoomable Timeseries
//

var ts2 = 1484418600000;
var dates = [];
var spikes = [5, -5, 3, -3, 8, -8];
for (var i = 0; i < 120; i++) {
  ts2 = ts2 + 86400000;
  var innerArr = [ts2, dataSeries[1][i].value];
  dates.push(innerArr);
}
var colors = ["#7f56da"];
var options = {
  chart: {
    toolbar: {
      show: false,
    },
    type: "area",
    stacked: false,
    height: 380,
    zoom: {
      enabled: true,
    },
  },
  plotOptions: {
    line: {
      curve: "smooth",
    },
  },
  dataLabels: {
    enabled: false,
  },
  stroke: {
    width: [3],
  },
  series: [
    {
      name: "XYZ MOTORS",
      data: dates,
    },
  ],
  markers: {
    size: 0,
    style: "full",
  },
  colors: colors,
  title: {
    text: "Stock Price Movement",
    align: "left",
  },
  grid: {
    row: {
      colors: ["transparent", "transparent"], // takes an array which will be repeated on columns
      opacity: 0.2,
    },
    borderColor: "#f1f3fa",
  },
  fill: {
    gradient: {
      enabled: true,
      shadeIntensity: 1,
      inverseColors: false,
      opacityFrom: 0.5,
      opacityTo: 0.1,
      stops: [0, 70, 80, 100],
    },
  },
  yaxis: {
    min: 20000000,
    max: 250000000,
    labels: {
      formatter: function (val) {
        return (val / 1000000).toFixed(0);
      },
    },
    title: {
      text: "Price",
    },
  },
  xaxis: {
    type: "datetime",
  },

  tooltip: {
    shared: false,
    y: {
      formatter: function (val) {
        return (val / 1000000).toFixed(0);
      },
    },
  },
  responsive: [
    {
      breakpoint: 600,
      options: {
        chart: {
          toolbar: {
            show: false,
          },
        },
        legend: {
          show: false,
        },
      },
    },
  ],
};
var chart = new ApexCharts(
  document.querySelector("#line-chart-zoomable"),
  options
);
chart.render();

//
// Syncing charts
//
var colors = ["#1c84ee"];
var optionsline2 = {
  chart: {
    toolbar: {
      show: false,
    },
    type: "line",
    height: 160,
    id: "fb",
    group: "social",
  },
  colors: colors,
  stroke: {
    width: [3],
    curve: "straight",
  },
  toolbar: {
    tools: {
      selection: false,
    },
  },
  fill: {
    opacity: 1,
  },
  tooltip: {
    followCursor: false,
    x: {
      show: false,
    },
    marker: {
      show: false,
    },
    y: {
      title: {
        formatter: function () {
          return "";
        },
      },
    },
  },
  series: [
    {
      data: generateDayWiseTimeSeries(new Date("11 Feb 2017").getTime(), 20, {
        min: 10,
        max: 30,
      }),
    },
  ],
  xaxis: {
    type: "datetime",
  },
  grid: {
    row: {
      colors: ["transparent", "transparent"], // takes an array which will be repeated on columns
      opacity: 0.2,
    },
    borderColor: "#f1f3fa",
  },
};
var chartline2 = new ApexCharts(
  document.querySelector("#line-chart-syncing"),
  optionsline2
);
chartline2.render();

//
// Syncing Chart-2
//

var colors = ["#4ecac2"];
var options = {
  chart: {
    toolbar: {
      show: false,
    },
    height: 200,
    type: "line",
    id: "yt",
    group: "social",
  },
  colors: colors,
  dataLabels: {
    enabled: false,
  },
  toolbar: {
    tools: {
      selection: false,
    },
  },
  tooltip: {
    followCursor: false,
    x: {
      show: false,
    },
    marker: {
      show: false,
    },
    y: {
      title: {
        formatter: function () {
          return "";
        },
      },
    },
  },
  stroke: {
    width: [3],
    curve: "smooth",
  },

  series: [
    {
      data: generateDayWiseTimeSeries(new Date("11 Feb 2017").getTime(), 20, {
        min: 10,
        max: 60,
      }),
    },
  ],
  fill: {
    gradient: {
      enabled: true,
      opacityFrom: 0.6,
      opacityTo: 0.8,
    },
  },
  legend: {
    position: "top",
    horizontalAlign: "left",
  },
  xaxis: {
    type: "datetime",
  },
  grid: {
    row: {
      colors: ["transparent", "transparent"], // takes an array which will be repeated on columns
      opacity: 0.2,
    },
    borderColor: "#f1f3fa",
  },
};
var chart = new ApexCharts(
  document.querySelector("#line-chart-syncing2"),
  options
);
chart.render();

/*
  // this function will generate output in this format
  // data = [
      [timestamp, 23],
      [timestamp, 33],
      [timestamp, 12]
      ...
  ]
*/
function generateDayWiseTimeSeries(baseval, count, yrange) {
  var i = 0;
  var series = [];
  while (i < count) {
    var x = baseval;
    var y =
      Math.floor(Math.random() * (yrange.max - yrange.min + 1)) + yrange.min;

    series.push([x, y]);
    baseval += 86400000;
    i++;
  }
  return series;
}


//
// Missing Data
//
var colors = ["#1c84ee", "#ef5f5f", "#4ecac2"];
var options = {
  chart: {
    height: 380,
    type: "line",
    toolbar: {
        show: false,
      },
    zoom: {
      enabled: false,
    },
    animations: {
      enabled: false,
    },
  },
  stroke: {
    width: [5, 5, 4],
    curve: "straight",
  },

  series: [
    {
      name: "Peter",
      data: [5, 5, 10, 8, 7, 5, 4, null, null, null, 10, 10, 7, 8, 6, 9],
    },
    {
      name: "Johnny",
      data: [
        10,
        15,
        null,
        12,
        null,
        10,
        12,
        15,
        null,
        null,
        12,
        null,
        14,
        null,
        null,
        null,
      ],
    },
    {
      name: "David",
      data: [
        null,
        null,
        null,
        null,
        3,
        4,
        1,
        3,
        4,
        6,
        7,
        9,
        5,
        null,
        null,
        null,
      ],
    },
  ],
  colors: colors,
  labels: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16],
  grid: {
    row: {
      colors: ["transparent", "transparent"], // takes an array which will be repeated on columns
      opacity: 0.2,
    },
    borderColor: "#f1f3fa",
    padding: {
      bottom: 5,
    },
  },
  legend: {
    offsetY: 7,
  },
};

var chart = new ApexCharts(
  document.querySelector("#line-chart-missing"),
  options
);

chart.render();

//
// Dashed line chart
//
var colors = ["#1c84ee", "#ef5f5f", "#4ecac2"];
var options = {
  chart: {
    height: 380,
    type: "line",
    toolbar: {
        show: false,
    },
    zoom: {
      enabled: false,
    },
  },
  dataLabels: {
    enabled: false,
  },
  stroke: {
    width: [3, 5, 3],
    curve: "straight",
    dashArray: [0, 8, 5],
  },
  series: [
    {
      name: "Session Duration",
      data: [45, 52, 38, 24, 33, 26, 21, 20, 6, 8, 15, 10],
    },
    {
      name: "Page Views",
      data: [35, 41, 62, 42, 13, 18, 29, 37, 36, 51, 32, 35],
    },
    {
      name: "Total Visits",
      data: [87, 57, 74, 99, 75, 38, 62, 47, 82, 56, 45, 47],
    },
  ],
  markers: {
    size: 0,
    style: "hollow", // full, hollow, inverted
  },
  xaxis: {
    categories: [
      "01 Jan",
      "02 Jan",
      "03 Jan",
      "04 Jan",
      "05 Jan",
      "06 Jan",
      "07 Jan",
      "08 Jan",
      "09 Jan",
      "10 Jan",
      "11 Jan",
      "12 Jan",
    ],
  },
  colors: colors,
  tooltip: {
    y: {
      title: {
        formatter: function (val) {
          if (val === "Session Duration") return val + " (mins)";
          else if (val === "Page Views") return val + " per session";
          return val;
        },
      },
    },
  },
  grid: {
    borderColor: "#f1f3fa",
  },
  legend: {
    offsetY: 7,
  },
};

var chart = new ApexCharts(
  document.querySelector("#line-chart-dashed"),
  options
);

chart.render();

//
// Stepline Charts
//

var ts2 = 1484418600000;
var data = [];
var spikes = [5, -5, 3, -3, 8, -8];
for (var i = 0; i < 30; i++) {
  ts2 = ts2 + 86400000;
  var innerArr = [ts2, dataSeries[1][i].value];
  data.push(innerArr);
}
var colors = ["#ff6c2f"];
var options = {
  chart: {
    type: "line",
    height: 344,
    toolbar: {
        show: false,
    },
  },
  stroke: {
    curve: "stepline",
  },
  dataLabels: {
    enabled: false,
  },
  series: [
    {
      data: [34, 44, 54, 21, 12, 43, 33, 23, 66, 66, 58],
    },
  ],
  colors: colors,
  title: {
    text: "Stepline Chart",
    align: "left",
  },
  markers: {
    hover: {
      sizeOffset: 4,
    },
  },
};
var chart = new ApexCharts(
  document.querySelector("#line-chart-stepline"),
  options
);
chart.render();


//
// Realtime chart
//

("use strict");

var lastDate = 0;
var data = [];
function getDayWiseTimeSeries(baseval, count, yrange) {
  var i = 0;
  while (i < count) {
    var x = baseval;
    var y =
      Math.floor(Math.random() * (yrange.max - yrange.min + 1)) + yrange.min;

    data.push({
      x: x,
      y: y,
    });
    lastDate = baseval;
    baseval += 86400000;
    i++;
  }
}

getDayWiseTimeSeries(new Date("11 Feb 2017 GMT").getTime(), 10, {
  min: 10,
  max: 90,
});

function getNewSeries(baseval, yrange) {
  var newDate = baseval + 86400000;
  lastDate = newDate;
  data.push({
    x: newDate,
    y: Math.floor(Math.random() * (yrange.max - yrange.min + 1)) + yrange.min,
  });
}

function resetData() {
  data = data.slice(data.length - 10, data.length);
}

var colors = ["#4ecac2"];
var options = {
  chart: {
    height: 350,
    type: "line",
    animations: {
      enabled: true,
      easing: "linear",
      dynamicAnimation: {
        speed: 2000,
      },
    },
    toolbar: {
      show: false,
    },
    zoom: {
      enabled: false,
    },
  },
  dataLabels: {
    enabled: false,
  },
  stroke: {
    curve: "smooth",
    width: [3],
  },
  colors: colors,
  series: [
    {
      data: data,
    },
  ],
  markers: {
    size: 0,
  },
  xaxis: {
    type: "datetime",
    range: 777600000,
  },
  yaxis: {
    max: 100,
  },
  legend: {
    show: false,
  },
  grid: {
    borderColor: "#f1f3fa",
  },
};
var chart = new ApexCharts(
  document.querySelector("#line-chart-realtime"),
  options
);
chart.render();



var dataPointsLength = 10;

window.setInterval(function () {
  getNewSeries(lastDate, {
    min: 10,
    max: 90,
  });

  chart.updateSeries([
    {
      data: data,
    },
  ]);
}, 2000);

// every 60 seconds, we reset the data
window.setInterval(function () {
  resetData();
  chart.updateSeries(
    [
      {
        data: data,
      },
    ],
    false,
    true
  );
}, 60000);
