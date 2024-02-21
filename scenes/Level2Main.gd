extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$UserInterface/Retry.show()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _unhandled_input(event):
	if Input.is_key_pressed(KEY_R):
		# This restarts the current scene.
		get_tree().reload_current_scene()


func _on_ObjectiveArea_body_entered(body):
	if (body.name == "GreenShip"):
		print("Reached goal!")# Replace with function body.
