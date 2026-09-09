---- DATA_CLEANING_PROJECT_IN_MYSQL ----

#removing duplicates

create table staging_layoffs
like layoffs;

select * from staging_layoffs;

insert into staging_layoffs
select * from layoffs ;

select * from staging_layoffs;

select * ,
row_number() over(partition by company,industry,total_laid_off,percentage_laid_off,`date`,stage,country,funds_raised_millions) 
as row_num
from staging_layoffs;

with cte_duplicate as
(select * ,
row_number() over(partition by company,industry,total_laid_off,percentage_laid_off,`date`,stage,country,funds_raised_millions) 
as row_num
from staging_layoffs)
select * from cte_duplicate where row_num > 1;

select * from staging_layoffs where company = 'Casper';

CREATE TABLE `staging_layoffs2` (
  `company` text,
  `location` text,
  `industry` text,
  `total_laid_off` int DEFAULT NULL,
  `percentage_laid_off` text,
  `date` text,
  `stage` text,
  `country` text,
  `funds_raised_millions` int DEFAULT NULL,
  `row_num` int
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

select * from staging_layoffs2;

insert into staging_layoffs2
select * ,
row_number() over(partition by company,location,industry,total_laid_off,percentage_laid_off,`date`,stage,country,funds_raised_millions) 
as row_num
from staging_layoffs;


DELETE
from staging_layoffs2
where row_num > 1 ;

select *
from staging_layoffs2
where row_num > 1 ;

# standardizing data

select company ,trim(company)
from staging_layoffs2;

update staging_layoffs2
set company = trim(company);

select industry from staging_layoffs2 order by industry;

update staging_layoffs2
set industry = 'Crypto'
where industry like 'crypto currency';

select `date`,
str_to_date(`date` , '%m/%d/%Y') as str_date
from staging_layoffs2;

update staging_layoffs2
set `date` = str_to_date(`date` , '%m/%d/%Y');

select `date` from staging_layoffs2;

alter table staging_layoffs2
modify column `date` DATE ;

-- Blanks values and deleting rows,columns


update staging_layoffs2
set industry = 'unknown'
where industry = null;

delete from staging_layoffs2 
where total_laid_off is null
and percentage_laid_off is null;

select * from staging_layoffs2;

alter table staging_layoffs2
drop column row_num;


select * from layoffs;
select * from staging_layoffs;
