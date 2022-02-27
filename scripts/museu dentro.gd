extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


var center= Vector2(500,400)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass



func _on_TextureButton_pressed():
	Global.trocar('res://tscnss/museu.tscn')
	for i in get_tree().get_nodes_in_group("cam"):
		i.emit_signal("zoo",false,center)


func _on_TextureButton2_pressed():
	if $Control/Node2D.position.x >-2200:
		$Control/Node2D.position.x-=400


func _on_TextureButton3_pressed():
	if $Control/Node2D.position.x <0:
		$Control/Node2D.position.x+=400


func _on_MUL_pressed():
	for j in get_tree().get_nodes_in_group("PAG"):
		if j.visi == false:
			for i in get_tree().get_nodes_in_group("cam"):
				i.emit_signal("zoo",true,$Control/Node2D/Sprite/MUL.rect_global_position)
			$Control/Node2D/Sprite/MU.start()




func _on_MU_timeout():
	for i in get_tree().get_nodes_in_group("PAG"):
		i.emit_signal("set_pag",0)
		i.visible = true
		i.visi =true
	for i in get_tree().get_nodes_in_group("cam"):
		i.emit_signal("zoo",false,center)


func _on_divul_pressed():
	for j in get_tree().get_nodes_in_group("PAG"):
		if j.visi == false:
			for i in get_tree().get_nodes_in_group("cam"):
				i.emit_signal("zoo",true,$Control/Node2D/Sprite2/divul.rect_global_position)
			$Control/Node2D/Sprite2/MU2.start()



func _on_tipo_pressed():
	for j in get_tree().get_nodes_in_group("PAG"):
		if j.visi == false:
			for i in get_tree().get_nodes_in_group("cam"):
				i.emit_signal("zoo",true,$Control/Node2D/Sprite3/tipo.rect_global_position)
			$Control/Node2D/Sprite3/MU3.start()



func _on_hardwa_pressed():
	for j in get_tree().get_nodes_in_group("PAG"):
		if j.visi == false:
			for i in get_tree().get_nodes_in_group("cam"):
				i.emit_signal("zoo",true,$Control/Node2D/Sprite4/hardwa.rect_global_position)
		$Control/Node2D/Sprite4/MU4.start()



func _on_MU4_timeout():
	for i in get_tree().get_nodes_in_group("PAG"):
		i.emit_signal("set_pag",8151)
		i.visible = true
		i.visi =true
	for i in get_tree().get_nodes_in_group("cam"):
		i.emit_signal("zoo",false,center)



func _on_MU2_timeout():
	for i in get_tree().get_nodes_in_group("PAG"):
		i.emit_signal("set_pag",4668)
		i.visible = true
		i.visi =true
	for i in get_tree().get_nodes_in_group("cam"):
		i.emit_signal("zoo",false,center)



func _on_MU3_timeout():
	for i in get_tree().get_nodes_in_group("PAG"):
		i.emit_signal("set_pag",6984)
		i.visible = true
		i.visi =true
	for i in get_tree().get_nodes_in_group("cam"):
		i.emit_signal("zoo",false,center)

