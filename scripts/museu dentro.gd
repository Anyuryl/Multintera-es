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
