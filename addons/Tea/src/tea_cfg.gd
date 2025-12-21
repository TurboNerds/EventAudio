class_name TeaCfg extends Resource

@export_group("Behavior", "behavior_")
@export var behavior_stop_when_source_dies := false
@export var behavior_stationary := false

@export_group("Global playback", "playback_")
@export var playback_bus: String = "Master"
@export_range(-10.0, 10.0, 0.1) var playback_volume_db: float =  0.0
@export_range(0.1, 2.0, 0.1) var playback_min_pitch: float = 1.0
@export_range(0.1, 2.0, 0.1) var playback_max_pitch: float = 1.0
@export_range(0.0, 3.0, 0.1) var playback_panning_strength: float = 1.0
