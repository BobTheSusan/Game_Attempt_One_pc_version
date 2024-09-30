extends CharacterBody2D


@export var inv: Inv
@export var inv_2: Inv_2


var direction = ""
var speed = 1000
var animation_to_play = ""
var current_animation = ""

func _ready():
	direction = "right"


func move_update(_delta):
	velocity = Vector2.ZERO
	var d_direction = ""
	
	if Input.is_key_pressed(KEY_W):
		velocity.y -= speed 
		d_direction = "up"
		
	elif Input.is_key_pressed(KEY_S):
		velocity.y += speed 
		d_direction = "down"
			
	if Input.is_key_pressed(KEY_D):
		velocity.x += speed
		d_direction = "right"
		if velocity.y == 0:
			d_direction = "right"

	elif Input.is_key_pressed(KEY_A):
		velocity.x -= speed 
		d_direction = "left"
		if velocity.y == 0:
			d_direction = "left"
		
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
		
	if velocity.length() == 0:
		match direction:
			"right": 
				animation_to_play = "player_idle_right"
			"left":
				animation_to_play = "player_idle_left"
			"up":
				animation_to_play = "player_idle_left"
			"down":
				animation_to_play = "player_idle_right"
			
	else:
		if d_direction == "up":
			animation_to_play = "player_walk_left"
		if d_direction == "right":
			animation_to_play = "player_walk_right"
		if d_direction == "down":
			animation_to_play = "player_walk_right"
		if d_direction == "left":
			animation_to_play = "player_walk_left"
			
	if d_direction != "":
		direction = d_direction 
	
	if animation_to_play != current_animation:
		$player_2_animation.play(animation_to_play)
		current_animation = animation_to_play  
		
func _physics_process(delta):
	move_update(delta)
	move_and_slide()
