colors = ['rgba(36,137,64,1)', 'rgba(143,188,43,1)', 'rgba(101,132,47,1)']
# because rickshaw expects all the data properties to have the keys 'x' and 'y' for
# for every series, we need to transform the data from a format like so (if x is 'a' and
# the series are 'b' and 'c'):
# [ { a : 1, b : 2, c : 3 }] => [ { data : [ { x : 1, y : 2 } ]}, { data : [ { x : 1, y : 3 } ]}]
<<<<<<< HEAD
prepareData4Rickshaw = (dataset, x, keys) ->
=======
prepareData = (dataset, x, keys) ->
>>>>>>> 22994f628c7f4825a40b150dd05015282be989f7
  
  return _.map keys, (y, i) ->
    s =
      data: []
      color: colors[i]
      name: y
    dataset.each (row) ->
      p = {}
      p.x = row[x]
      p.y = row[y]
      s.data.push p
    return s

<<<<<<< HEAD
prepareData4Handsontable = (dataset, x, keys) -> 
  data = []
  data.push dataset.columnNames()
  _.map dataset.rows, (row) ->
    dataset.each (row) ->
      p = []
      p.push row[x]
      _.each keys, (y) ->
        p.push row[y]
      data.push p
  return data


=======
>>>>>>> 22994f628c7f4825a40b150dd05015282be989f7
ds = new Miso.Dataset(
  url: $("#chart").data("csv")
  delimiter: ";"
)
ds.fetch success: ->
  keys = this.columnNames()
  x = keys.shift()
<<<<<<< HEAD
  graph = new Rickshaw.Graph(
    element: document.querySelector("#chart")
    renderer: "line"
    width: 935
    height: 350
    series: prepareData4Rickshaw(this, x, keys)
=======
  console.log(keys)
  graph = new Rickshaw.Graph(
    element: document.querySelector("#chart")
    renderer: "line"
    width: 580
    height: 250
    series: prepareData(this, x, keys)
>>>>>>> 22994f628c7f4825a40b150dd05015282be989f7
  )
  y_ticks = new Rickshaw.Graph.Axis.Y(
    graph: graph
    orientation: "left"
    tickFormat: Rickshaw.Fixtures.Number.formatKMBT
    element: document.getElementById("y_axis")
  )
  hoverDetail = new Rickshaw.Graph.HoverDetail(
    graph: graph
  )
<<<<<<< HEAD
  # legend = new Rickshaw.Graph.Legend(
  #   graph: graph,
  #   element: document.getElementById('legend')
  # )

  # shelving = new Rickshaw.Graph.Behavior.Series.Toggle(
  #   graph: graph,
  #   legend: legend
  # )
=======
  legend = new Rickshaw.Graph.Legend(
    graph: graph,
    element: document.getElementById('legend')
  )

  shelving = new Rickshaw.Graph.Behavior.Series.Toggle(
    graph: graph,
    legend: legend
  )
>>>>>>> 22994f628c7f4825a40b150dd05015282be989f7
  axes = new Rickshaw.Graph.Axis.Time(
    graph: graph
  )
  graph.render()
<<<<<<< HEAD
  data = prepareData4Handsontable(this, x, keys)
  $("#dataTable").handsontable(
    data: data
    minSpareCols: 1
    minSpareRows: 1
    minRows: 10
    minCols: 15
    rowHeaders: true
    colHeaders: true
  )
=======
>>>>>>> 22994f628c7f4825a40b150dd05015282be989f7
