% BACKWARD CHAINING

% Facts
bird(parrot).
bird(eagle).
bird(pigeon).

has_wings(parrot).
has_wings(eagle).
has_wings(pigeon).

% Rules
can_fly(X) :-
    bird(X),
    has_wings(X).

is_animal(X) :-
    bird(X).

% Backward chaining is naturally supported by Prolog.
% Prolog starts with the query and works backward
% to find facts that satisfy the rules.