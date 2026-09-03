% Best First Search Algorithm

% Graph
edge(a, b).
edge(a, c).
edge(b, d).
edge(b, e).
edge(c, f).
edge(c, g).
edge(d, h).
edge(e, h).
edge(f, h).
edge(g, h).

% Heuristic values
h(a, 10).
h(b, 6).
h(c, 4).
h(d, 5).
h(e, 3).
h(f, 2).
h(g, 6).
h(h, 0).

% Best First Search
best_first(Start, Goal, Path) :-
    search([node(Start, [Start])], Goal, RevPath),
    reverse(RevPath, Path).

search([node(Goal, Path)|_], Goal, Path).

search(Open, Goal, Path) :-
    Open = [node(Current, CurrentPath)|Rest],
    findall(
        node(Next, [Next|CurrentPath]),
        (edge(Current, Next),
         \+ member(Next, CurrentPath)),
        Children
    ),
    append(Rest, Children, NewOpen),
    sort_by_heuristic(NewOpen, SortedOpen),
    search(SortedOpen, Goal, Path).

% Sort nodes according to heuristic value
sort_by_heuristic(Nodes, Sorted) :-
    predsort(compare_nodes, Nodes, Sorted).

compare_nodes(<, node(A, _), node(B, _)) :-
    h(A, HA),
    h(B, HB),
    HA < HB.

compare_nodes(>, node(A, _), node(B, _)) :-
    h(A, HA),
    h(B, HB),
    HA > HB.

compare_nodes(=, node(_, _), node(_, _)).