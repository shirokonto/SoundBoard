extends Control

@onready var soundPlayer = $AudioStreamPlayer
@onready var pitchLabel = $MarginContainer/VBoxContainer/HBoxContainer/MarginContainer/VBoxContainer2/PitchLabel
@onready var volumeLabel = $MarginContainer/VBoxContainer/HBoxContainer/MarginContainer2/VBoxContainer/VolumeLabel
@onready var volumeSlider = $MarginContainer/VBoxContainer/HBoxContainer/MarginContainer2/VBoxContainer/HBoxContainer/VolumeSllider
@onready var pitchSlider = $MarginContainer/VBoxContainer/HBoxContainer/MarginContainer/VBoxContainer2/HBoxContainer/PitchSlider

# Called when the node enters the scene tree for the first time.
func _ready():
	# Set volume and pitch labels 
	soundPlayer.pitch_scale = 1
	pitchLabel.text = "Pitch: " + str(snapped(soundPlayer.pitch_scale, 0.01))
	soundPlayer.volume_db = 10
	volumeLabel.text = "Volume: " + str(soundPlayer.volume_db) + " dB"


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_pitch_slider_value_changed(value):
	soundPlayer.pitch_scale = value
	pitchLabel.text = "Pitch: " + str(snapped(soundPlayer.pitch_scale, 0.01))


func _on_volume_sllider_value_changed(value):
	soundPlayer.volume_db = value
	volumeLabel.text = "Volume: " + str(soundPlayer.volume_db) + " dB"


func _on_reset_volume_button_pressed():
	volumeSlider.value = 10


func _on_reset_pitch_button_pressed():
	pitchSlider.value = 1
