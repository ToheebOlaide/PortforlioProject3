
select *
from AlcoholENG
where [Year (note 3)]is not null


select [Year (note 3)], sex, [ICD-10 code], [Individual cause of death description],[Age30-34]
from alcoholeng
where [Year (note 3)]='2021'
and [Year (note 3)]is not null


select [Year (note 3)], sex, [ICD-10 code], [Individual cause of death description],[Age30-34]
from alcoholeng
where [Year (note 3)]='2021'
and sex = 'males'


select [Year (note 3)], sex, [ICD-10 code], [Individual cause of death description],[Age30-34]
from alcoholeng
where [Year (note 3)]='2021'
and sex = 'females'



select [Year (note 3)], sex, [ICD-10 code], [Individual cause of death description],[Age30-34]
from alcoholeng
where [Year (note 3)]='2021'
and sex = 'persons'


select [Year (note 3)], sex, [ICD-10 code], [Individual cause of death description],[Age30-34], [Age35-39]
from alcoholeng
where [Year (note 3)]='2021'
and sex = 'males'

--differences in ages


select [Year (note 3)], sex, [ICD-10 code], [Individual cause of death description],[Age30-34], [Age35-39], ([Age35-39]-[Age30-34]) as agedifference
from alcoholeng
where [Year (note 3)]='2021'
and sex = 'males'




select [Year (note 3)], sex, [ICD-10 code], [Individual cause of death description],[Age30-34], [Age35-39]
from alcoholeng
where --[Year (note 3)]='2021' 
 [Year (note 3)] = '2020'
and sex = 'males'




select *
from AlcoholENG


select *
from AlcoholNTH

select *
from AlcoholSCOT

select *
from AlcoholWALES


select a.[Year (note 3)], a.sex, a.[Individual cause of death description], a.[Age30-34], b.[Year (note 3)], b.[Age35-39]
from AlcoholENG a
join AlcoholENG b
on a.[Year (note 3)] = b.[Year (note 3)]
and a.[Individual cause of death description] = b.[Individual cause of death description]



select a.[Year (note 3)], a.sex, a.[Individual cause of death description], a.[Age30-34], b.[Year (note 3)], b.[Age35-39]
from AlcoholENG a
join AlcoholENG b
on a.[Year (note 3)] = b.[Year (note 3)]
and a.[Individual cause of death description] = b.[Individual cause of death description]
where a.[Year (note 3)] = 2021
--and b.[Year (note 3)] = 2020
order by 1,2



select a.[Year (note 3)], a.sex, a.[Individual cause of death description], a.[Age30-34], b.[Year (note 3)], b.[Age30-34]
from AlcoholENG a
join AlcoholENG b
on a.[Year (note 3)] = b.[Year (note 3)]
and a.sex = b.sex
--where a.[Year (note 3)] = 2021
--and b.[Year (note 3)] = 2020
order by 2

-- comparing ENG and NTH age(30-34) in 2021

select a.[Year (note 3)], a.sex, a.[Individual cause of death description], a.[Age30-34], b.[Year (note 3)], b.[Age30-34]
from AlcoholENG a
join AlcoholNTH b
on a.[Year (note 3)] = b.[Year (note 3)]
and a.sex = b.sex
and b.[Individual cause of death description] = a.[Individual cause of death description]
where a.[Year (note 3)] = 2021
order by 2

--comparing ENG age(30-34) and age(35-39) in 2021

select a.[Year (note 3)], a.sex, a.[Individual cause of death description], a.[Age30-34], b.[Year (note 3)], b.[Age35-39]
from AlcoholENG a
join AlcoholENG b
on a.[Year (note 3)] <> b.[Year (note 3)]
and a.sex = b.sex
and b.[Individual cause of death description] = a.[Individual cause of death description]
where a.[Year (note 3)] = 2021
order by a.[Year (note 3)] desc, b.[Year (note 3)] desc


select a.[Year (note 3)], a.sex, a.[Individual cause of death description], a.[Age30-34], b.[Year (note 3)], b.[Age35-39]
from AlcoholENG a
join AlcoholENG b
on a.[Year (note 3)] = b.[Year (note 3)]
and a.sex = b.sex
and b.[Individual cause of death description] = a.[Individual cause of death description]
where a.[Year (note 3)] = 2021
order by a.[Year (note 3)] desc, b.[Year (note 3)] desc


