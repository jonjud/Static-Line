extends Node2D
class_name Cable

var target : Node2D

func _ready() -> void:
	target = get_tree().get_first_node_in_group("player")
	

func create_line() -> Line2D:
	var line : Line2D = Line2D.new()
	line.joint_mode = Line2D.LINE_JOINT_ROUND
	line.begin_cap_mode = Line2D.LINE_CAP_ROUND
	line.end_cap_mode = Line2D.LINE_CAP_ROUND
	line.default_color = Color.BLUE
	return line
