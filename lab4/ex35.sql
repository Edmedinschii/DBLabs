select Disciplina,studenti_reusita.Id_Disciplina, avg(cast(studenti_reusita.Nota as float)) as Average 
from studenti_reusita 
join discipline on studenti_reusita.Id_Disciplina = discipline.Id_Disciplina 
group by studenti_reusita.Id_Disciplina, Disciplina 
having avg(cast(studenti_reusita.Nota as float)) > 7.0