select a.[Year (note 3)], a.sex, a.[Individual cause of death description], a.[Age30-34], b.[Year (note 3)], b.[Age30-34]
from AlcoholENG a
join AlcoholENG b
on a.[Year (note 3)] = b.[Year (note 3)]
and a.sex = b.sex
and b.[Individual cause of death description] = a.[Individual cause of death description]
where b.[Year (note 3)] = 2021
order by a.[Year (note 3)] desc, b.[Year (note 3)] desc


select a.[Year (note 3)], a.sex, a.[Individual cause of death description], a.[Age30-34], b.[Year (note 3)], b.[Age35-39]
from AlcoholENG a
join AlcoholENG b
on a.[Year (note 3)] = b.[Year (note 3)]
and a.sex = b.sex
and b.[Individual cause of death description] = a.[Individual cause of death description]
--where a.[Year (note 3)] = 2021
order by a.[Year (note 3)] desc, b.[Year (note 3)] desc


--comparing age differences
--IncreasedDifferences in Ages in ENG

select a.[Year (note 3)], a.sex, a.[Individual cause of death description], a.[Age30-34], b.[Year (note 3)], b.[Age35-39]
, (b.[Age35-39]-a.[Age30-34]) as IncreasedDifferences
from AlcoholENG a
join AlcoholENG b
on a.[Year (note 3)] = b.[Year (note 3)]
and a.sex = b.sex
and b.[Individual cause of death description] = a.[Individual cause of death description]
order by a.[Year (note 3)] desc, b.[Year (note 3)] desc

--IncreasedDifferences in Ages in ENG in 2021

select a.[Year (note 3)], a.sex, a.[Individual cause of death description], a.[Age30-34], b.[Year (note 3)], b.[Age35-39]
, (b.[Age35-39]-a.[Age30-34]) as IncreasedDifferences
from AlcoholENG a
join AlcoholENG b
on a.[Year (note 3)] = b.[Year (note 3)]
and a.sex = b.sex
and b.[Individual cause of death description] = a.[Individual cause of death description]
where a.[Year (note 3)] = '2021'
order by a.[Year (note 3)] desc, b.[Year (note 3)] desc

--IncreasedDifferences in Ages in ENG by percentage

select a.[Year (note 3)], a.sex, a.[Individual cause of death description], a.[Age30-34], b.[Year (note 3)], b.[Age35-39]
, (b.[Age35-39]-a.[Age30-34])as IncreasedDifferences, (b.[Age35-39]-a.[Age30-34])*100 as IncreasedDifferencespercent
from AlcoholENG a
join AlcoholENG b
on a.[Year (note 3)] = b.[Year (note 3)]
and a.sex = b.sex
and b.[Individual cause of death description] = a.[Individual cause of death description]
order by a.[Year (note 3)] desc, b.[Year (note 3)] desc

--comparing age differences
--IncreasedDifferences in Ages in ENG n NTH

select a.[Year (note 3)], a.sex, a.[Individual cause of death description], a.[Age30-34], b.[Age30-34] 
from AlcoholENG a
join AlcoholNTH b
on a.[Year (note 3)] = b.[Year (note 3)] 
and a.sex = b.sex 
and a.[Individual cause of death description] = b.[Individual cause of death description]
order by [Year (note 3)]

--AgeDifferences in Ages in ENG n NTH in 2020 with the same age

select a.[Year (note 3)], a.sex, a.[Individual cause of death description], a.[Age30-34], b.[Age30-34] 
from AlcoholENG a
join AlcoholNTH b
on a.[Year (note 3)] = b.[Year (note 3)] 
and a.sex = b.sex 
and a.[Individual cause of death description] = b.[Individual cause of death description]
where a.[Year (note 3)] =2020
order by [Year (note 3)]


--AgeDifferences in Ages in ENG n NTH in 2020 with different age

select a.[Year (note 3)], a.sex, a.[Individual cause of death description], a.[Age30-34], a.[Age35-39], b.[Age30-34], b.[Age35-39]
from AlcoholENG a
join AlcoholNTH b
on a.[Year (note 3)] = b.[Year (note 3)] 
and a.sex = b.sex 
and a.[Individual cause of death description] = b.[Individual cause of death description]
where a.[Year (note 3)] =2020
order by [Year (note 3)]


