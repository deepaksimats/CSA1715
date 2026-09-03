% DISEASE BASED DIET SUGGESTION SYSTEM

% Diet suggestions for different diseases

diet(diabetes, [vegetables, whole_grains, beans, nuts]).
diet(hypertension, [fruits, vegetables, whole_grains, low_salt_food]).
diet(anemia, [spinach, beans, lentils, iron_fortified_food]).
diet(common_cold, [fruits, vegetables, soup, warm_fluids]).

% Foods to avoid or limit

avoid(diabetes, [sugary_drinks, sweets]).
avoid(hypertension, [high_salt_food, processed_food]).
avoid(anemia, [excess_tea, excess_coffee]).
avoid(common_cold, [very_cold_drinks]).

% Rule to suggest diet

suggest_diet(Disease, Food) :-
    diet(Disease, Food),
    write('Recommended foods for '),
    write(Disease),
    write(': '),
    write(Food),
    nl.

% Rule to suggest foods to avoid

suggest_avoid(Disease, Food) :-
    avoid(Disease, Food),
    write('Foods to limit/avoid for '),
    write(Disease),
    write(': '),
    write(Food),
    nl.