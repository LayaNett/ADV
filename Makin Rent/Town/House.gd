extends Area3D
func _on_body_entered(body):#Teleports player to store
	if (body.name == "Player"):
		get_tree().change_scene_to_file("res://Town/House.tscn")
