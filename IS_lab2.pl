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
