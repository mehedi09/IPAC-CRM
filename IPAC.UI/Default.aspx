<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="IPAC.UI.Default" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content ID="HeadContent" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">
        google.load("visualization", "1", { packages: ["corechart"] });
        google.setOnLoadCallback(drawChart);
        google.setOnLoadCallback(drawChart1);
        function drawChart() {
            var data = google.visualization.arrayToDataTable([
              ['Year', 'Sales', 'Expenses', 'Profit'],
              ['2004', 1000, 400, 200],
              ['2005', 1170, 460, 400],
              ['2006', 660, 1120, 500],
              ['2007', 1030, 540, 300]
            ]);

            var options = {
                title: 'Company Performance',
                //title: 'Company Performance',
                vAxis: { title: 'Year', titleTextStyle: { color: 'red' } }
            };

            var chart = new google.visualization.BarChart(document.getElementById('chart_div'));

            chart.draw(data, options);
        }

        function drawChart1() {
            var data = google.visualization.arrayToDataTable([
              ['Year', 'Sales', 'Expenses', 'Profit'],
              ['2004', 1000, 400, 200],
              ['2005', 1170, 460, 400],
              ['2006', 660, 1120, 500],
              ['2007', 1030, 540, 300]
            ]);

            var options = {
                title: 'Company Performance',
                hAxis: { title: 'Year', titleTextStyle: { color: 'red' } }
                //  vAxis: { title: 'Year', titleTextStyle: { color: 'green' } }



            };

            var chart = new google.visualization.ColumnChart(document.getElementById('chart_div1'));

            chart.draw(data, options);
        }



    </script>
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">



    <section class="content-header">
        <h1>My Pipeline
                        <%--<small>preview sample</small>--%>
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i>Home</a></li>
            <li class="active">Blank page</li>
        </ol>
    </section>
    <!-- Main content -->
    <section class="content">



        <div class="row">
            <div class="col-md-6">
                <!-- Line chart -->
                <div class="box box-primary">
                    <div class="box-header">
                        <i class="fa fa-bar-chart-o"></i>
                        <h3 class="box-title">Line Chart</h3>
                    </div>
                    <div class="box-body">
                        <div id="chart_div" style="height: 300px;"></div>
                    </div>
                    <!-- /.box-body-->
                </div>
                <!-- /.box -->
            </div>
            <!-- /.col -->

            <div class="col-md-6">

                <!-- Bar chart -->
                <div class="box box-primary">
                    <div class="box-header">
                        <i class="fa fa-bar-chart-o"></i>
                        <h3 class="box-title">Bar Chart</h3>
                    </div>
                    <div class="box-body">
                        <div id="chart_div1" style="height: 300px;"></div>
                    </div>
                    <!-- /.box-body-->
                </div>
                <!-- /.box -->

            </div>
            <!-- /.col -->
        </div>

        <div class="row">
            <div class="col-md-6">
                <!-- Line chart -->
                <div class="box box-primary">
                    <div class="box-header">
                        <i class="fa fa-bar-chart-o"></i>
                        <h3 class="box-title">Line Chart</h3>
                    </div>
                    <div class="box-body">
                        <asp:Chart ID="Chart1" runat="server" Height="300" Width="650">
                            <Titles>
                                <asp:Title Text="Attendance Chart Knit-Horaizon"></asp:Title>
                            </Titles>
                            <Series>
                                <asp:Series Name="Series1" ChartArea="ChartArea1">
                                </asp:Series>
                                  <asp:Series Name="Series2" ChartArea="ChartArea1" Color="#ff3300">
                                </asp:Series>
                            </Series>
                            <ChartAreas>
                                <asp:ChartArea Name="ChartArea1">
                                    <AxisX Title="Depertment Name"></AxisX>
                                    <AxisY Title="Employee"></AxisY>
                                </asp:ChartArea>
                            </ChartAreas>
                        </asp:Chart>
                        <%--<div id="chart_div12" style="height: 300px;"></div>--%>
                    </div>
                    <!-- /.box-body-->
                </div>
                <!-- /.box -->
            </div>
            <!-- /.col -->
        </div>

    </section>


