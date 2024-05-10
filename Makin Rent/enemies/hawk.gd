extends CharacterBody3D

#Plays hawk flying in circle but does nothing else
@onready var animation= $AnimationPlayer
func _on_animation_player_animation_started(anim_name):
	animation.play("flying")
	
func _ready():
	_on_animation_player_animation_started("flying")
