extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	visible = false
	var displayed: bool = false
	

func _display():
	visible = true 
	var displayed: bool = true


func _process(delta: float) -> void:
	pass
	


			
