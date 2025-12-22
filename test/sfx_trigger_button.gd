class_name SFXTriggerButton extends Button

@export var key: String = ""
@export var count: int = 1
@export var delay_base_sec: float = 0.01
@export var delay_variance_sec: float = 0.01

func _ready():
	pressed.connect(play_sfx)
	
func play_sfx():
	for i in count:
		Tea.play(key)
		await get_tree().create_timer(delay_base_sec + randf_range(0, delay_variance_sec)).timeout
