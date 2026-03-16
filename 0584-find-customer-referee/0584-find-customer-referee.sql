# Write your MySQL query statement below
select a.name from Customer a
left join Customer b 
on a.referee_id  =b.id
where a.referee_id is null or a.referee_id<>2 