class_name TeaCfg extends Resource

@export_group("Behavior")
@export var stop_when_source_dies := false
@export var stationary := false

@export_group("Playback")
@export var playback_bus: String = "sfx"
## Limit the number of simultaneous streams of a particular key
@export_range(1, 16, 1) var polyphony_max: int = 1
@export_range(-10.0, 10.0, 0.5) var volume_db: float =  0.0
@export_range(0.1, 2.0, 0.1) var min_pitch: float = 1.0
@export_range(0.1, 4.0, 0.1) var max_pitch: float = 1.0
@export_range(0.0, 3.0, 0.1) var panning_strength: float = 1.0
