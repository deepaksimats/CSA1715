% Forward Chaining

% Initial facts
fact(sunny).
fact(warm).

% Rules
rule(sunny, weather_is_good).
rule(warm, people_go_out).
rule(weather_is_good, play_cricket).
rule(people_go_out, play_cricket).

% Forward chaining rule
forward_chain :-
    fact(Fact),
    rule(Fact, Conclusion),
    \+ fact(Conclusion),
    assertz(fact(Conclusion)),
    write('Derived: '),
    write(Conclusion),
    nl,
    forward_chain.

forward_chain.