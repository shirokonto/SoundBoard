extends Control
@onready var soundPlayer = $AudioStreamPlayer

# Called when the node enters the scene tree for the first time.
func _ready():
	soundPlayer.pitch_scale = 1
	soundPlayer.volume_db = 10


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_pitch_slider_value_changed(value):
	soundPlayer.pitch_scale = value


func _on_volume_sllider_value_changed(value):
	soundPlayer.volume_db = value
