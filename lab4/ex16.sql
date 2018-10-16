select distinct Nume_Student,Prenume_Student, discipline.Disciplina , discipline.Nr_ore_plan_disciplina
from studenti_reusita
inner join studenti on studenti_reusita.Id_Student = studenti.Id_Student
inner join discipline on studenti_reusita.Id_Disciplina = discipline.Id_Disciplina
where discipline.Nr_ore_plan_disciplina < 60  