select a.[Year (note 3)], a.sex, a.[Individual cause of death description], a.[Age30-34], a.[Age35-39], (a.[Age35-39] - a.[Age30-34]) as ENGIncreasedDifferences
, b.[Age30-34], b.[Age35-39], (b.[Age35-39] - b.[Age30-34]) as NTHIncreasedDifferences
from AlcoholENG a
join AlcoholNTH b
on a.[Year (note 3)] = b.[Year (note 3)] 
and a.sex = b.sex 
and a.[Individual cause of death description] = b.[Individual cause of death description]
where a.[Year (note 3)] =2020
order by [Year (note 3)]

 --comparing differences in ENG age 30-34 and 35-39 in percentage

 
select a.[Year (note 3)], a.sex, a.[Individual cause of death description], a.[Age30-34], b.[Year (note 3)], b.[Age35-39]
, (b.[All ages]/b.[Age35-39])*100 as IncreasedDifferences
from AlcoholENG a
join AlcoholENG b
on a.[Year (note 3)] = b.[Year (note 3)]
and a.sex = b.sex
and b.[Individual cause of death description] = a.[Individual cause of death description]
order by a.[Year (note 3)] desc, b.[Year (note 3)] desc

--use below to remove (Divide by zero error encountered.)

SET ARITHABORT OFF;
SET ANSI_WARNINGS OFF;
SELECT 20 / 0;

 
select a.[Year (note 3)], a.sex, a.[Individual cause of death description], a.[Age30-34], b.[Year (note 3)], b.[Age35-39]
, (b.[Age35-39]/b.[All ages])as bAgeDifferences
from AlcoholENG a
join AlcoholENG b
on a.[Year (note 3)] = b.[Year (note 3)]
and a.sex = b.sex
and b.[Individual cause of death description] = a.[Individual cause of death description]
order by a.[Year (note 3)] desc, b.[Year (note 3)] desc

 
select a.[Year (note 3)], a.sex, a.[Individual cause of death description], a.[Age30-34], b.[Year (note 3)], b.[Age35-39]
, (b.[Age35-39]/b.[All ages])*100 as bPercentageAgeDifferences
from AlcoholENG a
join AlcoholENG b
on a.[Year (note 3)] = b.[Year (note 3)]
and a.sex = b.sex
and b.[Individual cause of death description] = a.[Individual cause of death description]
order by a.[Year (note 3)] desc, b.[Year (note 3)] desc


--showing difference in ENG age 30-34 and 35-39


select a.[Year (note 3)], a.sex, a.[Individual cause of death description], a.[Age30-34], b.[Year (note 3)], b.[Age35-39]
, (b.[Age35-39]-a.[Age30-34])as AgeDifferences
, (a.[Age30-34]/a.[All ages])as aAgeDifferences
, (a.[Age30-34]/a.[All ages])*100 as aPercentageAgeDifferences
, (b.[Age35-39]/b.[All ages])as bAgeDifferences
, (b.[Age35-39]/b.[All ages])*100 as bPercentageAgeDifferences
from AlcoholENG a
join AlcoholENG b
on a.[Year (note 3)] = b.[Year (note 3)]
and a.sex = b.sex
and b.[Individual cause of death description] = a.[Individual cause of death description]
order by a.[Year (note 3)] desc, b.[Year (note 3)] desc


select a.[Year (note 3)], a.sex, a.[Individual cause of death description], a.[Age30-34], b.[Age35-39]
, (b.[Age35-39]-a.[Age30-34])as AgeDifferences
, (a.[Age30-34]/a.[All ages])as aAgeDifferences
, (a.[Age30-34]/a.[All ages])*100 as aPercentageAgeDifferences
, (b.[Age35-39]/b.[All ages])as bAgeDifferences
, (b.[Age35-39]/b.[All ages])*100 as bPercentageAgeDifferences
from AlcoholENG a
join AlcoholENG b
on a.[Year (note 3)] = b.[Year (note 3)]
and a.sex = b.sex
and b.[Individual cause of death description] = a.[Individual cause of death description]
order by a.[Year (note 3)] desc

--comparing agedifferences in age in ENG in different year 


select a.[Year (note 3)], a.sex, a.[Individual cause of death description], a.[Age30-34], b.[Year (note 3)], b.[Age30-34]
from AlcoholENG a
join AlcoholENG b
on a.[Year (note 3)] = b.[Year (note 3)]
and a.sex = b.sex
and b.[Individual cause of death description] = a.[Individual cause of death description]
where a.[Year (note 3)] = '2021'
order by a.[Year (note 3)] desc, b.[Year (note 3)] desc


