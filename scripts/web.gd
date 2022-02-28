extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var center= Vector2(500,400)
signal set_pag(i)
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
var visi = false
func _physics_process(delta):
	$Control/TileMap.position.y=-$Control/VScrollBar.value
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_TextureButton_pressed():
	print(1)
	visible = false
	visi = false


func _on_web_set_pag(i):
	print(i)
	$Control/VScrollBar.value = i
