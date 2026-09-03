% Monkey Banana Problem

% State: state(MonkeyPosition, MonkeyHeight, BoxPosition, BananaPosition)

% Monkey can move from one position to another
move(state(Pos, floor, Box, Banana),
     state(NewPos, floor, Box, Banana)) :-
    Pos \= NewPos.

% Monkey can push the box
push_box(state(Pos, floor, Pos, Banana),
         state(NewPos, floor, NewPos, Banana)) :-
    Pos \= NewPos.

% Monkey can climb onto the box
climb(state(Pos, floor, Pos, Banana),
      state(Pos, onbox, Pos, Banana)).

% Monkey can climb down from the box
climb_down(state(Pos, onbox, Pos, Banana),
           state(Pos, floor, Pos, Banana)).

% Monkey can grab the banana when on the box
grab_banana(state(Banana, onbox, Banana, Banana),
            state(Banana, onbox, Banana, Banana)).