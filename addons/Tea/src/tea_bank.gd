@tool
class_name TeaBank extends Resource

@export var entries: Array[TeaLeaf]
	
func add_entry():
	entries.insert(0, TeaLeaf.new())

func delete_entry(entry: TeaLeaf):
	var entry_idx := entries.find(entry)
	if entry_idx >= 0:
		entries.remove_at(entry_idx)

func find_entry_with_trigger(trigger: String) -> TeaLeaf:
	for entry: TeaLeaf in entries:
		if entry.trigger_tags == trigger:
			return entry

	return null
		
func _sort_func(a: TeaLeaf, b: TeaLeaf) -> bool:
	return a.trigger_tags < b.trigger_tags
	
func sort_by_trigger():
	entries.sort_custom(_sort_func)
 
