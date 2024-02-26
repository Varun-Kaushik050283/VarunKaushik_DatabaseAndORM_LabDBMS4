-- DQL script to  Display all the orders along with product name ordered by a customer having Customer_Id=2

select 
	o.*,
    p.pro_name,
    p.pro_desc
from 
	`order` o
    inner join supplier_pricing sp
    inner join product p on (
		o.pricing_id = sp.pricing_id
        and sp.pro_id = p.pro_id
    )
where
	o.cus_id = 2;