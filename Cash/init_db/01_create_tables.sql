create table CashFlow (
    reportDate date not null, 
    clientName varchar(50) not null, 
    CCY varchar(10) not null, 
    amountCCY numeric(10) not null
); 

create table CurrencyRates (
    reportDate date not null, 
    CCY varchar(10) not null, 
    currencyRate decimal(10, 3) not null
);