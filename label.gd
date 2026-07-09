extends Label




func _on_sprite_2d_mniejszy(wielkosc: Vector2) -> void:
	text = "Jesteś miejszy! Twoja wielkość to: "+str(snapped(wielkosc.x,0.1))+", "+str(snapped(wielkosc.y,0.1))
	if(wielkosc<Vector2(0,0)):
		text+="\n Jesteś do góry nogami!"
	if(snapped(wielkosc.x,0.1)==0):
		text+="\n Zniknąłeś!"

func _on_sprite_2d_wiekszy(wielkosc: Vector2) -> void:
	text = "Jesteś większy! Twoja wielkość to: "+str(snapped(wielkosc.x,0.1))+", "+str(snapped(wielkosc.y,0.1))
	if(wielkosc<Vector2(0,0)):
		text+="\n Jesteś do góry nogami!"
	if(snapped(wielkosc.x,0.1)==0):
		text+="\n Zniknąłeś!"
