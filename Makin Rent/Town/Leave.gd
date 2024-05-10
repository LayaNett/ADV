extends Button
func _on_pressed():#Takes you back to town to leave the shop
	get_tree().change_scene_to_file("res://Town/town.tscn")
