extends Button
func _on_pressed():#Takes player to main menu
	get_tree().change_scene_to_file("res://MenusAndButtons/menu.tscn")
