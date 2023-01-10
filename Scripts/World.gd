extends Spatial

const n_points = 100

var points = []
var cells = []
var colors = []

func _ready():
	var seed = 42
	randomize(seed)
	for i in range(n_points):
		var theta = randf() * 2 * PI
		var phi = acos(randf() * 2 - 1)
		points.append(Vector3(sin(phi) * cos(theta), sin(phi) * sin(theta), cos(phi)))

	var vor = Voronoi.new()
	vor.compute(points, new AABB(-1, -1, -1, 1, 1, 1))
	for c in vor.cells:
		cells.append(c)
		colors.append(Color(randf(), randf(), randf()))

func _draw():
	for i, c in enumerate(cells):
		for f in c.faces:
			var a = f.a
			var b = f.b
			var c = f.c
			draw_line(a, b, colors[i])
			draw_line(b, c, colors[i])
			draw_line(c, a, colors[i])
