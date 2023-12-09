extends Node

var time = 100

func _ready():
	process_mode = Node.PROCESS_MODE_ALWAYS

func _process(_delta):
	if Input.is_action_just_pressed("menu"):
		var menu = get_node_or_null("/root/shader/SubViewport/Game/UI/Pause")
		if menu == null:
			get_tree().quit()
		else:
			if menu.visible:
				menu.hide()
			else:
				menu.show()
				var HUD = get_node_or_null("/root/shader/SubViewport/Game/UI/HUD")


func update_time(t):
	var menu = get_node_or_null("/root/shader/SubViewport/Game/UI/Pause")
	if menu.visible:
		pass
	else:
		time += t
		var HUD = get_node_or_null("/root/shader/SubViewport/Game/UI/HUD")
		if HUD != null:
			HUD.update_time()

func _on_countdown_timeout():
	get_tree().change_scene_to_file("res://UI/End.tscn")
