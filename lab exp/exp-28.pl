% Medical Diagnosis System

% Symptoms of diseases

symptom(flu, fever).
symptom(flu, cough).
symptom(flu, headache).
symptom(flu, body_pain).

symptom(cold, cough).
symptom(cold, sneezing).
symptom(cold, runny_nose).
symptom(cold, sore_throat).

symptom(malaria, fever).
symptom(malaria, chills).
symptom(malaria, sweating).
symptom(malaria, headache).

symptom(covid, fever).
symptom(covid, cough).
symptom(covid, tiredness).
symptom(covid, loss_of_smell).

% Diagnosis rules

diagnose(Disease, Symptoms) :-
    findall(S, symptom(Disease, S), Symptoms).

% Display diagnosis

medical_diagnosis(Disease) :-
    diagnose(Disease, Symptoms),
    write('Possible disease: '),
    write(Disease),
    nl,
    write('Symptoms: '),
    write(Symptoms),
    nl.