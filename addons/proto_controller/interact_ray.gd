extends RayCast3D

func _process(delta: float) -> void:
	if is_colliding():
		var collider = get_collider()
		var parent = collider.get_parent()
		var grandparent = parent.get_parent()
		
		if Input.is_action_just_pressed("interact"):
			if parent.has_method("activate"):
				if parent.active == false:
					parent.activate()
				else:
					parent.deactivate()
