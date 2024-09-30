extends Sprite2D

func _ready():
	$chest_animation.play("chest_notification")
	

func _on_chest_openable_body_exited(body):
	if body.name == "PlayerBody":
		queue_free()
