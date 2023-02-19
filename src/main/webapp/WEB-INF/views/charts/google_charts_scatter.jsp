<html>

<head>
    <script src="https://code.jquery.com/jquery-3.6.3.slim.js"
        integrity="sha256-DKU1CmJ8kBuEwumaLuh9Tl/6ZB6jzGOBV/5YpNE2BWc=" crossorigin="anonymous"></script>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
        google.charts.load('current', { 'packages': ['corechart'] });
        google.charts.setOnLoadCallback(drawChart);

        let dataArray = [
            ['Age', 'Weight'],
            [8, 12],
            [4, 5.5],
            [11, 14],
            [4, 5],
            [3, 3.5],
            [6.5, 7]
        ];
        dataArray = ${ dataArray };
        function drawChart() {

            // var data = google.visualization.arrayToDataTable([
            //     ['Age', 'Weight'],
            //     [8, 12],
            //     [4, 5.5],
            //     [11, 14],
            //     [4, 5],
            //     [3, 3.5],
            //     [6.5, 7]
            // ]);

            var data = google.visualization.arrayToDataTable(dataArray);

            let target_element = document.getElementById('chart_div');
            _height = target_element.parentElement.clientHeight;  //target_element.height();
            var options = {
                title: 'Age vs. Weight comparison',
                height: _height,
                hAxis: { title: 'Age', minValue: 0, maxValue: 15 },
                vAxis: { title: 'Weight', minValue: 0, maxValue: 15 },
                legend: 'none'  // 범례
            };

            var chart = new google.visualization.ScatterChart(target_element);

            chart.draw(data, options);
        }

        // Google Chart resize
        // create trigger to resizeEnd event
        $(window).resize(function () {
            if (this.resizeTO) clearTimeout(this.resizeTO);
            this.resizeTO = setTimeout(function () {
                $(this).trigger('resizeEnd');
            }, 00);
        });

        // redraw graph when window resize is completed
        // $(window).on('resizeEnd', function () {
        $(window).on('resize', function () {
            drawChart();
        });        
    </script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous" />
    <style>
        * {
            border: 0.1rem solid gray;
        }

        .vh-50 {
            height: 50vh;
        }
    </style>
</head>

<body>
    <div class="container">
        <div class="row vh-50">
            <div class="col-5" id="chart_div">
            </div>
            <div class="col-7">Aside left</div>
        </div>
    </div>

    <!-- <div id="chart_div" style="width: 500px; height: 300px;"></div> -->

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous"></script>

</body>

</html>