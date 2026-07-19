extends CharacterBody2D

const SPEED = 100.0
const HEALTH = 10
const ATTACK = 1
const DEFENCE = 1

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

func _ready() -> void:
	pass

func _physics_process(delta: float) -> void:
	var directionX := Input.get_axis("ui_left", "ui_right")
	if directionX: velocity.x = directionX * SPEED
	else: velocity.x = move_toward(velocity.x, 0, SPEED)
	
	var directionY := Input.get_axis("ui_up", "ui_down")
	if directionY: velocity.y = directionY * SPEED
	else: velocity.y = move_toward(velocity.y, 0, SPEED)

	if directionX < 0: animated_sprite_2d.flip_h = true
	elif directionX > 0: animated_sprite_2d.flip_h = false
	if directionX != 0 or directionY != 0: animated_sprite_2d.play("move")
	else: animated_sprite_2d.play("idle")

	move_and_slide()
