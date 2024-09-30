extends Control

var is_open = false

@onready var inv: Inv = preload("res://inventory/player_inventory.tres")
@onready var slots: Array = $NinePatchRect/GridContainer.get_children()



func _ready():
	update_slots()
	close()
	
func update_slots():
	for i in range(min(inv.item.size(), slots.size())):
		slots[i].update(inv.item[i])
	
	
func _process(_delta):
	if Input.is_action_just_pressed("1"):
		if is_open:
			close()
		else:
			open()

func open():
	visible = true
	is_open = true
	
func close():
	visible = false 
	is_open = false 