</asp:Content>
<asp:Content ID="FooterContent" ContentPlaceHolderID="footer" runat="server">
    <script src="../Scripts/demo.js"></script>
    <script src="../Scripts/jquery.flot.min.js"></script>
    <script src="../Scripts/jquery.flot.resize.min.js"></script>
    <script src="..Scripts/jquery.flot.pie.min.js"></script>
    <script src="../Scripts/jquery.flot.categories.min.js"></script>
    <script type="text/javascript">
        $(function () {
            alert("Hello");

            /*
             * Flot Interactive Chart
             * -----------------------
             */
            // We use an inline data source in the example, usually data would
            // be fetched from a server
            var data = [], totalPoints = 100;
            function getRandomData() {

                if (data.length > 0)
                    data = data.slice(1);

                // Do a random walk
                while (data.length < totalPoints) {

                    var prev = data.length > 0 ? data[data.length - 1] : 50,
                            y = prev + Math.random() * 10 - 5;

                    if (y < 0) {
                        y = 0;
                    } else if (y > 100) {
                        y = 100;
                    }

                    data.push(y);
                }

                // Zip the generated y values with the x values
                var res = [];
                for (var i = 0; i < data.length; ++i) {
                    res.push([i, data[i]]);
                }

                return res;
            }

            var interactive_plot = $.plot("#interactive", [getRandomData()], {
                grid: {
                    borderColor: "#f3f3f3",
                    borderWidth: 1,
                    tickColor: "#f3f3f3"
                },
                series: {
                    shadowSize: 0, // Drawing is faster without shadows
                    color: "#3c8dbc"
                },
                lines: {
                    fill: true, //Converts the line chart to area chart
                    color: "#3c8dbc"
                },
                yaxis: {
                    min: 0,
                    max: 100,
                    show: true
                },
                xaxis: {
                    show: true
                }
            });

            var updateInterval = 500; //Fetch data ever x milliseconds
            var realtime = "on"; //If == to on then fetch data every x seconds. else stop fetching
            function update() {

                interactive_plot.setData([getRandomData()]);

                // Since the axes don't change, we don't need to call plot.setupGrid()
                interactive_plot.draw();
                if (realtime === "on")
                    setTimeout(update, updateInterval);
            }

            //INITIALIZE REALTIME DATA FETCHING
            if (realtime === "on") {
                update();
            }
            //REALTIME TOGGLE
            $("#realtime .btn").click(function () {
                if ($(this).data("toggle") === "on") {
                    realtime = "on";
                }
                else {
                    realtime = "off";
                }
                update();
            });
            /*
             * END INTERACTIVE CHART
             */


            /*
             * LINE CHART
             * ----------
             */
            //LINE randomly generated data

            var sin = [], cos = [];
            for (var i = 0; i < 14; i += 0.5) {
                sin.push([i, Math.sin(i)]);
                cos.push([i, Math.cos(i)]);
            }
            var line_data1 = {
                data: sin,
                color: "#3c8dbc"
            };
            var line_data2 = {
                data: cos,
                color: "#00c0ef"
            };
            $.plot("#line-chart", [line_data1, line_data2], {
                grid: {
                    hoverable: true,
                    borderColor: "#f3f3f3",
                    borderWidth: 1,
                    tickColor: "#f3f3f3"
                },
                series: {
                    shadowSize: 0,
                    lines: {
                        show: true
                    },
                    points: {
                        show: true
                    }
                },
                lines: {
                    fill: false,
                    color: ["#3c8dbc", "#f56954"]
                },
                yaxis: {
                    show: true,
                },
                xaxis: {
                    show: true
                }
            });
            //Initialize tooltip on hover
            $("<div class='tooltip-inner' id='line-chart-tooltip'></div>").css({
                position: "absolute",
                display: "none",
                opacity: 0.8
            }).appendTo("body");
            $("#line-chart").bind("plothover", function (event, pos, item) {

                if (item) {
                    var x = item.datapoint[0].toFixed(2),
                            y = item.datapoint[1].toFixed(2);

                    $("#line-chart-tooltip").html(item.series.label + " of " + x + " = " + y)
                            .css({ top: item.pageY + 5, left: item.pageX + 5 })
                            .fadeIn(200);
                } else {
                    $("#line-chart-tooltip").hide();
                }

            });
            /* END LINE CHART */

            /*
             * FULL WIDTH STATIC AREA CHART
             * -----------------
             */
            var areaData = [[2, 88.0], [3, 93.3], [4, 102.0], [5, 108.5], [6, 115.7], [7, 115.6],
                [8, 124.6], [9, 130.3], [10, 134.3], [11, 141.4], [12, 146.5], [13, 151.7], [14, 159.9],
                [15, 165.4], [16, 167.8], [17, 168.7], [18, 169.5], [19, 168.0]];
            $.plot("#area-chart", [areaData], {
                grid: {
                    borderWidth: 0
                },
                series: {
                    shadowSize: 0, // Drawing is faster without shadows
                    color: "#00c0ef"
                },
                lines: {
                    fill: true //Converts the line chart to area chart
                },
                yaxis: {
                    show: false
                },
                xaxis: {
                    show: false
                }
            });

            /* END AREA CHART */

            /*
             * BAR CHART
             * ---------
             */

            var bar_data = {
                data: [["January", 10], ["February", 8], ["March", 4], ["April", 13], ["May", 17], ["June", 9]],
                color: "#3c8dbc"
            };
            $.plot("#bar-chart", [bar_data], {
                grid: {
                    borderWidth: 1,
                    borderColor: "#f3f3f3",
                    tickColor: "#f3f3f3"
                },
                series: {
                    bars: {
                        show: true,
                        barWidth: 0.5,
                        align: "center"
                    }
                },
                xaxis: {
                    mode: "categories",
                    tickLength: 0
                }
            });
            /* END BAR CHART */

            /*
             * DONUT CHART
             * -----------
             */

            var donutData = [
                { label: "Series2", data: 30, color: "#3c8dbc" },
                { label: "Series3", data: 20, color: "#0073b7" },
                { label: "Series4", data: 50, color: "#00c0ef" }
            ];
            $.plot("#donut-chart", donutData, {
                series: {
                    pie: {
                        show: true,
                        radius: 1,
                        innerRadius: 0.5,
                        label: {
                            show: true,
                            radius: 2 / 3,
                            formatter: labelFormatter,
                            threshold: 0.1
                        }

                    }
                },
                legend: {
                    show: false
                }
            });
            /*
             * END DONUT CHART
             */

        });

        /*
         * Custom Label formatter
         * ----------------------
         */
        function labelFormatter(label, series) {
            return "<div style='font-size:13px; text-align:center; padding:2px; color: #fff; font-weight: 600;'>"
                    + label
                    + "<br/>"
                    + Math.round(series.percent) + "%</div>";
        }
    </script>
</asp:Content>
