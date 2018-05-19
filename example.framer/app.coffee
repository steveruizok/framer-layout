# Layout
# @steveruizok
# Github.com/steveruizok/framer-layout

{ Layout } = require "Layout"

Screen.backgroundColor = "#000"

layout = new Layout
	columns: true
	rows: true
	horizontalLines: false
	stroke: false
	rowHeight: 5
	numberOfColumns: 6
	columnWidth: 48
	gutterHeight: 16
	rowHeight: 4
	dark: "rgba(100, 255, 255, .5)"
	light: "rgba(255, 255, 255, .16)"
	
new Layer
	x: layout.column(1).x
	y: layout.row(1).y
	height: layout.getHeight(1)
	width: layout.getWidth(3)
	backgroundColor: "88ddff"

new layout.Layer
	column: 2
	row: 2
	width: 3
	height: 2
	backgroundColor: "aa88ff"