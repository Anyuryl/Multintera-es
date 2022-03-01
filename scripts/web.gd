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
	$PanelContainer/TileMap.position.y=-$PanelContainer/VScrollBar.value
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
func _input(event):
	if Input.is_action_pressed("c"):
		$PanelContainer/VScrollBar.value+=15
	elif Input.is_action_pressed("b"):
		$PanelContainer/VScrollBar.value-=15

func _on_TextureButton_pressed():
	print(1)
	visible = false
	visi = false


func _on_web_set_pag(i):
	print(i)
	$PanelContainer/VScrollBar.value = i
