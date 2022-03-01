extends Node

var u=0
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	for i in get_tree().get_nodes_in_group("PAG"):
		i.emit_signal("set_pag",25618)
	$UI/CanvasLayer/web.visible=false
func trocar(nova):
	get_tree().change_scene(nova)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
