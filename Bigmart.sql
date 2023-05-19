show databases;
create database Project1;
use Project1;

select * from Big_mart;

# 1) WRITE a sql query to show all Item_Identifier
select Item_identifier from big_mart bm;

# 2) WRITE a sql query to show count of total Item_Identifier
select count(Item_identifier) from big_mart bm;

# 3) WRITE a sql query to show maximum Item Weight
select max(item_weight) from big_mart bm;

# 4) WRITE a query to show minimun Item Weight
select min(item_weight) from big_mart bm;

# 5) WRITE a query to show average Item_Weight
select avg(item_weight) from big_mart bm;

# 6) WRITE a query to show count OF Item_Fat_Content WHERE Item_Fat_Content IS Low Fat
select count(Item_fat_content) from big_mart where Item_Fat_Content = 'Low Fat';

# 7) WRITE a query to show count OF Item_Fat_Content WHERE Item_Fat_Content IS Regular
select count(Item_fat_content) from big_mart where Item_Fat_Content = 'Regular';

# write a query to show item_type start with D and has only 5 character 
select * from big_mart bm where Item_Type like 'D____'

# 8) WRITE a query TO show maximum Item_MRP
select max(Item_mrp) from big_mart;

# 9) WRITE a query TO show minimum Item_MRP
select min(Item_mrp) from big_mart;

# 10) WRITE a query to show Item_Identifier , Item_Fat_Content ,Item_Type,Item_MRP and Item_MRP IS greater than 200
select Item_Identifier,Item_Fat_Content,Item_Type,Item_MRP from big_mart where Item_MRP > 200;

# 11) WRITE a query to show maximum Item_MRP WHERE Item_Fat_Content IS Low Fat
select max(Item_MRP) from big_mart where Item_Fat_Content = 'Low Fat';

# 12) WRITE a query to show minimum Item_MRp AND Item_Fat_Content IS Low Fat
select min(Item_MRP),Item_Fat_Content from big_mart bm where Item_Fat_Content = 'Low Fat';

# 13) WRITE a query to show ALL DATA WHERE item MRP IS BETWEEN 50 TO 100
select *from big_mart where Item_MRP between 50 and 100;

# 14) WRITE a query to show ALL UNIQUE value Item_Fat_Content
select distinct Item_Fat_Content from big_mart bm;

# 15) WRITE a query to show ALL UNIQUE value Item_Type
select distinct Item_Type from Big_mart;

# 16) WRITE a query to show ALL DATA IN descending ORDER BY Item MRP
select * from big_mart order by Item_MRP desc;

# 17) WRITE a query to show ALL DATA IN ascending ORDER BY Item_Outlet_Sales
select * from big_mart order by Item_Outlet_Sales;

# 18) WRITE a query to show ALL DATA IN ascending BY Item_Type
select * from big_mart order by Item_Type;

# 19) WRITE a query to show DATA OF item_type dairy & Meat
select item_type from big_mart where Item_Type in('dairy','Meat');

# 20) WRITE a query to show ALL UNIQUE value OF Outlet_Size
select distinct Outlet_size from big_mart bm;

# 21) WRITE a query to show ALL UNIQUE value OF Outlet_Location_Type
select distinct Outlet_Location_Type from big_mart bm;

# 22) WRITE a query to show ALL UNIQUE value OF Outlet_Type
select distinct Outlet_Type from big_mart bm;

# 23) WRITE a query to show count NO. OF item BY Item_Type AND ordered it IN descending
select count(Item_type) as no_of_item from big_mart 
group by Item_Type 
order by no_of_item desc;

# 24) WRITE a query to show count NO. OF item BY Outlet_Size AND ordered it IN ascending
select Outlet_Size,count(Item_Identifier) as no_of_item from big_mart 
group by Outlet_Size 
order by no_of_item;

# 25) WRITE a query to show count NO. OF item BY Outlet_Establishment_Year AND ordered it IN ascening
select Outlet_Establishment_Year,count(Item_Identifier) no_of_item from big_mart
group by Outlet_Establishment_Year
order by no_of_item;

# 26) WRITE a query to show count NO. OF item BY Outlet_Type AND ordered it IN descending
select Outlet_Type,count(Item_Identifier) no_of_item from big_mart bm 
group by Outlet_Type 
order by no_of_item desc;

# 27) WRITE a query to show count of item BY Outlet_Location_Type AND ordered it IN descending
select Outlet_Location_Type,count(Item_Identifier) no_of_item from big_mart 
group by Outlet_Location_Type
order by no_of_item desc;

# 28) WRITE a query to show maximum MRP BY Item_Type
select item_type,max(Item_mrp) from big_mart
group by Item_Type;

# 29) WRITE a query to show minimum MRP BY Item_Type
select item_type,min(Item_mrp) from big_mart
group by Item_Type;

# 30) WRITE a query to show minimum MRP BY Outlet_Establishment_Year AND ordered it IN descending
select Outlet_Establishment_Year ,min(item_mrp) as min_mrp from big_mart
group by Outlet_Establishment_Year
order by min_mrp desc;

# 31) WRITE a query to show maximum MRP BY Outlet_Establishment_Year AND ordered IN descending
select Outlet_Establishment_Year ,max(item_mrp) as max_mrp from big_mart
group by Outlet_Establishment_Year
order by max_mrp desc;

# 32) WRITE a query to show average MRP BY Outlet_Size AND ordered IN descending
select Outlet_Establishment_Year ,avg(item_mrp) as avg_mrp from big_mart
group by Outlet_Establishment_Year
order by avg_mrp desc;

