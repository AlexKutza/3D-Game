extends Node3D

func _on_area_3d_body_entered(body):
	if body.name == "Player":
		$Area3D/CollisionShape3D.queue_free()
		$Dialogue.show()
		var TEXT = get_node_or_null("/root/Game/Pillar/Dialogue")
		$Dialogue/Text.text = "Radio: Hello? Is anyone still there?"
		await get_tree().create_timer(3).timeout
		$Dialogue/Text.text = "Radio: Oh good! We uhh...had to evacuate the ship."
		await get_tree().create_timer(3).timeout
		$Dialogue/Text.text = "Radio: Some sort of creature got on board."
		await get_tree().create_timer(3).timeout
		$Dialogue/Text.text = "Radio: You have to make it to the exit before the ship--"
		await get_tree().create_timer(3).timeout
		$Dialogue/Text.text = "Radio: Nevermind, just hurry!"
		await get_tree().create_timer(2).timeout
		$Dialogue/Text.text = "*static*"
		await get_tree().create_timer(2).timeout
		$Dialogue/Text.text = "Radio: Tune your radio to stun the creature."
		await get_tree().create_timer(2).timeout
		$Dialogue/Text.text = "Radio: And follow the donuts!"
		await get_tree().create_timer(2).timeout
		$Dialogue/Text.text = "*static*"
		await get_tree().create_timer(2).timeout
		var speed = get_node_or_null("/root/shader/SubViewport/Game/NavigationRegion3D/alien")
		speed.SPEED = 5
		$Dialogue.hide()
