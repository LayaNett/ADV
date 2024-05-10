extends Button
#Press play, get teleported to town
func _on_pressed():
	get_tree().change_scene_to_file("res://Town/town.tscn")
