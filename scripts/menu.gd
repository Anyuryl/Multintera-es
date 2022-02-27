extends Node2D


# Declare member variables here. Examples:
# var a = 2

var center= Vector2(500,400)




# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_multi_pressed():
	for i in get_tree().get_nodes_in_group("cam"):
		i.emit_signal("zoo",true,$Control/multi.rect_global_position)
	$multi.start()
	
	


func _on_vr_pressed():
	for i in get_tree().get_nodes_in_group("cam"):
		i.emit_signal("zoo",true,$Control/vr.rect_global_position)
	$vr.start()



func _on_multi_timeout():
	Global.trocar('res://tscnss/museu.tscn')
	for i in get_tree().get_nodes_in_group("cam"):
		i.emit_signal("zoo",false,center)


func _on_vr_timeout():
	Global.trocar('res://tscnss/vr.tscn')
	for i in get_tree().get_nodes_in_group("cam"):
		i.emit_signal("zoo",false,center)


func _on_interatividade_pressed():
	for i in get_tree().get_nodes_in_group("cam"):
		i.emit_signal("zoo",true,$Control/interatividade.rect_global_position)
	$int.start()


func _on_int_timeout():
	Global.trocar('res://tscnss/intera.tscn')
	for i in get_tree().get_nodes_in_group("cam"):
		i.emit_signal("zoo",false,center)



func _on_multi_mouse_entered():
	$Label.text ='Multimédia'


func _on_multi_mouse_exited():
	$Label.text =''


func _on_vr_mouse_entered():
	$Label.text ='Realidade Virtual'


func _on_vr_mouse_exited():
	$Label.text =''


func _on_interatividade_mouse_entered():
	$Label.text ='Interatividade'


func _on_interatividade_mouse_exited():
	$Label.text =''


func _on_arru_timeout():
	for i in get_tree().get_nodes_in_group("PAG"):
		i.emit_signal("set_pag",31424)
		i.visible = true
		i.visi =true
		$arru2.start()




func _on_arru2_timeout():
	for i in get_tree().get_nodes_in_group("PAG"):
		i.emit_signal("set_pag",31424)
		i.visible = false
		i.visi =false
