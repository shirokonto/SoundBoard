extends Control

@export var sfx: AudioStream
@export var index: int = 1
@export var texture: Texture
@onready var soundPlayer = get_tree().get_root().get_node("Main/AudioStreamPlayer")
@onready var soundLabel = $SoundButton/MarginContainer/VBoxContainer/SoundLabel
@onready var keyLabel = $KeyLabel

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _ready():	
	if texture != null:
		$SoundButton/MarginContainer/VBoxContainer/TextureRect.texture = texture
	if soundLabel != null:
		soundLabel.text = get_file_name(sfx)
	if keyLabel != null:
		keyLabel.text = str(index)

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
		print("playing " + str(sfx.resource_name))

func get_file_name(resource: Resource):
	return resource.resource_path.get_file().trim_suffix('.mp3')
