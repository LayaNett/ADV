extends Area3D

@onready var animation = $AnimationPlayer


#Currently kills player if they touch bear
func _on_body_entered(body):
	if (body.name == "Player"):
		get_tree().change_scene_to_file("res://MenusAndButtons/lose.tscn")

func _ready():
	_on_animation_player_animation_started("walking")
	

func _on_animation_player_animation_started(anim_name):
	animation.play("walking")
