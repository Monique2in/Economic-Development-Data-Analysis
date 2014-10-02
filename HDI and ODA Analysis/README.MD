HDI and ODA Analysis
====================

The goal of this project is to compare the relation between Official Development Assistance (ODA) and Human Development Index (HDI).

I have started by writing a script to create a table which includes data on ODA received per capita in 2012 and the HDI for each country that received ODA in 2012. 

Data on ODA was obtained from the World Bank (http://data.worldbank.org/indicator/DT.ODA.ODAT.PC.ZS) and can be found in the file "ODA Data.csv". Data on HDI was obtained from the UN Development Program (http://hdr.undp.org/en/data) and can be found in the file "HDI Data.csv".

Ensure both "ODA Data.csv" and "HDI Data.csv" are in your working directory and
```
source("table-create.R")
```

The output will be a text file named "ODA vs HDI" which contains data for each country receiving ODA in 2012: 
* Country name
* HDI Rank in 2013
* HDI Value in 2013
* ODA recevied per capita in 2012

Note about World Bank ODA Data: The specific indicator accessed is: Net ODA received per capita (current US$). "Net official development assistance (ODA) per capita consists of disbursements of loans made on concessional terms (net of repayments of principal) and grants by official agencies of the members of the Development Assistance Committee (DAC), by multilateral institutions, and by non-DAC countries to promote economic development and welfare in countries and territories in the DAC list of ODA recipients; and is calculated by dividing net ODA received by the midyear population estimate. It includes loans with a grant element of at least 25 percent (calculated at a rate of discount of 10 percent). Development Assistance Committee of the Organisation for Economic Co-operation and Development, Geographical Distribution of Financial Flows to Developing Countries, Development Co-operation Report, and International Development Statistics database. Data are available online at: www.oecd.org/dac/stats/idsonline. World Bank population estimates are used for the denominator."
