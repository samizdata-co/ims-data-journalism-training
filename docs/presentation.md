---
title: "Analiză și Storytelling de Date"
author: "Nicu Calcea"
format:
  revealjs:
    # theme: [default, css/nicu.scss]
    multiplex: true
    chalkboard: 
      buttons: false
    # header-includes:
    # - "<script defer src='src/bg-change.js'></script>"
filters:
  - filters/newpagelink.lua
#   - quarto
# href: city
---


# [👋]{.wave} Bun venit la training-ul<br>"Analiză și Storytelling de Date"

```{=html}
<style>
  .wave {
  animation-name: wave-animation;  /* Refers to the name of your @keyframes element below */
  animation-duration: 2.5s;        /* Change to speed up or slow down */
  animation-iteration-count: infinite;  /* Never stop waving :) */
  transform-origin: 70% 70%;       /* Pivot around the bottom-left palm */
  display: inline-block;
}

@keyframes wave-animation {
    0% { transform: rotate( 0.0deg) }
   10% { transform: rotate(14.0deg) }  /* The following five values can be played with to make the waving more or less extreme */
   20% { transform: rotate(-8.0deg) }
   30% { transform: rotate(14.0deg) }
   40% { transform: rotate(-4.0deg) }
   50% { transform: rotate(10.0deg) }
   60% { transform: rotate( 0.0deg) }  /* Reset for the last half to pause */
  100% { transform: rotate( 0.0deg) }
}
</style>
```


## Cine sunt eu?

Mă numesc **Nicu Calcea**.

Sunt **jurnalist de investigație în domeniul datelor**.

