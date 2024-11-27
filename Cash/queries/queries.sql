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

-- 3
select 
    cf.reportDate as "date", 
    cf.CCY as "CCY", 
    cf.amountCCY as "amount", 
    cr.currencyRate as "rate"
from CashFlow cf 
join CurrencyRates cr on cf.reportDate = cr.reportDate AND cf.CCY = cr.CCY
where cf.CCY = 'EUR' or cf.CCY = 'USD'
order by cf.reportDate, cf.CCY;

-- 4
select 
    cf.reportDate as "date", 
    cf.CCY as "CCY", 
    cf.amountCCY as "amount", 
    case 
        when cf.CCY = 'RUB' then 1 
        else cr.currencyRate 
    end as "rate"
from CashFlow cf 
left join CurrencyRates cr on cf.reportDate = cr.reportDate AND cf.CCY = cr.CCY;

-- 5
with AllFlows as (
    select 
        cf.reportDate, 
        cf.CCY, 
        cf.amountCCY, 
        case 
            when cf.CCY = 'RUB' then 1 
            else cr.currencyRate 
        end as "rate"
    from CashFlow cf 
    left join CurrencyRates cr on cf.reportDate = cr.reportDate AND cf.CCY = cr.CCY
)
select 
    af.reportDate as "date", 
    af.CCY as "CCY", 
    af.amountCCY as "amount", 
    (af.amountCCY * af.rate) as "amountRUB"
from AllFlows af;

-- 6
with EUR as (
    select 
        cr.reportDate, 
        cr.currencyRate
    from CurrencyRates cr
    where cr.CCY = 'EUR'
), 
USD as (
    select 
        cr.reportDate, 
        cr.currencyRate
    from CurrencyRates cr
    where cr.CCY = 'USD'
) 
select 
    EUR.reportDate as "date", 
    'EUR' as "EUR",
    (EUR.currencyRate / USD.currencyRate) as "EUR/USD"
from EUR
join USD on EUR.reportDate = USD.reportDate;

-- 7
select 
    cf.reportDate as "date", 
    cf.CCY as "CCY", 
    SUM(cf.amountCCY) as "SUM"
from CashFlow cf 
group by cf.reportDate, cf.CCY
order by cf.reportDate;

-- 8
with convertedFlows as (
    select 
        cf.reportDate,
        case 
            when cf.CCY = 'RUB' then 'RUB'
            else 'USD'
        end as CCY,
        case 
            when cf.CCY = 'RUB' then cf.amountCCY
            when cf.CCY = 'USD' then cf.amountCCY

            -- перевод евро в доллар 
            when cf.CCY = 'EUR' then cf.amountCCY * (
            select cr.currencyRate 
            from CurrencyRates cr 
            where cr.reportDate = cf.reportDate and cr.CCY = 'EUR'
        ) / (
            select cr.currencyRate 
            from CurrencyRates cr 
            where cr.reportDate = cf.reportDate and cr.CCY = 'USD'
        )
        end as amount
    from CashFlow cf
)
select  
    cf.reportDate as "date", 
    cf.CCY as "CCY", 
    SUM(cf.amount) as "amount"
from convertedFlows cf
group by cf.reportDate, cf.CCY;
    