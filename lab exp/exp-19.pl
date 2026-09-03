% Student - Teacher - Subject - Code Database

student(rahul, maths, rajesh, m101).
student(priya, physics, kumar, p102).
student(amit, chemistry, anitha, c103).
student(neha, english, priya, e104).
student(arun, computer_science, mohan, cs105).

% Rule to find the teacher of a subject
teacher(Student, Teacher) :-
    student(Student, _, Teacher, _).

% Rule to find the subject of a student
subject(Student, Subject) :-
    student(Student, Subject, _, _).

% Rule to find the subject code
code(Student, Code) :-
    student(Student, _, _, Code).