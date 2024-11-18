-- REVENUE ANALYSIS; 
-- Total revenue
-- Revenues by date 
-- Revenue change rate
-- Revenues by categories
-- Discount rate distrubition
select od.order_id, od.product_id,product_name, category_name, od.unit_price, od.quantity, od.discount,
round((od.unit_price*od.quantity)*(1-discount)) as final_cost,
order_date as date
from order_details as od 
left join products as p
on od.product_id=p.product_id
left join orders as o
on od.order_id=o.order_id
left join categories as ca
on ca.category_id = p.category_id


-- PRODUCT ANALYSIS
-- Category preferences 
-- Product Preferences
-- Analysis by countries on map 
select od.order_id, od.product_id,product_name,  ship_country, ship_city,
order_date as date
from order_details as od 
left join products as p
on od.product_id=p.product_id
left join orders as o
on od.order_id=o.order_id



-- LOGISTIC ANALYSIS
-- Shipper preferences
-- Average shipment days for shippers
-- Average shipment days for suppliers
select o.order_id, product_name, s.company_name as supplier, sh.company_name as shipper,
shipped_date-order_date as ship_duration_days,
order_date as date
from orders as o 
left join order_details as od
on od.order_id=o.order_id
left join products as p
on od.product_id=p.product_id
left join suppliers as s
on s.supplier_id = p.supplier_id
left join shippers as sh
on sh.shipper_id = o.ship_via



-- STOCK ANALYSIS
-- Top products to be preferred 
-- Stock management for top products to be preferred
with first_15_products as
(
select product_name, sum(quantity) as total_quantity
from order_details as od
left join products as p
on od.product_id = p.product_id
group by 1
order by 2 desc
limit 15
)
select fp.product_name, total_quantity, unit_in_stock, unit_on_order, reorder_level
from first_15_products as fp
left join products as p
on fp.product_name = p.product_name
order by 2 desc




-- EMPLOYEES PERFORMANCE 
with performance as
(
with representative_list as
(
select e.employee_id, CONCAT(first_name,' ', last_name) as representative, count(distinct customer_id) as customer_amount
from orders as o
left join employees as e
on o.employee_id = e.employee_id
group by 1
having e.employee_id not in (2,5)
)
select representative, customer_amount, '1999-01-01'::date-hire_date as working_days
from representative_list as r
left join employees as e
on r.employee_id = e.employee_id
)
select *, round(100*(customer_amount::decimal/working_days),1) as performance_point
from performance
order by 4 desc



-- RFM ANALYSIS FOR CUSTOMERS 
select od.order_id, customer_id,
round((od.unit_price*od.quantity)*(1-discount)) as final_cost,
order_date as date
from order_details as od 
left join products as p
on od.product_id=p.product_id
left join orders as o
on od.order_id=o.order_id

