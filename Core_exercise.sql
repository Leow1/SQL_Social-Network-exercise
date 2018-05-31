# Q1: Find the name of friends of Gabriel

select name
from Highschooler
where ID in
  (select ID2
  from Friend
  where ID1 in
    (select ID
    from Highschooler
    where name = 'Gabriel'))
