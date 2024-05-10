extends Area3D
@onready var gold_collection = %GoldCollecting

func _on_body_entered(body):
	if (body.name == "Player"):
		queue_free()
		gold_collection.add_gold()

