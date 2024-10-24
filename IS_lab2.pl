% Директиви для уникнення помилок discontiguous
:- discontiguous is_a/2.
:- discontiguous part_of/2.

% Декларуємо is_a/2 та part_of/2 як таблировані предикати
:- table is_a/2.
:- table part_of/2.

% Нова категорія для appliance
is_a(appliance, household_item).

is_a(kitchen_device, appliance).
is_a(cleaning_device, appliance).
is_a(entertainment_equipment, appliance).
is_a(climate_control_device, appliance).

% Kitchen Devices
is_a(refrigerator, kitchen_device).
is_a(microwave_oven, kitchen_device).
is_a(electric_stove, kitchen_device).

part_of(door_handle, refrigerator).
part_of(cooling_unit, refrigerator).
part_of(magnetron_unit, microwave_oven).
part_of(rotating_plate, microwave_oven).
part_of(burners, electric_stove).
part_of(control_knob, electric_stove).

% Cleaning Devices
is_a(vacuum, cleaning_device).
is_a(laundry_machine, cleaning_device).
is_a(steam_iron, cleaning_device).

part_of(motor_unit, vacuum).
part_of(dust_bag, vacuum).
part_of(drum_unit, laundry_machine).
part_of(water_filter, laundry_machine).
part_of(steam_generator, steam_iron).
part_of(heat_plate, steam_iron).

% Entertainment Equipment
is_a(television, entertainment_equipment).
is_a(sound_system, entertainment_equipment).

part_of(display_screen, television).
part_of(remote_unit, television).
part_of(speaker, sound_system).
part_of(audio_amplifier, sound_system).

% Climate Control Devices
is_a(air_conditioner, climate_control_device).
is_a(electric_heater, climate_control_device).

part_of(control_board, air_conditioner).
part_of(fan_blade, air_conditioner).
part_of(heating_element, electric_heater).
part_of(thermostat, electric_heater).


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
