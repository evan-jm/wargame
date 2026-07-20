extends Area2D

var isSeleted = false
var current_target_pos = null

func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		if event.button_index == MOUSE_BUTTON_LEFT: isSeleted = true
		if event.button_index == MOUSE_BUTTON_RIGHT:
			current_target_pos = get_global_mouse_position()
