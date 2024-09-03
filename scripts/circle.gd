class_name GodotStickCircle

var position: Vector2
var radius: float
var color: Color
var width: float
var filled: bool
var antialiased: bool
var opacity: float:
    set(value):
        opacity = value
        self.color.a = opacity

func _init(
        position: Vector2,
        radius: float,
        width: float = -1.0,
        filled: bool = true,
        color: Color = Color(255, 255, 255, 1),
        opacity: float = 1,
        antialiased: bool = true
    ):
    self.position = position
    self.radius = radius
    self.color = color
    self.width = width
    self.filled = filled
    self.antialiased = antialiased
    self.opacity = opacity
    self.color.a = opacity

func toString(object: String) -> void:
    print(
            "-----------------------\n",
            object,
            "\n",
            "position: ", self.position,
            "\n",
            "radius: ", self.radius,
            "\n",
            "color: ", self.color,
            "\n",
            "filled: ", self.filled,
            "\n",
            "width: ", self.width,
            "\n",
            "antialiased: ", self.antialiased,
            "\n",
            "opacity: ", self.opacity,
            "\n",
            "-----------------------\n",
        )


func draw(canvas_item: CanvasItem, offset: bool) -> void:
    if self.filled:
        if offset:
            canvas_item.draw_circle(self.position + Vector2(self.radius, self.radius), self.radius, self.color, self.filled, -1, self.antialiased)
        else:
            canvas_item.draw_circle(self.position, self.radius, self.color, self.filled, -1, self.antialiased)
    else:
        if offset:
            canvas_item.draw_circle(self.position + Vector2(self.radius, self.radius), self.radius, self.color, self.filled, self.width, self.antialiased)
        else:
            canvas_item.draw_circle(self.position, self.radius, self.color, self.filled, self.width, self.antialiased)