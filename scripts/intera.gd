extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var center= Vector2(500,400)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.






func _on_TextureButton_pressed():
	Global.trocar('res://tscnss/menu.tscn')
	for i in get_tree().get_nodes_in_group("cam"):
		i.emit_signal("zoo",false,center)
