% Birds that can fly
can_fly(pigeon).
can_fly(eagle).
can_fly(parrot).
can_fly(sparrow).
can_fly(crow).

% Birds that cannot fly
cannot_fly(ostrich).
cannot_fly(penguin).
cannot_fly(emu).

% Rule to check whether a bird can fly
fly(Bird) :-
    can_fly(Bird),
    write(Bird),
    write(' can fly.').

fly(Bird) :-
    cannot_fly(Bird),
    write(Bird),
    write(' cannot fly.').