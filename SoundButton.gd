extends Control

@export var sfx: AudioStream
@export var index: int 
@onready var soundPlayer = get_tree().get_root().get_node("Main/AudioStreamPlayer")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	sound player

func _ready():
	pass

func _on_sound_button_pressed():
	play_sound()

func _input(event):
	var inputAction = "sound" + str(index)
	if event.is_action_pressed(inputAction):
		play_sound()

func play_sound():
	if sfx != null:
		sfx.set_loop(false)
		soundPlayer.stream = sfx
		soundPlayer.play()
		print("sfx")
