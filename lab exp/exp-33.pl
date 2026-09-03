% Check whether a character is a vowel

vowel(a).
vowel(e).
vowel(i).
vowel(o).
vowel(u).

% Count vowels in a list of characters

count_vowels([], 0).

count_vowels([H|T], Count) :-
    vowel(H),
    count_vowels(T, Count1),
    Count is Count1 + 1.

count_vowels([H|T], Count) :-
    \+ vowel(H),
    count_vowels(T, Count).