extends Node2D
class_name Cable

var begin_connector : Node2D
var end_connector : Node2D
var line : Line2D = Line2D.new()

func _ready() -> void:
	create_line()
	set_cable_points()

func create_line() -> void:
	line.joint_mode = Line2D.LINE_JOINT_ROUND
	line.begin_cap_mode = Line2D.LINE_CAP_ROUND
	line.end_cap_mode = Line2D.LINE_CAP_ROUND
	line.default_color = Color.BLUE
	add_child(line)

func set_cable_points() -> void:
	line.add_point(to_local(begin_connector.global_position))
	line.add_point(to_local(end_connector.global_position))
	

func move_line(index: int) -> void:
	line.set_point_position(index,to_local(begin_connector.global_position))

func _physics_process(delta: float) -> void:
	move_line(0)
