class_name TeaBag extends Node
@export var _audio_bank_resource : TeaBank

func _enter_tree():
	var player := Tea.instance
	player.register_event_bank(_audio_bank_resource)
	
func _exit_tree():
	var player := Tea.instance
	player.unregister_event_bank(_audio_bank_resource)
