% Директиви для уникнення помилок discontiguous
:- discontiguous is_a/2.
:- discontiguous part_of/2.

% Декларуємо is_a/2 та part_of/2 як таблировані предикати
:- table is_a/2.
:- table part_of/2.

% Родо-видові зв'язки (is_a)
is_a(home_appliance, household_item).
is_a(kitchen_appliance, home_appliance).
is_a(cleaning_appliance, home_appliance).
is_a(entertainment_device, home_appliance).
is_a(climate_control_appliance, home_appliance).

is_a(fridge, kitchen_appliance).
is_a(microwave, kitchen_appliance).
is_a(oven, kitchen_appliance).
is_a(dishwasher, kitchen_appliance).

is_a(vacuum_cleaner, cleaning_appliance).
is_a(washing_machine, cleaning_appliance).
is_a(iron, cleaning_appliance).

is_a(tv, entertainment_device).
is_a(stereo_system, entertainment_device).
is_a(game_console, entertainment_device).

is_a(air_conditioner, climate_control_appliance).
is_a(heater, climate_control_appliance).

% Зв'язки частина-ціле (part_of)
part_of(motor, vacuum_cleaner).
part_of(drum, washing_machine).
part_of(filter, washing_machine).
part_of(speakers, stereo_system).
part_of(controller, game_console).

part_of(door, fridge).
part_of(compressor, fridge).
part_of(shelves, fridge).

part_of(magnetron, microwave).
part_of(turntable, microwave).

part_of(screen, tv).
part_of(remote_control, tv).
part_of(antenna, tv).

part_of(control_panel, air_conditioner).
part_of(fan, air_conditioner).
part_of(heater_element, heater).

% Додано нову категорію для appliance
is_a(appliance, household_item).

is_a(kitchen_device, appliance).
is_a(cleaning_device, appliance).
is_a(entertainment_equipment, appliance).
is_a(climate_control_device, appliance).

% Kitchen Devices
is_a(refrigerator, kitchen_device).
is_a(microwave_oven, kitchen_device).
is_a(electric_stove, kitchen_device).

is_a(samsung_refrigerator, refrigerator).
is_a(lg_refrigerator, refrigerator).
is_a(bosch_microwave, microwave_oven).
is_a(panasonic_microwave, microwave_oven).
is_a(siemens_stove, electric_stove).
is_a(aeg_stove, electric_stove).

% Cleaning Devices
is_a(vacuum, cleaning_device).
is_a(laundry_machine, cleaning_device).
is_a(steam_iron, cleaning_device).

is_a(dyson_vacuum, vacuum).
is_a(electrolux_vacuum, vacuum).
is_a(whirlpool_laundry_machine, laundry_machine).
is_a(samsung_laundry_machine, laundry_machine).
is_a(tefal_steam_iron, steam_iron).
is_a(philips_steam_iron, steam_iron).

% Entertainment Equipment
is_a(television, entertainment_equipment).
is_a(sound_system, entertainment_equipment).

is_a(sony_tv, television).
is_a(lg_tv, television).
is_a(jbl_sound_system, sound_system).
is_a(bose_sound_system, sound_system).

% Climate Control Devices
is_a(air_conditioner, climate_control_device).
is_a(electric_heater, climate_control_device).

is_a(daikin_air_conditioner, air_conditioner).
is_a(mitsubishi_air_conditioner, air_conditioner).
is_a(delonghi_heater, electric_heater).
is_a(vitek_heater, electric_heater).

% Kitchen Devices parts
part_of(door_handle, samsung_refrigerator).
part_of(cooling_unit, samsung_refrigerator).
part_of(shelves, samsung_refrigerator).

part_of(ice_dispenser, lg_refrigerator).
part_of(cooling_unit, lg_refrigerator).
part_of(shelves, lg_refrigerator).

part_of(magnetron_unit, bosch_microwave).
part_of(rotating_plate, bosch_microwave).
part_of(timer, bosch_microwave).

part_of(magnetron_unit, panasonic_microwave).
part_of(rotating_plate, panasonic_microwave).
part_of(grill_element, panasonic_microwave).

part_of(burners, siemens_stove).
part_of(control_knob, siemens_stove).
part_of(oven_door, siemens_stove).

part_of(burners, aeg_stove).
part_of(control_knob, aeg_stove).
part_of(temperature_sensor, aeg_stove).

% Cleaning Devices parts
part_of(motor_unit, dyson_vacuum).
part_of(dust_bag, dyson_vacuum).
part_of(filtration_system, dyson_vacuum).

part_of(motor_unit, electrolux_vacuum).
part_of(dust_bag, electrolux_vacuum).
part_of(filtration_system, electrolux_vacuum).

part_of(drum_unit, whirlpool_laundry_machine).
part_of(water_filter, whirlpool_laundry_machine).
part_of(detergent_dispenser, whirlpool_laundry_machine).

part_of(drum_unit, samsung_laundry_machine).
part_of(water_filter, samsung_laundry_machine).
part_of(heater_element, samsung_laundry_machine).

part_of(steam_generator, tefal_steam_iron).
part_of(heat_plate, tefal_steam_iron).
part_of(temperature_control, tefal_steam_iron).

part_of(steam_generator, philips_steam_iron).
part_of(heat_plate, philips_steam_iron).
part_of(auto_shutoff, philips_steam_iron).

% Entertainment Equipment parts
part_of(display_screen, sony_tv).
part_of(remote_unit, sony_tv).
part_of(stand, sony_tv).

part_of(display_screen, lg_tv).
part_of(remote_unit, lg_tv).
part_of(screen_stand, lg_tv).

part_of(speaker, jbl_sound_system).
part_of(audio_amplifier, jbl_sound_system).
part_of(bass_control, jbl_sound_system).

part_of(speaker, bose_sound_system).
part_of(audio_amplifier, bose_sound_system).
part_of(control_panel, bose_sound_system).

% Climate Control Devices parts
part_of(control_board, daikin_air_conditioner).
part_of(fan_blade, daikin_air_conditioner).
part_of(filter, daikin_air_conditioner).

part_of(control_board, mitsubishi_air_conditioner).
part_of(fan_blade, mitsubishi_air_conditioner).
part_of(filter, mitsubishi_air_conditioner).

part_of(heating_element, delonghi_heater).
part_of(thermostat, delonghi_heater).
part_of(safety_switch, delonghi_heater).

part_of(heating_element, vitek_heater).
part_of(thermostat, vitek_heater).
part_of(remote_control, vitek_heater).

% Правила виведення

% Транзитивність родо-видових зв'язків
is_a(X, Z) :- 
    is_a(X, Y), 
    is_a(Y, Z).

% Транзитивність зв'язків частина-ціле
part_of(X, Z) :- 
    part_of(X, Y), 
    part_of(Y, Z).

% Правило: Якщо X є частиною Y, а Y є видом Z, то X є частиною Z
part_of(X, Z) :- 
    part_of(X, Y), 
    is_a(Y, Z).

% Правило: Якщо X є видом Y, а Y є частиною Z, то X є частиною Z
part_of(X, Z) :- 
    is_a(X, Y), 
    part_of(Y, Z).