select a.[Year (note 3)], a.sex, a.[Individual cause of death description], a.[Age30-34], b.[Year (note 3)], b.[Age30-34]
from AlcoholENG a
join AlcoholENG b
on a.[Year (note 3)] <> b.[Year (note 3)]
and a.sex = b.sex
and b.[Individual cause of death description] = a.[Individual cause of death description]
where a.[Year (note 3)] = '2021'
and b.[Year (note 3)] = '2020'
order by a.[Year (note 3)] desc, b.[Year (note 3)] desc

--year differences


select a.[Year (note 3)], a.sex, a.[Individual cause of death description], a.[Age30-34], b.[Year (note 3)], b.[Age30-34]
, (a.[Age30-34]-b.[Age30-34])as YearAgeDifferences
from AlcoholENG a
join AlcoholENG b
on a.[Year (note 3)] <> b.[Year (note 3)]
and a.sex = b.sex
and b.[Individual cause of death description] = a.[Individual cause of death description]
where a.[Year (note 3)] = '2021'
and b.[Year (note 3)] = '2020'
order by a.[Year (note 3)] desc, b.[Year (note 3)] desc


--Differences in Ages in ENG n NTH in 2020 with different age Age30-34 and Age35-39

select a.[Year (note 3)], a.sex, a.[Individual cause of death description], a.[Age30-34], a.[Age35-39], b.[Year (note 3)], b.[Age30-34], b.[Age35-39]
from AlcoholENG a
join AlcoholNTH b
on a.[Year (note 3)] = b.[Year (note 3)] 
and a.sex = b.sex 
and a.[Individual cause of death description] = b.[Individual cause of death description]
where a.[Year (note 3)] =2020
order by a.[Year (note 3)], b.[Year (note 3)]


select a.[Year (note 3)], a.sex, a.[Individual cause of death description]
, a.[Age30-34], a.[Age35-39], b.[Year (note 3)], b.[Age30-34], b.[Age35-39]
, (a.[Age35-39]-a.[Age30-34])as ENGDifferences
, (b.[Age35-39]-b.[Age35-39])as NTHDifferences
from AlcoholENG a
full outer join AlcoholNTH b
on a.[Year (note 3)] = b.[Year (note 3)] 
and a.sex = b.sex 
and a.[Individual cause of death description] = b.[Individual cause of death description]
where a.[Year (note 3)] =2020
and b.[Year (note 3)] is not null
order by a.[Year (note 3)], b.[Year (note 3)]


select a.[Year (note 3)], a.sex, a.[Individual cause of death description]
   , a.[Age30-34], a.[Age35-39]
   , (a.[Age35-39]-a.[Age30-34])as ENGDifferences
   , (a.[Age30-34]/a.[All ages])*100 as ENGPercentageDifferences1
   , (a.[Age35-39]/a.[All ages])* 100 as ENGPercentageDifferences2
   , b.[Year (note 3)], b.[Age30-34], b.[Age35-39]
   , (b.[Age35-39]-b.[Age35-39])as NTHDifferences
   , (b.[Age30-34]/b.[All ages])* 100 NTHPercentageDifferences2
   , (b.[Age35-39]/b.[All ages])as NTHPercentageDifferences2
from AlcoholENG a
        join AlcoholNTH b
        on a.[Year (note 3)] = b.[Year (note 3)] 
        and a.sex = b.sex 
        and a.[Individual cause of death description] = b.[Individual cause of death description]
        where a.[Year (note 3)] =2020
        order by a.[Year (note 3)], b.[Year (note 3)]

select a.[Year (note 3)], a.sex, a.[Individual cause of death description]
   , a.[Age30-34], a.[Age35-39]
   , (a.[Age35-39]-a.[Age30-34])as ENGDifferences
   , (a.[Age30-34]/a.[All ages])*100 as ENGPercentageDifferences1
   , (a.[Age35-39]/a.[All ages])* 100 as ENGPercentageDifferences2
   , b.[Year (note 3)], b.[Age30-34], b.[Age35-39]
   , (b.[Age35-39]-b.[Age35-39])as NTHDifferences
   , (b.[Age30-34]/b.[All ages])* 100 NTHPercentageDifferences2
   , (b.[Age35-39]/b.[All ages])as NTHPercentageDifferences2
from AlcoholENG a
        join AlcoholNTH b
        on a.[Year (note 3)] = b.[Year (note 3)] 
        and a.sex = b.sex 
        and a.[Individual cause of death description] = b.[Individual cause of death description]
        order by a.[Year (note 3)], b.[Year (note 3)]
