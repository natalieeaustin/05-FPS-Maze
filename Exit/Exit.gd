extends Area

var locked = true

func _ready():
	$light.light_color = Color(1, 0, 0, 1)
	

func unlock():
	locked = false 
	$light.light_color = Color(0,1,0,1)

func _on_Exit_body_entered(body):
	if body.name == "Player" and not locked:
		var _scene = get_tree().change_scene("res://UI/Win.tscn")

