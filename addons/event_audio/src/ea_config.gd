class_name EAConfig extends Resource

@export var key: String = ""

@export_group("Mix and final output", "mix_param_")
@export_range(0.0, 1.0, 0.01) var mix_param_attenuation: float = 1.0
@export var bus: String = "sfx"
@export var source_node: NodePath
@export var source_coords: Vector2

@export_group("Constant modulation", "mod_param_")
@export_range(0.0, 1.0, 0.01) var mod_param_modulation_volume_factor: float = 0.0
@export_range(0.0, 1.0, 0.01) var mod_param_modulation_volume_min: float = 1.0
@export_range(0.0, 1.0, 0.01) var mod_param_modulation_volume_max: float = 1.0

@export_range(0.0, 1.0, 0.01) var mod_param_modulation_pitch_factor: float = 0.0
@export_range(0.01, 8.0, 0.01) var mod_param_modulation_pitch_min: float = 1.0
@export_range(0.01, 8.0, 0.01) var mod_param_modulation_pitch_max: float = 1.0

@export_group("Random modulation", "mod_rand_param_")
@export_range(0.0, 1.0, 0.01) var mod_rand_param_modulation_volume_factor: float = 0.0
@export_range(0.0, 1.0, 0.01) var mod_rand_param_modulation_volume_min: float = 1.0
@export_range(0.0, 1.0, 0.01) var mod_rand_param_modulation_volume_max: float = 1.0

@export_range(0.0, 1.0, 0.01) var mod_rand_param_modulation_pitch_factor: float = 0.0
@export_range(0.01, 8.0, 0.01) var mod_rand_param_modulation_pitch_min: float = 1.0
@export_range(0.01, 8.0, 0.01) var mod_rand_param_modulation_pitch_max: float = 1.0

@export_group("Rate limiting", "rate_limit_param_")
@export_range(0, 64, 1) var key_polyphony_max: int = 1
@export_range(0.001, 10.0, 0.001) var key_polyphony_timeout_duration_sec: float = 0.1
