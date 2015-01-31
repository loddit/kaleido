d3 = require 'd3'
jsdom = require 'jsdom'

AV.Cloud.define "kaleido", (request, response) ->
  jsdom.env '<svg></svg>', (errors, window) ->
    document = jsdom.jsdom ''
    window = document.parentWindow
    body = d3.select 'body'
    svg = body.append 'svg'
    svg.attr("width", 800)
       .attr("height", 640)
       .attr("version", "1.1")
       .attr("xmlns", "http://www.w3.org/2000/svg")
       .attr("xmlns:xlink", "http://www.w3.org/1999/xlink")
       .attr("x", '0px')
       .attr("y", '0px')

    circles = svg.selectAll("circle")
                      .data([10,20,30,40,50,60,70,80,90]
                      )
    circles.enter().append("svg:circle")
           .attr("cx",(d,i) -> d * 10 * Math.random())
           .attr("cy",(d,i) -> d * 10 * Math.random())
           .attr("r",(d,i) -> (100/d) * Math.random() + 5)
           .attr("fill", (d,i) -> "hsl(#{Math.random() * 255}, 50%, 50%)")
           .attr("opacity", (d,i) -> (Math.random() * 0.5) + 0.5)
    circles.exit()


    svgHeader = '<?xml version="1.0" encoding="utf-8"?>'
    svgBody = svg.node().outerHTML
    svgEntry = svgHeader + svgBody

    response.success(svgEntry)
