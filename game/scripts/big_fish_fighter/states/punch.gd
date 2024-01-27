extends State

var anim_done : bool

func enter():
	super.enter()
	anim_done = false
	
	if entity.is_on_floor():
		entity.movement_direction = 0

func physics_update(delta):
	super.physics_update(delta)
	entity.apply_movement(delta)
	entity.apply_gravity(delta)
	
	if anim_done == true:
		return entity.move
	
	if entity.got_hurt == true:
		return entity.hurt

func exit():
	super.exit()

func _on_animator_animation_finished(anim_name):
	anim_done = true


func _on_animator_animation_changed(old_name, new_name):
	pass # Replace with function body.
