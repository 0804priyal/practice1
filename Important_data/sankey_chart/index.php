<html>
<body>
 <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

<div id="sankey_multiple" style="width: 900px; height: 300px;"></div>

<script type="text/javascript">
  google.charts.load("current", {packages:["sankey"]});
  google.charts.setOnLoadCallback(drawChart);
   function drawChart() {
    var data = new google.visualization.DataTable();
    data.addColumn('string', 'From');
    data.addColumn('string', 'To');
    data.addColumn('number', 'Weight');
    data.addRows([
       [ 'Brazil', 'Spain', 1 ],
       [ 'Brazil', 'England', 1 ],
       [ 'Canada', 'England', 1 ],
       [ 'Mexico', 'Spain', 5 ],
       [ 'Mexico', 'England', 1 ],
       [ 'USA', 'Spain', 1 ],
       [ 'USA', 'England', 5 ],
       [ 'France', 'England', 5 ],
       [ 'France', 'Spain', 5 ],
       [ 'Portugal', 'Angola', 2 ],
       [ 'Portugal', 'Senegal', 1 ],
       [ 'Portugal', 'Morocco', 1 ],
       [ 'Portugal', 'South Africa', 3 ],
       [ 'France', 'Angola', 1 ],
       [ 'France', 'Senegal', 3 ],
       [ 'France', 'Mali', 3 ],
       [ 'France', 'Morocco', 3 ],
       [ 'France', 'South Africa', 1 ],
       [ 'Spain', 'Senegal', 1 ],
       [ 'Spain', 'Morocco', 3 ],
       [ 'Spain', 'South Africa', 1 ],
       [ 'England', 'Angola', 1 ],
       [ 'England', 'Senegal', 1 ],
       [ 'England', 'Morocco', 2 ],
       [ 'England', 'South Africa', 7 ],
      
    ]);

    // Set chart options
    var options = {
      width: 600,
    };

    // Instantiate and draw our chart, passing in some options.
    var chart = new google.visualization.Sankey(document.getElementById('sankey_multiple'));
    chart.draw(data, options);
   }
</script>
</body>
</html>