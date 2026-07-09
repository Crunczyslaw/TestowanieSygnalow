extends Sprite2D

var speed = 600
var angular_speed = 3

signal wiekszy(wielkosc:Vector2)
signal mniejszy(wielkosc:Vector2)



func _process(delta: float) -> void:
	var rot_dir = 0
	if Input.is_action_pressed("ui_left"):
		rot_dir = -1
	if Input.is_action_pressed("ui_right"):
		rot_dir = 1
	rotation += angular_speed * delta * rot_dir

	if Input.is_action_pressed("ui_up"):
		position += Vector2.UP.rotated(rotation) * speed * delta


	


func _on_zmniejsz_pressed() -> void:
	print(scale>Vector2(0,0))
	scale -= Vector2(0.1,0.1)
	mniejszy.emit(scale)


func _on_powieksz_pressed() -> void:
	scale += Vector2(0.1,0.1)
	wiekszy.emit(scale)

func _on_kolor_pressed() -> void:
	set_modulate(Color(randf(), randf(), randf(), 1.0))


func _on_wroc_pressed() -> void:
	position = Vector2(569.0,331.0)