Am absolvit și predat la **City, University of London**, și am făcut jurnalism de date la ***Global Witness***, ***BBC News*** și ***New Statesman***. În Moldova am fost co-fondator al [Privesc.Eu](https://privesc.eu/) și reporter la [Moldova.org](https://www.moldova.org/).


## Publicațiile mele

- [Exclusive: Tory MPs would be over £1m worse off in six months with Boris Johnson’s second job ban](https://www.newstatesman.com/politics/uk-politics/2021/11/exclusive-tory-mps-would-be-over-1m-worse-off-in-six-months-with-boris-johnsons-second-job-ban)
- [Eight out of ten firms pay men more than women](https://www.bbc.co.uk/news/business-65179430)
- [UK PR firms increased fossil fuels lobbying since Paris Agreement](https://globalwitness.org/en/campaigns/fossil-fuels/uk-pr-firms-increased-fossil-fuels-lobbying-since-paris-agreement/)


## Mai multe informații despre mine

- [nicu.md](https://nicu.md/)
- [SAMIZDATA](https://samizdata.co/ro)
- [mail@nicu.md](mailto:mail@nicu.md)


## Introduceri

- Cum vă numiți?
- De ce ați ales să participați la acest training?
- Ce experiență aveți în jurnalismul de date?


## Program {.smaller}

::: {.incremental}
- 10:00–10:30 — Introduceri și obiective
- 10:30–11:30 — Baze de date guvernamentale și externe
- 11:30–12:30 — Curățarea și structurarea datelor
- 12:30–13:30 — Pauză de prânz
- 13:30–14:30 — Analiza și interpretarea datelor
- 14:30–15:30 — Vizualizarea datelor
- 15:30–16:30 — Exercițiu de grup: redactarea unui scurt articol pe baza datelor reale
- 16:30–17:00 — Întrebări și răspunsuri, resurse suplimentare, discuții
:::


# Ce este jurnalismul de date?

> În definiția sa cea mai simplă, jurnalismul de date este practica de a folosi numere și tendințe pentru a spune o poveste. --- **Betsy Ladyzhets**

::: notes
În engleză, jurnalismul de date este numit data journalism, data-driven journalism, computer-assisted reporting sau CAR (în SUA), precision journalism. Istoria sa este chiar mai veche: prima ediție a ziarului The Guardian (Manchester Guardian) a avut un articol de jurnalism de date. Așadar, nu vă concentrați prea mult pe cum îl numiți.
:::

. . .

> Jurnalismul de date este găsirea -- în date -- a materialelor jurnalistice care sunt de interes pentru public și prezentarea lor în cel mai potrivit mod pentru utilizarea și reutilizarea de către public. --- **Bahareh Heravi**

::: notes
Jurnalismul de date nu înseamnă că trebuie să vă limitați la date: facem tot ce fac și alți reporteri, inclusiv interviuri, solicitări de informații, investigații pe teren, scrierea articolelor, redactare, multimedia (când este relevant), fact-checking, etc.
:::


## De ce avem nevoie de jurnalismul de date? {.title-slide}

## {#why-we-need-ddj data-menu-title="Why we need data journalism" .smaller}

::: columns
::: {.column width="33.33%"}
##### Materiale jurnalistice mai profunde
Tot mai mult din activitatea umană este înregistrată și stocată ca date. Asta înseamnă că există potențial pentru jurnalism de date pentru aproape orice subiect.
:::

::: {.column width="33.33%"}
##### Eficiență
Deseori, munca noastră e repetitivă. Putem simplifica și automatiza monitorizarea, colectarea și analiza informațiilor publice, oferindu-ne mai mult timp pentru a ne concentra pe subiecte mai profunde.
:::

::: {.column width="33.33%"}
##### Precizie
Datele ne ajută să verificăm afirmațiile făcute de politicieni, funcționari, oameni de afaceri, și alții.
:::

::: {.column width="33.33%"}
##### Materiale jurnalistice noi
Jurnaliștii pot crea materiale noi pe baza datelor pe care nu ar putea să le acopere altfel.
:::

::: {.column width="33.33%"}
##### Știri personalizate
Putem crea materiale personalizare pentru cititori pe baza localității în care locuiesc, vârstei sau statutului socio-economic.
:::

::: {.column width="33.33%"}
##### Audiențe noi
Jurnalismul de date poate atrage noi audiențe, inclusiv tineri și persoane care nu citesc ziarele tradiționale.
:::
:::


## {fullscreen=true}
[![](media/source-coding.png)](https://source.opennews.org/articles/how-coding-can-change-very-journalism-we-do/)

::: footer
Sursă: [OpenNews](https://source.opennews.org/articles/how-coding-can-change-very-journalism-we-do/)
:::


## Procesul

::: columns
::: {.column width="33.33%"}
:::  {.fragment}
##### Întrebare
Ca și în cazul jurnalismului tradițional, jurnalismul de date începe cu o întrebare pe care reporterul vrea să o răspundă.
:::
:::

::: {.column width="33.33%"}
:::  {.fragment}
##### Identificarea surselor
Datele pot veni din surse oficiale, de la societatea civilă, alte terțe părți, sau pot fi colectate direct de către reporter.
:::
:::

::: {.column width="33.33%"}
:::  {.fragment}
##### Curățarea și structurarea datelor
În majoritatea cazurilor, reporterul trebuie să filtreze, sorteze și să corecteze erori sau informații lipsă đîn setul de date.
:::
:::
:::

## Procesul

::: columns
::: {.column width="33.33%"}
##### Analiza datelor
Cum găsești răspunsul la întrebarea ta în date?
:::

::: {.column width="33.33%"}
:::  {.fragment}
##### Verificarea datelor
Datele nu mint, însă cei care le publică o fac. Au concluziile analizei tale sens? Le poți verifica din alte surse?
:::
:::

::: {.column width="33.33%"}
:::  {.fragment}
##### Prezentare
Analiza poate fi comunicată publicului în mai multe moduri. Uneori, dar nu întotdeauna, jurnaliștii de date vor vizualiza rezultatele analizei.
:::
:::
:::

::: notes
Analyse data: be platform agnostic. Some tools die because APIs change, others are abandoned by their developers, some are replaced by better alternatives.
:::

##

[![](https://onlinejournalismblog.com/wp-content/uploads/2011/07/inverted-pyramid-of-journalism.jpg)](https://onlinejournalismblog.com/2011/07/07/the-inverted-pyramid-of-data-journalism/)

::: footer
Sursă: [Paul Bradshaw](https://onlinejournalismblog.com/2011/07/07/the-inverted-pyramid-of-data-journalism/)
:::

## 

[![](media/bradshaw-lifecycle.jpg)](https://twitter.com/paulbradshaw/status/1445015559742050312)

::: footer
Sursă: [Paul Bradshaw](https://twitter.com/paulbradshaw/status/1445015559742050312)
:::


# Baze de date guvernamentale și externe {fullscreen=true}

<iframe class="stretch" data-src="https://samizdata.co/"></iframe>
::: footer
Soursă: [SAMIZDATA](https://samizdata.co/)
:::

## Instrumente AI pentru simplificarea cercetării bazelor de date

- [ ] Showcase AI skills


## Execițiu: prenume de copii

Care este cel mai popular prenume pentru bebelușii din Moldova?

https://dataset.gov.md/ro/dataset?q=prenume+copii&sort=views_recent+desc

- [ ] Show how to do this with AI, maybe with the datawrapper MCP












## Baby names

1. Make a copy of [this spreadsheet](https://docs.google.com/spreadsheets/d/1GatzEY5cl3JmdVOpJKsF9ME-SSHNNi8dVfqm54ZONYA/copy) and pick one tab to work in. Data from [the ONS](https://www.ons.gov.uk/peoplepopulationandcommunity/birthsdeathsandmarriages/livebirths/datasets/babynamesinenglandandwalesfrom1996).
2. The [ yellow cells ]{style="background:#e3b341;color:black;"} indicate where you need to fill in formulas.
3. What are some other potential stories that you can think of? Are there more babies named after the royals? What about Game of Thrones characters? What are the most popular gender-neutral names? Long-term trends?

::: notes
Show the original dataset first

Some datasets (like the ONS one) come with a data dictionary.

For Nicu: choose boys or girls based on if there are more women or men in the group
:::


##  {#basic-excel-formulas data-menu-title="Basic Excel Formulas"}

::: columns
::: {.column width="33.33%"}
##### [=A1+A2]
Returns one number added (+) or subtracting (*) another.
:::

::: {.column width="33.33%"}
##### [=A1/B$1]
Returns one number divided (/) or multiplied (*) by another.
:::

::: {.column width="33.33%"}
##### [=SUM()]
Returns the sum of a series of numbers and/or cells.
:::

::: {.column width="33.33%"}
##### [=AVERAGE()]
Returns the numerical average value in a dataset, ignoring text.
:::

::: {.column width="33.33%"}
##### [=MEDIAN()]
Returns the median value in a numeric dataset.
:::

::: {.column width="33.33%"}
##### [=(NEW-OLD)/OLD]
Shows percentage change.
:::
:::


## Averages {.smaller}

::: columns
::: {.column width="50%"}
![](media/mean-median.svg){height="600"}
:::

::: {.column width="50%"}
### =MODE()

Finds the most common value in a range.

&nbsp;
&nbsp;

### =MEDIAN()

Finds the value that's right in the middle of a dataset.

&nbsp;
&nbsp;

### =AVERAGE()

Sum all the values and divide by the number of records.

:::
:::


## How did the Mail do it?

::: columns
::: {.column width="50%"}
:::  {.fragment}
##### 2018
![](media/daily-mail-1.png)
:::
:::

::: {.column width="50%"}
:::  {.fragment}
##### 2019
![](media/daily-mail-2.png)
:::
:::
:::


## Assignments {.smaller}

::: columns
::: {.column width="50%"}
##### Critique a data journalism project
- A 20-25 minute long narrated group PowerPoint presentation critiquing a data project that won or was shortlisted for the Sigma Awards.
- 500-word group reflection, with appropriate references.
- A 200-word reflection on your own learning.

**Deadline**: Friday, 13 December, 16:00
**Marking**: 40% of your final mark
:::

::: {.column width="50%"}
##### Data journalism portfolio
- One news story (400 words).
- One EITHER feature story OR news investigation (800 words) substantially based on data techniques; and published digitally with appropriate visualisations.
- A 200 word reflective blog-post style log on you own learning journey.

**Deadline**: Friday, 24 January, 16:00
**Marking**: 60% of your final mark
:::
:::

::: notes
No plagiarism, careful with AI.
:::


## Contact

- [Ion.Calcea.2@city.ac.uk](mailto:ion.calcea.2@city.ac.uk)
- [James.Morris@city.ac.uk](mailto:James.Morris@city.ac.uk)


# Week 2

Introduction to **Data Journalism**<br>
[https://ddj.nicu.md/city/](https://ddj.nicu.md/city/)

## Sourcing data {.smaller}

#### Open Data

::: columns
::: {.column width="50%"}
- UK
  - [ONS](https://www.ons.gov.uk/)
  - [GOV.UK](https://www.gov.uk/search/research-and-statistics)
  - [Nomis (labour stats)](https://www.nomisweb.co.uk/)
  - [NHS Digital](https://digital.nhs.uk/search?sort=date&area=data&searchTab=data&contentSearch=false)
  - [Covid dashboard](https://coronavirus.data.gov.uk/)

:::

::: {.column width="50%"}
- Other nations
  - [US gov](https://www.data.gov/)
  - [Eurostat](https://ec.europa.eu/eurostat/web/main/home)
- International
  - [World Bank](https://data.worldbank.org/)
  - [United Nations](http://data.un.org/)
  - [OECD](https://data.oecd.org/)
  - [Our World in Data](https://ourworldindata.org/)

:::
:::

::: footer
More sources: [ddj.nicu.md](https://ddj.nicu.md/sources/)
:::


## Plan ahead

<iframe class="stretch" data-src="https://ddj.nicu.md/sources/calendar.html"></iframe>
::: footer
Source: [ddj.nicu.md](https://ddj.nicu.md/sources/calendar.html)
:::

## Closed data

![](media/closed-data.png)

## FOIs

![](media/foi.png)

::: notes
WhatDoTheyKnow

Be as specific as possible or you might get the “too much work” excuse, specify the format or you'll get a PDF

Likelihood they'll refuse (they refused my locations of CCTV cameras locations on national security grounds)

If you want to use FOIs, do it as soon as possible.
:::

## Scraping

![](media/scraping.png)

::: notes
Scraping (week 9)

pre-scraped data like Inside Airbnb

Parsehub, browser extensions, R/Python/Node

We'll maybe talk about AI? as well?
:::


## Census exercise

1. Make a copy of [this spreadsheet](ttps://docs.google.com/spreadsheets/d/1wbCYpp-5-2nZCaTdMcnNWSYtsUabQ0MDG_l4FGrZDwg/copy) (here's [the original data](https://www.ons.gov.uk/peoplepopulationandcommunity/populationandmigration/populationestimates/datasets/populationandhouseholdestimatesenglandandwalescensus2021)).
2. Before you do anything else, what are some questions you would like to answer?
3. Free first row, filter the table to the region you're from (or London)
4. Fill in the columns at the end
5. What are some other potential stories that you can think of?

::: notes
1) Concatenate title =CONCATENATE(A2,", ",B2, " (", C2,")")
2) Conditional formatting on success column
:::

##  {#basic-excel-formulas-1-recap data-menu-title="Basic Excel Formulas Recap"}

::: columns
::: {.column width="33.33%"}
##### [=A1+A2]
Returns one number added (+) or subtracting (*) another.
:::

::: {.column width="33.33%"}
##### [=A1/B$1]
Returns one number divided (/) or multiplied (*) by another.
:::

::: {.column width="33.33%"}
##### [=SUM()]
Returns the sum of a series of numbers and/or cells.
:::

::: {.column width="33.33%"}
##### [=AVERAGE()]
Returns the numerical average value in a dataset, ignoring text.
:::

::: {.column width="33.33%"}
##### [=MEDIAN()]
Returns the median value in a numeric dataset.
:::

::: {.column width="33.33%"}
##### [=(NEW-OLD)/OLD]
Shows percentage change.
:::
:::


##  {#basic-excel-formulas-2 data-menu-title="Basic Excel Formulas 2"}

::: columns
::: {.column width="33.33%"}
##### [=IF()]
Returns one value if the result is true, another if it's false.
:::

::: {.column width="33.33%"}
##### [=COUNTIF()]
Count all the cells that match a condition.
:::

::: {.column width="33.33%"}
##### [=SUMIF()]
Sum all the cells that match a condition.
:::

::: {.column width="33.33%"}
##### [=CONCATENATE()]
Combine multiple bits of text together.
Use =SPLIT() for the opposite.
:::

::: {.column width="33.33%"}
##### [=VLOOKUP()]
Match the values in a cell with the corresponding row in another dataset.
:::

::: {.column width="33.33%"}
##### [=XLOOKUP()]
Same as =XLOOKUP() but more flexible and easier to grasp.
:::
:::

## Contact

- [Ion.Calcea.2@city.ac.uk](mailto:ion.calcea.2@city.ac.uk)
- [James.Morris@city.ac.uk](mailto:James.Morris@city.ac.uk)


# Week 3

Introduction to **Data Journalis**<br>
<a href='https://ddj.nicu.md/city/'>https://ddj.nicu.md/city/</a>


## Toolbox

<iframe class="stretch" data-src="https://ddj.nicu.md/toolbox/"></iframe>
::: footer
Source: [ddj.nicu.md](https://ddj.nicu.md/toolbox/)
:::


## XLOOKUP

``` scala
=XLOOKUP(search_term, col_to_search, col_to_return)
```

![](media/xlookup.png)


## XLOOKUP exercise

1. Make a copy of [this spreadsheet](https://docs.google.com/spreadsheets/d/1FwMl1kJGsIqKe0K0L0V-zIPh_uk9C3fqDka6A5G1CBY/copy).
2. Fill in the empty columns with formulas we learned last time.


## Pivot Tables {.smaller}

Pivot tables are extra tables in your spreadsheet, in which you can summarise data from your original table.

You can calculate averages, counts, max/min values or sums for numbers in a group.

![](media/pivot-recipe.png)


## Pivot table exercise

1. Make a copy of [this spreadsheet](https://docs.google.com/spreadsheets/d/1-Jk4Zo5pTgGwXIeBEgzxn00IBjrxlxbmuf-ICW-4Am8/copy).
2. <iframe src="https://giphy.com/embed/oCjCwnuLpiWbfMb1UA" width="480" height="270" frameBorder="0" class="giphy-embed" allowFullScreen></iframe>

Bonus points: Grab a CSV from [police.uk](https://data.police.uk/data/) and do it yourself.


## Averages {.smaller}

::: columns
::: {.column width="50%"}
![](media/mean-median.svg){height="600"}
:::

::: {.column width="50%"}
### =MODE()

Finds the most common value in a range.

&nbsp;
&nbsp;

### =MEDIAN()

Finds the value that's right in the middle of a dataset.

&nbsp;
&nbsp;

### =AVERAGE()

Sum all the values and divide by the number of records.

:::
:::


## Contact

- [Ion.Calcea.2@city.ac.uk](mailto:ion.calcea.2@city.ac.uk)
- [James.Morris@city.ac.uk](mailto:James.Morris@city.ac.uk)



# Week 4

Introduction to **Data Journalis**<br>
<a href='https://ddj.nicu.md/city/'>https://ddj.nicu.md/city/</a>

## Make your spreadsheets fact-checkable {.smaller}

It's all about:

::: columns
::: {.column width="50%"}
Documentation

- keep the reference to the source data unaltered
- if needed add a data dictionary or write down what you did
- use sensible names for your columns (not "weight") and sheets (not "Sheet1")
- one question = one sheet
:::

::: {.column width="50%"}
Reproducibility

- do analysis on a new sheet, never on the original data
- use range or sheet protection
- back up often
:::
:::

::: notes
https://docs.google.com/presentation/d/1VpLdSJDvVAdtPOaMuwsw3aRY0vEv3NWJZbe2SdYKJrU/edit
:::

## Data prep

<iframe class="stretch" data-src="https://academy.datawrapper.de/article/240-how-to-prepare-your-data-for-datawrapper-in-excel-or-google-sheets"></iframe>

::: footer
Source: [Datawrapper](https://academy.datawrapper.de/article/240-how-to-prepare-your-data-for-datawrapper-in-excel-or-google-sheets)
:::

## {#dirty-data data-menu-title="Dirty Data" .smaller}

::: columns
::: {.column width="33.33%"}
##### Missing data
Sometimes, records disappear or were never collected. It may not always be the obvious when that is the case.
:::

::: {.column width="33.33%"}
##### Duplicated data
Records can be repeated, either due to technical mishaps or due to repeated input.
:::

::: {.column width="33.33%"}
##### Misspellings
Humans make mistakes. Assume any dataset manually created by humans to have missspelings.
:::

::: {.column width="33.33%"}
<br>

##### Poor formatting
Some spreadsheets are designed to be read by humans, not computers. We then need to teach software to read it correctly.
:::

::: {.column width="33.33%"}
<br>

##### Parsing errors
Wrong Excel formula? Üṅṛëċöġṅïṡëḋ characters? Old Excel version? These can all mess with your data.
:::

::: {.column width="33.33%"}
<br>

##### Inconsistent data
A column can have different unites, spell categories differently or record different methodologies.
:::
:::

## The guide to bad data

![](media/guide-bad-data.png)

::: footer
Source: [Quartz](https://github.com/Quartz/bad-data-guide)
:::


## {#inflation-screenshot data-menu-title="ONS inflation data" .smaller}

![](media/inflation-ons-screenshot.png)

::: footer
Source: [ONS](https://www.ons.gov.uk/economy/inflationandpriceindices/datasets/consumerpriceinflation)
:::


## Baby names exercise

1. Download the file with baby names in England and Wales for [girls](https://www.ons.gov.uk/file?uri=/peoplepopulationandcommunity/birthsdeathsandmarriages/livebirths/datasets/babynamesenglandandwalesbabynamesstatisticsboys/2021/2021boysnamesupdated1.xlsx) or [boys](https://www.ons.gov.uk/file?uri=/peoplepopulationandcommunity/birthsdeathsandmarriages/livebirths/datasets/babynamesenglandandwalesbabynamesstatisticsgirls/2021/2021girlsnames.xlsx).
2. Upload the spreadsheet to Google Drive and open it in Google Sheets.
3. Find and clean Table 1.
4. Read about [Shart](https://www.thecourier.co.uk/fp/courier-investigations/3168365/baby-name-rules-scotland/).

::: notes
https://www.ons.gov.uk/peoplepopulationandcommunity/birthsdeathsandmarriages/livebirths/bulletins/babynamesenglandandwales/2021/relateddata
:::


## OpenRefine

![](media/open-refine-guardian.png)

::: footer
Source: [The Guardian](https://www.theguardian.com/politics/2021/oct/25/tories-received-13m-from-fossil-fuel-interests-and-climate-sceptics-since-2019)
:::

## Download OpenRefine

<iframe class="stretch" data-src="https://openrefine.org/"></iframe>

::: footer
Source: [OpenRefine](https://openrefine.org/)
:::

::: notes
https://search.electoralcommission.org.uk/
:::

## Food hygiene data

<iframe class="stretch" data-src="https://ratings.food.gov.uk/open-data"></iframe>

::: footer
Source: [Food Standards Agency](https://ratings.food.gov.uk/open-data)
:::

## Food hygiene exercise {.smaller}

- Make a copy of the [food hygiene ratings data](https://docs.google.com/spreadsheets/d/1eNZZlAL3pYEd31Ge56qdkc3tko42fAGvEv8VARdwCr8/copy).
- Answer these questions:
    1. What kind of establishments are the best rated in Islington?
    2. What establishment with a rating of 0-1 is due a follow-up visit?
    3. How many establishments received a 5-star rating this month?
    4. What is the cleanest hotspots (highest average hygiene with 10+ ratings)?
    5. Any other interesting angles?

::: notes
N7 6NJ. Use Google Sheets filter instead of pivot for 10+ ratings
:::

## Group assignment {.smaller}

You will be split into teams of (tbd) to create a narrated PowerPoint presentation critiquing a data project featured in the [Sigma Awards](https://sigmaawards.org/). You can choose a winner or a [short-listed project](https://github.com/Sigma-Awards/shortlist-2024/blob/main/The%20Sigma%20Awards%202024-Shortlist.csv).

&nbsp;
&nbsp;

Deadline: **Friday, 13 December, 16:00**

&nbsp;
&nbsp;

Deliverables

- A 20-25 minute long [narrated PowerPoint presentation](https://support.microsoft.com/en-us/office/record-audio-narration-for-your-powerpoint-presentation-232d5fec-fc90-4abb-9332-c469d336d947).
- A 500-word group reflection, with appropriate references (Harvard and I suggest using Zotero as citation manager).
- Fill in [this spreadsheet](https://docs.google.com/spreadsheets/d/1sqBUIQ1defxAQ-uGQAdFW6SUztwWCk_676Ynuj0HG80/edit?usp=sharing) with your name and the project you're working on.



## Contact

- [Ion.Calcea.2@city.ac.uk](mailto:ion.calcea.2@city.ac.uk)
- [James.Morris@city.ac.uk](mailto:James.Morris@city.ac.uk)






# Week 5

**Data Stories**<br>
<a href='https://ddj.nicu.md/city/'>https://ddj.nicu.md/city/</a>


## Why do we visualise data? {background-color="#e9e9e9"}

Summarising data, like we did in previous lessons, is not always enough to reveal pattern or trends.

Visualising it can provide insight we'd otherwise lose out on.

![](https://blog.revolutionanalytics.com/downloads/DataSaurus%20Dozen.gif){.absolute width="700"}


## What can we visualise? {.smaller background-color="white"}

Position ![](https://datavizproject.com/wp-content/uploads/types/Scatter-Plot.png){.absolute top=100 right=50 width="500" height="500"}

::: {.fragment}
Size

&nbsp;&nbsp;&nbsp;&nbsp;Width ![](https://datavizproject.com/wp-content/uploads/types/Bar-Chart-Horizontal-600x600.png){.absolute top=100 right=50 width="500" height="500"}
:::

::: {.fragment}
&nbsp;&nbsp;&nbsp;&nbsp;Height ![](https://datavizproject.com/wp-content/uploads/types/Bar-Chart-Vertical-600x600.png){.absolute top=100 right=50 width="500" height="500"}
:::

::: {.fragment}
&nbsp;&nbsp;&nbsp;&nbsp;Area ![](https://datavizproject.com/wp-content/uploads/types/Stacked-Area-Chart-600x600.png){.absolute top=100 right=50 width="500" height="500"}
:::

::: {.fragment}
Colour

&nbsp;&nbsp;&nbsp;&nbsp;Fill ![](https://datavizproject.com/wp-content/uploads/types/Pictorial-Stacked-Chart-600x600.png){.absolute top=100 right=50 width="500" height="500"}
:::

::: {.fragment}
&nbsp;&nbsp;&nbsp;&nbsp;Colour ![](https://datavizproject.com/wp-content/uploads/types/Cluster-Analysis-600x600.png){.absolute top=100 right=50 width="500" height="500"}
:::

::: {.fragment}
&nbsp;&nbsp;&nbsp;&nbsp;Opacity

&nbsp;&nbsp;&nbsp;&nbsp;Pattern

Shape ![](https://datavizproject.com/wp-content/uploads/types/Matrix-Diagram--600x600.png){.absolute top=100 right=50 width="500" height="500"}
:::

::: {.fragment}
Location ![](https://datavizproject.com/wp-content/uploads/types/Choropleth-Map-600x600.png){.absolute top=100 right=50 width="500" height="500"}
:::

## People suck at sizes {background-color="white"}
<iframe width="100%" height="600" frameborder="0" src="https://observablehq.com/embed/@mizinov/area-comparison?cell=*"></iframe>


## What visual encoding can you find in this chart? {background-color="#fff1e0"}

![](media/ft/scatter-5.gif){.absolute height="500"}

## The FT's scatter plot {background-color="#fff1e0"}

::: {.fragment .fade-in-then-out}
Standard scatter plot ![](media/ft/scatter-1.avif){.absolute top=100 right=20 height="450"}
:::

::: {.fragment .fade-in-then-out}
Change scale to log ![](media/ft/scatter-2.avif){.absolute top=100 right=20 height="450"}
:::

::: {.fragment .fade-in-then-out}
Size by population ![](media/ft/scatter-3.avif){.absolute top=100 right=20 height="450"}
:::

::: {.fragment .fade-in-then-out}
Colour by continent ![](media/ft/scatter-4.avif){.absolute top=100 right=20 height="450"}
:::

::: {.fragment}
Animate over time ![](media/ft/scatter-5.gif){.absolute top=100 right=20 height="450"}
:::

::: notes
https://www.ft.com/content/e2eba288-ef83-11e6-930f-061b01e23655
:::

## FT Vocabulary {background-color="#ffffff"}

![](https://raw.githubusercontent.com/Financial-Times/chart-doctor/main/visual-vocabulary/poster.png){.absolute top=0 left=0 height="800"}

::: footer
Source: [FT](https://github.com/Financial-Times/chart-doctor/tree/main/visual-vocabulary)
:::

## Many types of charts

- [FT Vocabulary](https://github.com/Financial-Times/chart-doctor/tree/main/visual-vocabulary)
- [Data Viz Project](https://datavizproject.com/)
- [Data to Viz](https://www.data-to-viz.com/)
- [Data Visualisation Catalogue](https://datavizcatalogue.com/)

## Gapminder
<style>.embed-container { position: relative; padding-bottom: 56.25%; height: 0; overflow: hidden; max-width: 100%; } .embed-container iframe, .embed-container object, .embed-container embed { position: absolute; top: 0; left: 0; width: 100%; height: 100%; }</style><div class='embed-container'><iframe src='https://www.youtube.com/embed/hVimVzgtD6w' frameborder='0' allowfullscreen></iframe></div>

## Gapminder exercise {.smaller}

1. Download the "Life expectancy" and "Fertiliy rate" (and "Population" if you want) datasets from [Gapminder](https://www.gapminder.org/data/).
2. Use `XLOOKUP` to join the datasets.
3. Reproduce Hans Rosling's chart in Google Sheets.

## Gapminder exercise
<style>.embed-container { position: relative; padding-bottom: 56.25%; height: 0; overflow: hidden; max-width: 100%; } .embed-container iframe, .embed-container object, .embed-container embed { position: absolute; top: 0; left: 0; width: 100%; height: 100%; }</style><div class='embed-container'><iframe src='https://www.gapminder.org/tools/' frameborder='0' allowfullscreen></iframe></div>


## Police crime exercise

1. Download the [Police recorded crime open data Police Force Area tables, year ending March 2013 onwards](https://www.gov.uk/government/statistics/police-recorded-crime-open-data-tables) table.
2. Working in groups of two, think of stories to tell based on this data.
3. Write a couple headlines based on your analysis.
4. Choose a headline and make a chart.

## Contact

- [Ion.Calcea.2@city.ac.uk](mailto:ion.calcea.2@city.ac.uk)
- [James.Morris@city.ac.uk](mailto:James.Morris@city.ac.uk)

::: notes
Please make Flourish and Datawrapper accounts
:::


# Week 6

Data [Visualisation]<br>
<a href='https://ddj.nicu.md/city/'>https://ddj.nicu.md/city/</a>

## Dataviz Toolbox

<iframe class="stretch" data-src="https://ddj.nicu.md/toolbox/#visualisation"></iframe>
::: footer
Source: [ddj.nicu.md](https://ddj.nicu.md/toolbox/#visualisation)
:::


## Bar/column charts { background-color="white"}

::: columns
::: {.column width="60%"}
![](https://datavizproject.com/wp-content/uploads/types/Bar-Chart-Vertical.png)
:::

::: {.column width="40%"}
Horizontal or vertical rectangles with lengths proportional to the values that they represent.
<br><br>
Good for comparing across different values or showing a trend over time.
:::
:::

## Line chart { background-color="white"}

::: columns
::: {.column width="60%"}
![](https://datavizproject.com/wp-content/uploads/types/Line-Graph.png)
:::

::: {.column width="40%"}
Shows values on a continuous scale. Similar to a scatter plot, except all dots are connected.
<br><br>
Good for showing trends over time.
:::
:::


## Area chart { background-color="white"}

::: columns
::: {.column width="60%"}
![](https://datavizproject.com/wp-content/uploads/types/Stacked-Area-Chart.png)
:::

::: {.column width="40%"}
Similar to a line chart but the area underneath the line is coloured in. When stacked, it can show multiple data series as well as their cumulative trend.
<br><br>
Good for showing trends over time.
:::
:::

## Scatter plot { background-color="white"}

::: columns
::: {.column width="60%"}
![](https://datavizproject.com/wp-content/uploads/types/Scatter-Plot.png)
:::

::: {.column width="40%"}
Plots a dataset across two continuous dimensions, each on a different axis (X and Y).
<br><br>
Good for showing correlation between different data series.
:::
:::

## Map { background-color="white"}

::: columns
::: {.column width="60%"}
![](https://datavizproject.com/wp-content/uploads/types/Choropleth-Map.png)
:::

::: {.column width="40%"}
Only works with geographical data (duh!).
<br><br>
Even with geographical data, other charts can often be a better choice.
:::
:::


## Anatomy of a chart {background-color="white"}

![](https://c.files.bbci.co.uk/13899/production/_128352008_optimised-debt-ceiling-nc.png)

::: notes
- Title
- Subtitle / description
- Series
- Labels
- Gridlines
- x-axix
- y-axis
- Legend/key
- Source
:::

## Colour scales {background-color="white"}

![](https://blog.datawrapper.de/wp-content/uploads/2021/03/200801_colorscale-intro-f-1.png)

::: notes
Sequential: Colours (of the same hue) that go from light to dark or the other way around. Usually, darker means higher value.

Diverging: Similar to sequential, but they have a light middle colour that turns darker on both ends of the scale. Useful when you have both positive and negative values.

Categorical: For values that aren't on a numeric scale or don't have an intrinsic order. Useful when none of the colours are more important than others.
:::


## Colour Toolbox

<iframe class="stretch" data-src="https://ddj.nicu.md/toolbox/#colours"></iframe>
::: footer
Source: [ddj.nicu.md](https://ddj.nicu.md/toolbox/#colours)
:::


## Dataviz Fonts {background-color="white"}

<iframe class="stretch" data-src="https://blog.datawrapper.de/fonts-for-data-visualization/"></iframe>
::: footer
Source: [Datawrapper](https://blog.datawrapper.de/fonts-for-data-visualization/)
:::

## Bad charts: Daily Mail
![](media/bad-charts/daily-fail-2.jpg)

::: footer
Source: [Daily Mail](https://www.dailymail.co.uk/news/article-8028565/EU-leaders-argue-early-hours-bruising-budget-talks.html)
:::

## Bad charts: The Sun
![](media/bad-charts/the-s-n.webp)

::: footer
Source: The Sun
:::

## Bad charts: Reuters
![](media/bad-charts/gun-deaths.webp){.absolute top=90 left=0 height="500"}

::: fragment
![](media/bad-charts/gun-deaths-2.webp){.absolute top=90 left=0 height="456"}
:::

::: footer
Source: Reuters
:::

## Bad charts: CBS News
![](media/bad-charts/cbsn.jpg)

::: footer
Source: CBS News
:::

## WTF Visualizations

<iframe class="stretch" data-src="https://viz.wtf/"></iframe>
::: footer
Source: [WTF Visualizations](https://viz.wtf/)
:::

## Cities exercise

1. Create a new chart in Datawrapper.
2. Select the **Rural and urban dataset**.
3. Make a **stacked bar chart**.


## Gapminder exercise

1. Download the [Gapminder data](https://github.com/kirenz/datasets/blob/master/gapminder.csv).
2. Copy the data into Datawrapper.
3. Create a scatter plot.
4. Customise axis labels, colours, size, tooltips, title, description and source.
5. Add annotations.
6. Publish or download the chart.

## Flourish example (on your own) {background-color="white"}

1. Copy [this spreadsheet](https://docs.google.com/spreadsheets/d/1wf3qDM9Ew8lDeDpTHNz22S83ri8rDspnRycDG9m657Q/copy).
2. Copy the data into Flourish.
3. Create a bar chart race.
4. Customise axis labels, colours, size, title, description and source.
5. Add annotations (optionally).
6. Publish or download the chart.

## Flourish example (on your own)

<div class="flourish-embed flourish-bar-chart-race" data-src="visualisation/11775147"><script src="https://public.flourish.studio/resources/embed.js"></script></div>

::: footer
Source: [Reddit](https://www.reddit.com/r/dataisbeautiful/comments/d9mirb/oc_how_uber_took_over_new_york_city/)
:::

## Contact

- [Ion.Calcea.2@city.ac.uk](mailto:ion.calcea.2@city.ac.uk)
- [James.Morris@city.ac.uk](mailto:James.Morris@city.ac.uk)

# Week 7

**Maps**<br>
<a href='https://ddj.nicu.md/city/'>https://ddj.nicu.md/city/</a>

## Choropleth {background-color="white"}

::: columns
::: {.column width="60%"}
![](https://datavizproject.com/wp-content/uploads/types/Choropleth-Map.png)
:::

::: {.column width="40%"}
Pre-defined areas such as countries, regions or districts are coloured (either sequential, diverging or categorical) in proportion to values in a dataset.
:::
:::

## Bubble/symbol map {background-color="white"}

::: columns
::: {.column width="60%"}
![](https://datavizproject.com/wp-content/uploads/types/Bubble-Map.png)
:::

::: {.column width="40%"}
Circles are drawn on top of a map, with their size or colour proportional to values in a dataset.
:::
:::

## Cartogram / hex map {background-color="white"}

::: columns
::: {.column width="60%"}
![](https://datavizproject.com/wp-content/uploads/types/Cartogram.png)
:::

::: {.column width="40%"}
Cartograms resize regions in proportion to a variable in your dataset, such as population.
<br><br>
Hex maps standardise administrative units into same-sizes hexagons, squares or triangles.
:::
:::


## The 2019 general election {background-color="white"}

![](https://geographical.co.uk/wp-content/uploads/UK-general-election-2019.jpeg)


## Not always the right choice

::: columns
::: {.column width="50%"}
![](https://imgs.xkcd.com/comics/heatmap_2x.png)
:::

::: {.column width="50%"}
Try to only use maps when there's a geographical pattern to your data.
<br><br>
Don't make a map if it's going to basically be a population map.
:::
:::

::: footer
Source: [xkcd](https://xkcd.com/1138/)
:::

## What data you'll need {.smaller background-color="#f9f9f9"}

::: columns
::: {.column width="50%"}
![](media/geo-data-1.png)

#### Geographical data

This can be polygons (areas), lines or points. Some tools have a few options by default, or you can get additional ones from the ONS, Natural Earth or ArcGIS.

:::

::: {.column width="50%"}
![](media/geo-data-2.png)

#### Numerical or categorical data

This is the data that will be placed in the shapes on your map. Normally contains region IDs or coordinates (latitude and longitude).

:::
:::

## Internet speed exercise

1. Make a copy of the [internet speed in Europe data](https://docs.google.com/spreadsheets/d/1jHngN4MzHA8r_Nq_3fdkqpWGhNi7Cs2I_PwBShiPLXM/copy).
2. Create a choropleth map (NUTS3, 2021).
3. Copy the data in.
4. Customise colours, title, description and source.
5. Add annotations.
6. Publish or download the chart.

## Internet speed - example {.smaller background-color="#1c1b22"}

<iframe class="stretch" data-src="https://datawrapper.dwcdn.net/uJ92E/"></iframe>

## UK elections exercise

1. Donwload [this CSV](https://datawrapper.dwcdn.net/p8NRs/9/dataset.csv).
2. Create a symbol map in Datawrapper (UK constituencies, 2023).
3. Copy the data in.
4. Customise colours, title, description and source.
5. Publish or download the chart.

## Missing migrants exercise (Flourish)

1. Go to the missing migrants tab in the spreadsheet you've copied earlier.
2. Copy the data into Datawrapper or Flourish.
3. Create a symbol map.
4. Customise it (colour, size, opacity, etc).

## Missing migrants - example

<div class="flourish-embed flourish-map" data-src="visualisation/6268496"><script src="https://public.flourish.studio/resources/embed.js"></script></div>

## Contact

- [Ion.Calcea.2@city.ac.uk](mailto:ion.calcea.2@city.ac.uk)
- [James.Morris@city.ac.uk](mailto:James.Morris@city.ac.uk)




# Week 8

Data **Projects**<br>
<a href='https://ddj.nicu.md/city/'>https://ddj.nicu.md/city/</a>


## {.smaller}

::: columns
::: {.column width="33.33%"}
![](media/projects-1.png){width="100%"}

Often, the best narratives warrant going further than simple graphics.
:::

::: {.column width="33.33%"}
![](media/projects-2.png){width="100%"}

Tailored visualisations designed specifically for a story will almost always be the best way to tell a story.
:::

::: {.column width="33.33%"}
![](media/projects-3.png){width="100%"}

Interactivity can sometimes help portray the intricacies of a story better.
:::
:::

## The Martini Glass principle {background-color="#f2f2f2"}

![](https://miro.medium.com/v2/1*Jca05UCRvx-iJ96zGIFQkw.jpeg){width="100%"}

::: notes
Kicker
This is the top line you want to tell your audience. What does the data say? What will people share on Twitter?

Explanation
Guide your reader through your story, exposing different facets of your data.

Exploration
Let your readers explore the data on their own to find the stories that are relevant to them.
:::


## {fullscreen=true}
<iframe class="stretch" data-src="https://www.gurmanbhatia.com/talk/2021/03/09/stories-structure.html"></iframe>
::: footer
Source: [Gurman Bhatia](https://www.gurmanbhatia.com/talk/2021/03/09/stories-structure.html)
:::

## {fullscreen=true}
<iframe class="stretch" data-src="https://mastersofmedia.hum.uva.nl/blog/2011/05/03/narrative-structures-in-data-visualizations-to-improve-storytelling/"></iframe>
::: footer
Source: [Masters of Media](https://mastersofmedia.hum.uva.nl/blog/2011/05/03/narrative-structures-in-data-visualizations-to-improve-storytelling/)
:::


## Trackers {fullscreen=true .smaller background-color="white"}

::: columns
::: {.column width="66.66%"}
<style>.embed-container { position: relative; padding-bottom: 80%; height: 0; overflow: hidden; max-width: 100%; } .embed-container iframe, .embed-container object, .embed-container embed { position: absolute; top: 0; left: 0; width: 100%; height: 100%; }</style><div class='embed-container'><iframe src='https://nsmg-projects-public.s3.eu-west-2.amazonaws.com/live/nsmg-031/index.html' frameborder='0' allowfullscreen></iframe></div>
:::

::: {.column width="33.33%"}
Trackers are data visualisations connected to a data source that is periodically updated.
<br><br>
Examples include [FiveThirtyEight's Biden approval rating tracker](https://projects.fivethirtyeight.com/biden-approval-rating/), [Bloomberg's Pret Index](https://www.bloomberg.com/graphics/pret-index/) and [the New Statesman's Covid-19 tracker](https://www.newstatesman.com/science-tech/2021/11/uk-covid-tracker-latest-data-local-authority).
:::
:::

::: footer
Source: [New Statesman](https://www.newstatesman.com/science-tech/2021/12/uk-covid-tracker-latest-data-local-authority)
:::


## Calculators {fullscreen=true .smaller background-color="white"}

::: columns
::: {.column width="66.66%"}
<style>.embed-container { position: relative; padding-bottom: 80%; height: 0; overflow: hidden; max-width: 100%; } .embed-container iframe, .embed-container object, .embed-container embed { position: absolute; top: 0; left: 0; width: 100%; height: 100%; }</style><div class='embed-container'><iframe src='https://flo.uri.sh/visualisation/15816210/embed' frameborder='0' allowfullscreen></iframe></div>
:::

::: {.column width="33.33%"}
Calculators allow readers to input their own data and receive a result.
<br><br>
Examples include the [FT personal data worth calculator](https://ig.ft.com/how-much-is-your-personal-data-worth/), [the New Statesman election calculator](https://www.newstatesman.com/politics/elections/2021/08/election-win-calculator) and [the BBC's energy calculator](https://www.bbc.co.uk/news/business-67489975).
:::
:::

::: footer
Source: [BBC News](https://www.bbc.co.uk/news/business-67489975)
:::


## Scrollable stories {fullscreen=true .smaller background-color="#222222"}

::: columns
::: {.column width="66.66%"}
<style>.embed-container { position: relative; padding-bottom: 80%; height: 0; overflow: hidden; max-width: 100%; } .embed-container iframe, .embed-container object, .embed-container embed { position: absolute; top: 0; left: 0; width: 100%; height: 100%; }</style><div class='embed-container'><iframe src='https://news.test.files.bbci.co.uk/include/vjneareast/1230-critical-minerals/develop/english/app/test--full-width.html' frameborder='0' allowfullscreen></iframe></div>
:::

::: {.column width="33.33%"}
Scrollytelling is the use of a browser's scrolling functionality to interactively tell a data story.
<br><br>
Examples include [The Impatient List](https://xujunjiejack.github.io/), [the New York Times delta variant story](https://www.nytimes.com/interactive/2021/08/12/science/covid-delta-breakthrough.html) and [the New Statesman million years lost investigation](https://www.newstatesman.com/world/uk/2021/04/exclusive-covid-19-robbed-decade-life-average-victim-england-and-wales).
:::
:::

::: footer
Source: BBC News
:::


##

> Information visualisation is meant to clarify data, but too much interactivity hinders understanding by transferring responsibility from the designer to the reader to work out the important points. --- **[Martin Stabe (FT)](https://www.ft.com/content/c62b21c6-7feb-11e6-8e50-8ec15fb462f4)**

. . .

> Readers just want to scroll, […] if you make the reader click or do anything other than scroll, something spectacular has to happen. --- **[Archie Tse (NYT)](https://raw.githubusercontent.com/archietse/malofiej-2016/master/tse-malofiej-2016-slides.pdf)**


##

> Interactive graphics are not just a fun addition but can actually increase the transparency of our work, open us for criticism, and thereby, hopefully, help re-build some trust in journalism. --- **[Gregor Aisch (Datawrapper)](https://www.vis4.net/blog/2017/03/in-defense-of-interactive-graphics/)**

## Various resources
- [Math for journalists](https://observablehq.com/@nshiab/math-for-journalists)
- [Reporting with numbers](https://www.reportingwithnumbers.com/)
- [Rate my visualization](https://stephanieevergreen.com/rate-your-visualization/)

## Let's hear from you


## Contact

- [Ion.Calcea.2@city.ac.uk](mailto:ion.calcea.2@city.ac.uk)
- [James.Morris@city.ac.uk](mailto:James.Morris@city.ac.uk)




# Week 9

**Scraping**<br>
<a href='https://ddj.nicu.md/city/'>https://ddj.nicu.md/city/</a>


##

> Data scraping, in its most general form, refers to a technique in which a computer program extracts data from output generated from another program. --- **[Cloudflare](https://www.cloudflare.com/en-gb/learning/bots/what-is-data-scraping/)**

## Data can be stuck behind inaccessible formats {.smaller}

::: columns
::: {.column width="33.33%"}
### PDFs

Many organisations still publish data in PDFs, a proprietary format that is difficult to work with. Sometimes, they even do it on purpose.
:::

::: {.column width="33.33%"}
### Images

If you can't find the data behind a chart, ask the author. If you can't do that either, read it from the image.
:::

::: {.column width="33.33%"}
### Websites

If you've got structured information on your page, you'll most likely be able to download in a format that you can analyse.
:::
:::


## Use Tabula to scrape PDF tables {fullscreen=true}
<iframe class="stretch" data-src="https://tabula.technology/"></iframe>
::: footer
Source: [Tabula](https://tabula.technology/)
:::

::: notes
Show an example.
https://oms-www.files.svdcdn.com/production/downloads/academic/The_Future_of_Employment.pdf
:::



## Digitise image charts {fullscreen=true}
<iframe class="stretch" data-src="https://apps.automeris.io/wpd/"></iframe>
::: footer
Source: [WebPlotDigitizer](https://apps.automeris.io/wpd/)
:::

::: notes
Screenshot and digitize: https://www.ft.com/content/7e32dfb1-2282-40fa-9b10-181c01272ba3
:::

## Digitise maps {fullscreen=true}
<iframe class="stretch" data-src="https://mapster.me/map-digitizer/"></iframe>
::: footer
Source: [Map Digitizer](https://mapster.me/map-digitizer/)
:::

::: notes
Digitize: https://www.bbc.co.uk/bitesize/guides/zgrh7yc/revision/4
:::

## Scrape online charts {fullscreen=true}
<iframe class="stretch" data-src="https://onlinejournalismblog.com/2017/05/10/how-to-find-data-behind-chart-map-using-inspector/"></iframe>
::: footer
Source: [Online Journalism Blog](https://onlinejournalismblog.com/2017/05/10/how-to-find-data-behind-chart-map-using-inspector/)
:::

## Hidden APIs {fullscreen=true}
<iframe class="stretch" data-src="https://inspectelement.org/"></iframe>
::: footer
Source: [Inspect Element](https://inspectelement.org/)
:::


## Import HTML tables into Sheets

1. Create a new Google Sheets document.
2. Open [this Wikipedia page](https://en.wikipedia.org/wiki/List_of_countries_by_wealth_per_adult) in another tab.
3. Use the `=IMPORTHTML()` formula to import one of the tables.

## Missing persons exercise

1. Download and install the [Web Scraper](https://webscraper.io/) browser extension.
2. Navigate to the [Missing Persons website](https://missingpersons.police.uk/en-gb/case-search).
3. Scrape it.

```{.json .code-overflow-wrap}
{"_id":"missingpersons","startUrl":["https://missingpersons.police.uk/en-gb/case-search/?page=[1-10]&orderBy=dateDesc"],"selectors":[{"id":"gender-age","parentSelectors":["case"],"type":"SelectorText","selector":"a:nth-of-type(7) div:nth-of-type(1) div","multiple":false,"regex":""},{"id":"reference","parentSelectors":["case"],"type":"SelectorText","selector":"div.Detail:nth-of-type(2) div","multiple":false,"regex":""},{"id":"location","parentSelectors":["case"],"type":"SelectorText","selector":"div.Detail:nth-of-type(3) div","multiple":false,"regex":""},{"id":"case","parentSelectors":["_root"],"type":"SelectorElement","selector":"a.CaseThumbnail","multiple":true},{"id":"link","parentSelectors":["case"],"type":"SelectorLink","selector":"_parent_","multiple":false},{"id":"ethnicity","parentSelectors":["link"],"type":"SelectorText","selector":"div.Entry:nth-of-type(3) div.Value","multiple":false,"regex":""}]}
```


## Petitions exercise

1. Go to the [UK petitions website](https://petition.parliament.uk/archived/petitions?state=published).
2. Scrape the name of the petition, text, number of signatures, etc.


## Contact

- [Ion.Calcea.2@city.ac.uk](mailto:ion.calcea.2@city.ac.uk)
- [James.Morris@city.ac.uk](mailto:James.Morris@city.ac.uk)


# Week 10

**Recap**<br>
<a href='https://ddj.nicu.md/city/'>https://ddj.nicu.md/city/</a>

## Think of a story idea

At COP29, after delayed negations, advanced economies pledged to provide $300bn a year to low and middle income countries by 2035.

Climate vulnerable countries said this isn't enough, and the number should be closer to $1.3tn.

Can we contextualise how much $300bn is?

## Find data

The OECD tracks how much climate financing developing countries [have mobilised so far](https://www.oecd.org/en/publications/climate-finance-provided-and-mobilised-by-developed-countries-in-2013-2022_19150727-en/full-report/component-2.html).

In partnership with the IISD, they also track how much countries spend on [fossil fuel subsidies](https://fossilfuelsubsidytracker.org/).

Download both datasets and put them in a new Google Sheet.

We'll also need a [list of "developed countries"](https://www.oecd-ilibrary.org/sites/f0773d55-en/1/4/3/index.html?itemId=/content/publication/f0773d55-en&_csp_=5026909c969925715cde6ea16f4854ee&itemIGO=oecd&itemContentType=book#tablegrp-d1e4673).

## Clean and transform the data

We need to pivot and filter both tables. There's some additional cleaning we need to do as well, for example, making sure the units are consistent between the two datasets.

## Visualise

Copy the data into Datawrapper and visualise it as a grouped bar chart.