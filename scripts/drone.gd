extends CharacterBody2D

@export var speed : float = 200.0
@export var accel : float = 800.0
@export var length : float = 100.0
var cable : Line2D
func _ready() -> void:
	add_to_group("player")
	cable = Cable.new().create_line()
	cable.add_point(Vector2.ZERO)
	cable.add_point(Vector2(length,0))
	add_child(cable)

func handle_movement(delta: float) -> void:
	#get_vector = already normalized()
	var dir : Vector2 = Input.get_vector("move_left","move_right","move_up","move_down")
	velocity = velocity.move_toward(dir * speed , accel *delta)

func _physics_process(delta: float) -> void:
	handle_movement(delta)
	move_and_slide()
