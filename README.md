# Layout

<hr>

# Introduction

Display a visual layout, very similar to Sketch's Layout Settings, and use it to set layer positions.

# Installation

Install with Framer Modules:

<a href='https://open.framermodules.com/framer-layout'>
    <img alt='Install with Framer Modules'
    src='https://www.framermodules.com/assets/badge@2x.png' width='160' height='40' />
</a>

Or install Layout just like any other Framer module:

* Place the `Layout.coffee` module into your project's modules folder
* In your project, `require` the module with `{ Layout } = require "Layout"
* Create your first Layout instance with `new Layout`.

```coffeescript
{ Layout } = require "Layout"

myLayout = new Layout
```

# Usage

Layouts come with the following default options:

```coffeescript
{ Layout } = require "Layout"

myLayout = new Layout
	offset: null
	columns: true
	rows: false
	center: true
	numberOfColumns: 12
	gutterWidth: 16
	columnWidth: 24
	gutterHeight: 16
	rowHeight: 5
	horizontalLines: false
	stroke: false
	dark: "rgba(255,255,255,.32)"
	light: "rgba(255,255,255,.32)"
	hidden: false
```

Most of these are self-explanatory and will work as they do in Sketch's Layout settings. Note that, as in Sketch, a row's height is calculated using `rowHeight * gutterHeight`.

## Positions

You can use Layout to get column/row frames, line positions, as well as widths for a given number of columns/rows.

```coffeescript
myLayout = new Layout

new Layer
	x: myLayout.column(2).x
	y: myLayout.row(1).y
	width: myLayout.getWidth(3)

new Layer
	y: myLayout.line(12)
```

## Layout.Layer

You can also use `myLayout.Layer` to create Layers using layout positions.

```coffeescript
myLayout = new Layout
	rows: true

new myLayout.Layer
	column: 2
	row: 2
	width: 3
	height: 2
	backgroundColor: "red"
```

## Hiding and showing the Layout

You can toggle the Layout's visiblity at any time using OPTION + L.

# Support

For support, raise an issue on github.com/steveruizok/framer-layout or find me in the Framer slack channel at framer.slack.com.
