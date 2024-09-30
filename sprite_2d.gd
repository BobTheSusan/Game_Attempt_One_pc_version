extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_key_pressed(KEY_W):
		$player_animation.play("player_walk_up")
		
	if Input.is_key_pressed(KEY_D):
		$player_animation.play("player_walk_right")
		 
	if Input.is_key_pressed(KEY_S):
		$player_animation.play("player_walk_down")
		
	if Input.is_key_pressed(KEY_A):
		$player_animation.play("player_walk_left")
