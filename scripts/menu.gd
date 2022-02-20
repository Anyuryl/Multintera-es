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
