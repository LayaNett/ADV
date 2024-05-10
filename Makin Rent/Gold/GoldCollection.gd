extends Node

var collection = 0

func add_gold():
	collection += 1
	print(collection)
	if collection == 5:
		get_tree().change_scene_to_file('res://MenusAndButtons/win.tscn')
