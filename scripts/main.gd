extends Node2D

var cable : Cable

func _ready() -> void:
	cable = Cable.new()
	cable.begin_connector = $Drone
	cable.end_connector = $Marker2D
	add_child(cable)
