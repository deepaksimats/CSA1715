% Fruit and Colour Database

fruit_colour(apple, red).
fruit_colour(banana, yellow).
fruit_colour(orange, orange).
fruit_colour(grapes, green).
fruit_colour(mango, yellow).
fruit_colour(watermelon, green).

% Rule to find the colour of a fruit

colour(Fruit, Colour) :-
    fruit_colour(Fruit, Colour).