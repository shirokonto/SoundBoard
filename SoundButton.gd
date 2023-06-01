extends Control

@export var sfx: AudioStream
@export var ev: String 

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

#func _input(event):
#	if event.is_action_pressed(ev):
#		play_sound()

func _on_sound_button_pressed():
	play_sound()



func play_sound():
	if sfx != null:
		sfx.set_loop(false)
		$AudioStreamPlayer.stream = sfx
		$AudioStreamPlayer.play()
		print("sfx")
