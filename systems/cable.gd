extends Node2D

@export var length : float = 100.0
var target : Node2D

func _ready() -> void:
	target = get_tree().get_first_node_in_group("player")
	
	if target :
		create_line(target)


func create_line(trgt : Node2D) -> void:
	var line : Line2D = Line2D.new()
	line.joint_mode = Line2D.LINE_JOINT_ROUND
	line.begin_cap_mode = Line2D.LINE_CAP_ROUND
	line.end_cap_mode = Line2D.LINE_CAP_ROUND
	line.default_color = Color.BLUE
	line.add_point(trgt.global_position)
	line.add_point(trgt.global_position + Vector2(length,0))
	add_child(line)
