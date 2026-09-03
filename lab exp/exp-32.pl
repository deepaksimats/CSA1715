% Pattern Matching in Prolog

% Facts
student(rahul, cse, 20).
student(priya, ece, 21).
student(amit, cse, 19).
student(neha, aiml, 20).

% Pattern matching rule
match_student(Name, Branch, Age) :-
    student(Name, Branch, Age).