extends Area2D


func _ready():
	monitoring = true
	



func _on_body_entered(body): 
	if body.name == "PlayerBody": 
		$chest_animation2.play("chest_1")


func _on_body_exited(body: Node2D) -> void:
		if body.name == "PlayerBody": 
			$chest_animation2.play_backwards("chest_1")
			
			
