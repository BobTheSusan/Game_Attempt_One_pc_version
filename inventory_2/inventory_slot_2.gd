extends Panel

@onready var item_visual_2: Sprite2D = $CenterContainer/Panel/item_display

func update(item_2: InventoryItem):
	if !item_2:
		item_visual_2.visible = false
	else: 
		item_visual_2.visible = true
		item_visual_2.texture = item_2.texture
