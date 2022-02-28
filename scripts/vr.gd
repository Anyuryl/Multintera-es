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


func _on_p_timeout():
	for i in get_tree().get_nodes_in_group("PAG"):
		i.emit_signal("set_pag",26852)
		i.visible = true
		i.visi =true
	for i in get_tree().get_nodes_in_group("cam"):
		i.emit_signal("zoo",false,center)


func _on_pc_pressed():
	for j in get_tree().get_nodes_in_group("PAG"):
		if j.visi == false:
			for i in get_tree().get_nodes_in_group("cam"):
				i.emit_signal("zoo",true,$Control/Sprite2/pc.rect_global_position)
			$Control/Sprite2/p.start()


func _on_vr_pressed():
	for j in get_tree().get_nodes_in_group("PAG"):
		if j.visi == false:
			for i in get_tree().get_nodes_in_group("cam"):
				i.emit_signal("zoo",true,$Control/Sprite/vr.rect_global_position)
			$Control/Sprite/v.start()


func _on_v_timeout():
	for i in get_tree().get_nodes_in_group("PAG"):
		i.emit_signal("set_pag",25618)
		i.visible = true
		i.visi =true
	for i in get_tree().get_nodes_in_group("cam"):
		i.emit_signal("zoo",false,center)


func _on_vr_mouse_entered():
	$Control/Label.text='"Realidades"'


func _on_vr_mouse_exited():
	$Control/Label.text=''



func _on_pc_mouse_entered():
	$Control/Label.text='História'

func _on_pc_mouse_exited():
	$Control/Label.text=''
