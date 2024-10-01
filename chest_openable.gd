extends Area2D


@export var Card_Display: Control

func _ready():
	monitoring = true
	
	



func _on_body_entered(body): 
	if body.name == "PlayerBody": 
		$chest_animation2.play("chest_1")
		Card_Display.visible = true 
		
		

func _on_body_exited(body: Node2D) -> void:
		if body.name == "PlayerBody": 
			$chest_animation2.play_backwards("chest_1")
			Card_Display.visible = false
			
			
