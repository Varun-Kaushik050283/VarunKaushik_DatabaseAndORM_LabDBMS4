-- DQL Script to display the total number of customers based on gender who have placed individual orders of worth at least Rs.3000

select 
	CO.cus_gender as 'Gender',
    count(CO.cus_gender) as 'NoOfCustomers'
    
from (
	
		select 
			c.cus_id,
			c.cus_name,
			c.cus_gender
		from
			customer c
			inner join `order` o 
			on
			c.cus_id = o.CUS_ID
		where 
			o.ORD_AMOUNT >= 3000
		group by
			c.cus_id
) AS CO
group by
	CO.cus_gender;
	