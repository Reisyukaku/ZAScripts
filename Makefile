HAXE=tools/haxe-4.3.1/haxe
LUAC=tools/lua-5.4.3/src/luac
BUILD_DIR=build

export HAXE_STD_PATH=tools/haxe-4.3.1/std

.PHONY: all haxe-all check compile main event-ik clean

all: haxe-all

haxe-all:
	@mkdir -p $(BUILD_DIR)
	$(HAXE) build.hxml
	$(LUAC) -s -o $(BUILD_DIR)/dll_util.blua $(BUILD_DIR)/dll_util.lua
	$(LUAC) -s -o $(BUILD_DIR)/main_dynamic.blua $(BUILD_DIR)/main_dynamic.lua
	$(LUAC) -s -o $(BUILD_DIR)/main.blua $(BUILD_DIR)/main.lua
	$(LUAC) -s -o $(BUILD_DIR)/event_ik.blua $(BUILD_DIR)/event_ik.lua

check: haxe-all
	python3 tests/verify_class_names.py
	python3 tests/verify_function_abi.py
	python3 tests/verify_references.py
	python3 tests/verify_common_create.py
	python3 tests/verify_scenario_helpers.py
	python3 tests/verify_camera_axis.py
	python3 tests/verify_camera_base.py
	python3 tests/verify_camera_lifecycle.py
	python3 tests/verify_camera_callers.py
	python3 tests/verify_loop_state.py
	python3 tests/verify_path_curve.py
	python3 tests/verify_wind_grass.py
	python3 tests/verify_field_effect.py
	python3 tests/verify_ground_effect_factory.py
	python3 tests/verify_ground_effect_control.py
	python3 tests/verify_ground_effect_generation.py
	python3 tests/verify_ground_effect_manager.py
	python3 tests/verify_tween_util.py
	python3 tests/verify_mega_evolution.py
	python3 tests/verify_ik_control_flow.py
	python3 tests/verify_simple_talk_helpers.py
	python3 tests/verify_simple_talk_main.py
	python3 tests/verify_yukari_infinity.py
	python3 tests/verify_context_shop.py
	python3 tests/verify_center_helpers.py
	python3 tests/verify_center_main.py
	python3 tests/verify_center_demos.py
	python3 tests/verify_battle_talk.py
	python3 tests/verify_za_reward.py
	python3 tests/verify_context_menu.py
	python3 tests/verify_fade_command.py
	python3 tests/verify_effect_command.py
	python3 tests/verify_character_command.py
	python3 tests/verify_one_shot.py
	python3 tests/verify_system_waits.py
	python3 tests/verify_character_motion.py
	python3 tests/verify_animation_callers.py
	python3 tests/verify_message_callers.py
	python3 tests/verify_collision_bag.py
	python3 tests/verify_look_at_callers.py
	python3 tests/verify_command_wrappers.py
	python3 tests/verify_character_lifecycle.py
	python3 tests/verify_party_helpers.py
	python3 tests/verify_interaction_helpers.py
	python3 tests/verify_async_callers.py
	python3 tests/verify_ray_capture_helpers.py
	python3 tests/verify_sequence_callers.py
	python3 tests/verify_large_demos.py
	python3 tests/verify_falling.py
	python3 tests/verify_event_small_helpers.py
	python3 tests/verify_event_contracts.py
	python3 tests/verify_small_native_events.py
	python3 tests/verify_camera_light_helpers.py
	python3 tests/verify_omamori_event.py
	python3 tests/verify_reward_dressup.py
	python3 tests/verify_friendship.py
	python3 tests/verify_claude_batch_001.py
	python3 tests/verify_claude_batch_002.py
	python3 tests/verify_claude_batch_003.py
	python3 tests/verify_hologram_warp.py
	python3 tests/verify_execute_shop.py
	python3 tests/verify_participant_init.py
	python3 tests/verify_restaurant_entries.py
	python3 tests/verify_salon_helpers.py
	python3 tests/verify_salon_flow.py
	python3 tests/verify_event_demos.py
	python3 tests/verify_retry_events.py
	python3 tests/verify_taxi_event.py
	python3 tests/verify_training_event.py
	python3 tests/verify_kaiden_event.py
	python3 tests/verify_constructor_order.py
	python3 tests/verify_command_end.py
	python3 tests/verify_math_util.py
	python3 tests/verify_resident_utilities.py
	python3 tests/verify_cafe_manager.py
	python3 tests/verify_cafe_data.py
	python3 tests/verify_cafe_flow.py
	python3 tests/verify_cafe_objects.py
	python3 tests/verify_cafe_menus.py
	python3 tests/verify_cafe_pokemon.py
	python3 tests/verify_cafe_purchase.py
	python3 tests/verify_box_select.py
	python3 tests/verify_literal_flow.py
	python3 tests/verify_source_clean_state.py
	python3 tests/verify_scene_locals.py
	python3 tests/verify_completion_scenes.py
	python3 tests/verify_event_scenarios.py
	python3 tests/verify_scenario_traces.py

compile:
	@mkdir -p $(BUILD_DIR)
	$(HAXE) dll_util.hxml
	$(LUAC) -s -o $(BUILD_DIR)/dll_util.blua $(BUILD_DIR)/dll_util.lua

main:
	@mkdir -p $(BUILD_DIR)
	$(HAXE) main.hxml
	$(LUAC) -s -o $(BUILD_DIR)/main.blua $(BUILD_DIR)/main.lua

event-ik:
	@mkdir -p $(BUILD_DIR)
	$(HAXE) event_ik.hxml
	$(LUAC) -s -o $(BUILD_DIR)/event_ik.blua $(BUILD_DIR)/event_ik.lua

clean:
	rm -rf $(BUILD_DIR)
