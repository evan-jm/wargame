extends CharacterBody2D

const SPEED = 100.0
const HEALTH = 10
const ATTACK = 1
const DEFENCE = 1

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var parent = get_parent()

func _physics_process(delta: float) -> void:
	if parent and "current_target_pos" in parent:
		var global_target = parent.current_target_pos
		global_position = global_position.move_toward(global_target, SPEED * delta)
	move_and_slide()
