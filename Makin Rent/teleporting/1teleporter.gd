extends Area3D
#Teleports player to woods when touched
func _on_body_entered(body):
	if (body.name == "Player"):
		get_tree().change_scene_to_file("res://Woods/woods.tscn")
