% Database of persons with Name and DOB

person(rahul, '15-06-2004').
person(priya, '22-08-2005').
person(amit, '10-01-2003').
person(neha, '05-12-2004').
person(arun, '18-03-2005').

% Rule to find DOB of a person
dob(Name, DOB) :-
    person(Name, DOB).