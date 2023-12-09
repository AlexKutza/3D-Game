extends CharacterBody3D


var player = null

var SPEED = 1

@export var player_path = "/root/shader/SubViewport/Game/NavigationRegion3D/Player"

@onready var nav_agent = $NavigationAgent3D
@onready var anim_tree = $AnimationTree


# Called when the node enters the scene tree for the first time.
func _ready():
	player = get_node(player_path)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var menu = get_node_or_null("/root/shader/SubViewport/Game/UI/Pause")
	if menu.visible:
		pass
	else:
		velocity = Vector3.ZERO
		nav_agent.set_target_position(player.global_transform.origin)
		var next_nav_point = nav_agent.get_next_path_position()
		velocity = (next_nav_point - global_transform.origin).normalized() * SPEED
		rotation.y = lerp_angle(rotation.y, atan2(-velocity.x, -velocity.z), delta * 10.0)
		move_and_slide()
