extends Area2D



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	monitoring = true




# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass



func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	pass
	
func _input(event):
	if event is InputEventMouseButton and event.pressed:
		match event.button_index:
			MOUSE_BUTTON_LEFT:
				visible = true
