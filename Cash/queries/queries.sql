-- 1
with USD_Clients as (
    select 
        distinct cf.clientName 
    from CashFlow cf
    where CCY = 'USD'
)
select 
    distinct cf.clientName as "client name"
from CashFlow cf
where cf.clientName NOT IN (
    select
        clientName 
    from USD_Clients
)
order by cf.clientName;  

-- 2
select 
    cf.reportDate as "date", 
    cf.CCY as "CCY", 
    cf.amountCCY as "amount", 
    cr.currencyRate as "rate"
from CashFlow cf 
join CurrencyRates cr on cf.reportDate = cr.reportDate AND cf.CCY = cr.CCY
where cf.CCY = 'EUR';

