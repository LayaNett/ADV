extends Button
func _on_pressed():#Takes to settings, but the settinsg do nothing
	get_tree().change_scene_to_file("res://MenusAndButtons/settings.tscn")
