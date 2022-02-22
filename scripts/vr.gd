extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var center= Vector2(500,400)
func _ready():
	for i in get_tree().get_nodes_in_group("cam"):
		i.emit_signal("zoo",false,center)




func _on_TextureButton_pressed():
	Global.trocar('res://tscnss/menu.tscn')
	for i in get_tree().get_nodes_in_group("cam"):
		i.emit_signal("zoo",false,center)


func _on_TextureButton2_pressed():
	Global.trocar('res://tscnss/VRANTIGO.tscn')
	for i in get_tree().get_nodes_in_group("cam"):
		i.emit_signal("zoo",false,center)
