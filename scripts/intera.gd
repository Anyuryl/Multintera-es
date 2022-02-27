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


func _on_Timer_timeout():
	for i in get_tree().get_nodes_in_group("PAG"):
		i.emit_signal("set_pag",31424)
		i.visible = true
		i.visi =true
	for i in get_tree().get_nodes_in_group("cam"):
		i.emit_signal("zoo",false,center)


func _on_t_pressed():
	for j in get_tree().get_nodes_in_group("PAG"):
		if j.visi == false:
			for i in get_tree().get_nodes_in_group("cam"):
				i.emit_signal("zoo",true,$Control/t.rect_global_position+Vector2(200,200))
			$Control/Timer.start()
