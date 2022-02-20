extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
# var a = 2

var center= Vector2(500,400)
	
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	Global.trocar('res://tscnss/menu.tscn')
	for i in get_tree().get_nodes_in_group("cam"):
		i.emit_signal("zoo",false,center)


func _on_multi_pressed():
	Global.trocar('res://tscnss/museu dentro.tscn')
	for i in get_tree().get_nodes_in_group("cam"):
		i.emit_signal("zoo",false,center)


func _on_multi_mouse_entered():
	$Control/Museu.texture =load('res://fotos/museu2.png')


func _on_multi_mouse_exited():
	$Control/Museu.texture =load('res://fotos/museu.png')
