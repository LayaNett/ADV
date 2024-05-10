extends CharacterBody3D


const SPEED = 5.0
const JUMP_VELOCITY = 4.5

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")

@onready var camera_stand = $CameraStand
@onready var sens_mouse = 0.3
func _input(event): #input is for camera mouse movement
	if event is InputEventMouseMotion:
		rotate_y(deg_to_rad(-event.relative.x*sens_mouse))
		camera_stand.rotate_x(deg_to_rad(-event.relative.y*sens_mouse))


func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y -= gravity * delta

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var input_dir = Input.get_vector("left", "right", "up", "down")
	var direction = (transform.basis * Vector3(input_dir.x, 1, input_dir.y)).normalized()
	if direction:
		velocity.x = direction.x * SPEED
		velocity.z = direction.z * SPEED
	else:
		velocity.x = move_toward(velocity.x, 1, SPEED)
		velocity.z = move_toward(velocity.z, 1, SPEED)

	move_and_slide()
