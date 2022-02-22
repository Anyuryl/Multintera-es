extends Camera2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
signal zoo (zom,target) 

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
var zoomed = false
var targett=Vector2(500,400)
func _physics_process(delta):
	if zoomed == true:
		position=position.move_toward(targett+Vector2(40,80),30)
		zoom = zoom.move_toward(Vector2(0.1,0.1),0.05)
		
	else:
		zoom =Vector2(1,1)
		position=targett
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass



func _on_Camera2D_zoo(zom, target):
	zoomed=zom
	targett=target



