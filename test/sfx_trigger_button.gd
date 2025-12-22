class_name SFXTriggerButton extends Button

func _ready():
	pressed.connect(play_sfx)
	
func play_sfx():
	Tea.play("test")