# 33) WRITE a query to show average MRP BY Outlet_Size
select Outlet_Size,avg(item_mrp) as avg_mrp from big_mart bm 
group by Outlet_Size
order by avg_mrp;

# 34) WRITE a query to show Average MRP BY Outlet_Type AND ordered IN ascending
select Outlet_Type,avg(item_mrp) as avg_mrp from big_mart bm 
group by Outlet_Type
order by avg_mrp;

# 35) WRITE a query to show maximum MRP BY Outlet_Type
select Outlet_Type,max(item_mrp) as avg_mrp from big_mart bm 
group by Outlet_Type
order by avg_mrp;


# 36) WRITE a query to show maximum Item_Weight BY Item_Type 
select item_type, max(item_weight) as max_weight from big_mart
group by Item_Type;

# 37) WRITE a query to show maximum Item_Weight BY Outlet_Establishment_Year
select Outlet_Establishment_Year, max(item_weight) as max_weight from big_mart
group by Outlet_Establishment_Year
order by max_weight;

# 38) WRITE a query to show minimum Item_Weight BY Outlet_Type 
select Outlet_Type, min(item_weight) as min_weight 
from big_mart
group by Outlet_Type
order by min_weight;

# 39) WRITE a query to show average Item_Weight BY Outlet_Location_Type ORDER BY descending
select Outlet_Location_Type, avg(item_weight) as avg_weight 
from big_mart
group by Outlet_Location_Type
order by avg_weight desc;

# 40) WRITE a query to show maximum Item_Outlet_Sales BY Item_Type
select Item_Type, max(Item_Outlet_Sales) as max_sale 
from big_mart
group by Item_Type;

# 41) WRITE a query to show minimum Item_Outlet_Sales BY Item_Type
select Item_Type, min(Item_Outlet_Sales) as min_sale 
from big_mart
group by Item_Type;

# 42) WRITE a query to show minimum Item_Outlet_Sales BY Outlet_Establishment_Year
select Outlet_Establishment_Year,min(Item_Outlet_Sales) as min_sale 
from big_mart
group by Outlet_Establishment_Year
order by min_sale;

# 43) WRITE a query to show maximum Item_Outlet_Sales BY Outlet_Establishment_Year ordered BY descending
select Outlet_Establishment_Year,max(Item_Outlet_Sales) as max_sale 
from big_mart
group by Outlet_Establishment_Year
order by max_sale desc;

# 44) WRITE a query to show average Item_Outlet_Sales BY Outlet_Size AND ORDER it itn descending

select Outlet_Size,avg(Item_Outlet_Sales) as avg_sale 
from big_mart
group by Outlet_Size
order by avg_sale desc;

# 45) WRITE a query to show average Item_Outlet_Sales BY Outlet_Size
select Outlet_Size,avg(Item_Outlet_Sales) as avg_sale 
from big_mart
group by Outlet_Size;

# 46) WRITE a query to show average Item_Outlet_Sales BY Outlet_Type
select Outlet_Type,avg(Item_Outlet_Sales) as avg_sale 
from big_mart
group by Outlet_Type
order by avg_sale;

# 47) WRITE a query to show maximum Item_Outlet_Sales BY Outlet_Type
select Outlet_Type,max(Item_Outlet_Sales) as max_sale 
from big_mart
group by Outlet_Type
order by max_sale;

# 48) WRITE a query TO  show total Item_Outlet_Sales BY Outlet_Establishment_Year
select Outlet_Establishment_Year,sum(Item_Outlet_Sales) as total_sale 
from big_mart
group by Outlet_Establishment_Year
order by total_sale;

# 49) WRITE a query to show total Item_Outlet_Sales BY Item_Type
select Item_type , sum(Item_Outlet_Sales) as total_item
from big_mart bm 
group by Item_Type 
order by total_item;

# 50) WRITE a query TO  show  total Item_Outlet_Sales BY Outlet_Location_Type
select Outlet_Location_Type ,sum(Item_Outlet_Sales) as total_item
from big_mart bm 
group by Outlet_Location_Type 
order by total_item;

# 51) WRITE a query to show total Item_Outlet_Sales BY Item_Fat_Content
select Item_Fat_Content ,sum(Item_Outlet_Sales) as total_item
from big_mart bm 
group by Item_Fat_Content 
order by total_item;

# 52) WRITE a query to show maximum Item_Visibility BY Item_Type
select * from big_mart bm;

select Item_Type ,max(Item_Visibility) as total_item_visibility
from big_mart bm 
group by Item_Type 
order by total_item_visibility;

# 53) WRITE a query to show Minimum Item_Visibility BY Item_Type
select Item_Type ,min(Item_Visibility) as total_item_visibility
from big_mart bm 
group by Item_Type 
order by total_item_visibility;

# 54) WRITE a query to show total Item_Outlet_Sales BY Item_Type but ONLY WHERE Outlet_Location_Type IS Tier 1
select Item_Type ,sum(Item_Outlet_Sales),Outlet_Location_Type as total_item
from big_mart bm where Outlet_Location_Type = 'Tier 1'
group by Item_Type 
order by total_item;

# 55) WRITE a query to show total Item_Outlet_Sales BY Item_Type WHERE Item_Fat_Content IS ONLY Low Fat & LF
select Item_Type ,sum(Item_Outlet_Sales),Item_Fat_Content as total_item
from big_mart bm where Item_Fat_Content in ('Low Fat','LF')
group by Item_Type 
order by total_item;















