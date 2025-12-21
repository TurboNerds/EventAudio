@tool
extends EditorPlugin

var _editor_plugin = preload("res://addons/Tea/src/ea_event_bank_inspector.gd").new()
var _runtime_scene = "res://addons/Tea/scenes/event_audio_autoload.tscn"

func _enter_tree():

	var mono_supported = ClassDB.class_exists("CSharpScript")

	if mono_supported:
		print ("Mono supported")
	else:
		print ("Mono unsupported")

	add_inspector_plugin(_editor_plugin)

	if not ProjectSettings.has_setting("autoload/Tea"):
		add_autoload_singleton("Tea", _runtime_scene)

func _exit_tree():
	if _editor_plugin != null:
		remove_inspector_plugin(_editor_plugin)
	if ProjectSettings.has_setting("autoload/Tea"):
		remove_autoload_singleton("Tea")
