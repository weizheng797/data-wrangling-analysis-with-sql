# ad-hoc SQL queries
with
	# unpivot table marketing_segment
	cte1 as (
		select client_id, 
			case when segment_a_date is null then (
				case when segment_b_date is null then (
					case when segment_c_date is null then null else segment_c_date end) 
				else segment_b_date end) 
			else segment_a_date end as 'Marketing Segment Date'
		from marketing_segment),
	# pivot tables client_role and revenue
	cte2 as (
		select client_id,
			case when sum(client_role='Board Member')>0 then 'Y' else null end as 'Board Member',
			case when sum(client_role='Staff')>0 then 'Y' else null end as 'Staff'
		from client_role group by client_id),
    cte3 as (
		select client_id,
			nullif(sum(case when fiscal_year=2015 then amount else 0 end), 0) as 'Fiscal Year 2015',
			nullif(sum(case when fiscal_year=2016 then amount else 0 end), 0) as 'Fiscal Year 2016',
			nullif(sum(case when fiscal_year=2017 then amount else 0 end), 0) as 'Fiscal Year 2017'
		from revenue group by client_id)
select client.client_id as 'Client ID', client.client_name as 'Client Name', 
	cte2.`Board Member`, cte2.`Staff`, 
    cte3.`Fiscal Year 2015`, cte3.`Fiscal Year 2016`, cte3.`Fiscal Year 2017`,
    cte1.`Marketing Segment Date`
from client left join cte2 on client.client_id = cte2.client_id
left join cte3 on client.client_id = cte3.client_id
left join cte1 on client.client_id = cte1.client_id
where client.client_id <= 1003;



