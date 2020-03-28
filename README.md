# RESCUER: a methodology for Rapid Electronic Scoping Updatable Extensible Reviews | «Рескьюэр»: методология быстрых электронных обновляемых расширяемых систематических обзоров о состоянии проблемы

## Предисловие | Introduction

Это ветка крупного репозитория, посвященного разработке запросов для поиска библиографических источников по ортопедии и не только по ней, освещающая нашу методологию быстрого проведения сжатых систематических обзоров о состоянии проблемы по остро возникающим клиническим вопросам. Несколько подробнее см. ниже после раздела об обзоре.

> This is a branch of a major repository dedicated to development of queries to search for bibliographic sources in orthopedics or otherwise. It throws light on our methodology to rapidly conduct an abridged scoping review on acutely prominent clinical questions. See some detail below after the review section.

## Обзор | Review

### Клинический вопрос | Clinical question

COVID-19 (профилактика): являются ли _мероприятия, направленные на предотвращение контактной передачи,_ по сравнению с _отсутствием таких вмешательств_ более эффективными, если судить по _частоте симптомных случаев_ (вторичные исходы: летальность, частота положительных тестов)?

> COVID-19 (prevention): are _interventions targeted at prevention of contact transmission_ compared to _the absence of such interventions_ more effective, judging from _symptomatic case rates_ (secondary outcomes: case fatality rate, positive testing rate)?

### Запрос в PubMed, live-версия | PubMed query, a live version

```
2020[dp] (spread*[tiab] or transmi*[tiab] or Disease Transmission, Infectious [mh] or trasm[sh] ) ((coronavirus [MeSH]) OR ("coronavirus infections"[MeSH Terms]) OR (coronavirus [All Fields]) OR ("covid 2019") OR ("SARS2") OR ("SARS-CoV-2") OR ("SARS-CoV-19") OR ("severe acute respiratory syndrome coronavirus 2" [supplementary concept]) OR (coronavirus infection) OR ("severe acute respiratory" pneumonia outbreak) OR ("novel cov") OR (2019ncov) OR (sars cov2) OR (cov2) OR (ncov) OR (covid-19) OR (covid19) OR (coronaviridae) OR ("corona virus"))
```

Благодарности по поисковому фильтру на COVID-19: https://libguides.rcsi.ie/covid19/searchstrategy

> COVID-19 search filter acknowledgements:
> https://libguides.rcsi.ie/covid19/searchstrategy

Ограничение по 2020 году публикации добавил, так как вряд ли особые исследования были в 2019, если учесть, что первые случаи заболевания был распознан только в декабре 2019, а ВОЗ вплотную занялась им только в январе 2019.

> I added the 2020 publication year restriction because it is unlikely any research was material in 2019, as the first cases of the disease were detected in December 2019 only, and the WHO has been working on it closely since January 2020 only.

532 записи, CSV прикрепляю (`csv-search-results/csv-2020dpspre-set.csv`, экспорт из нового интерфейса Пабмеда).

> 532 record, the CSV attached (`csv-search-results/csv-2020dpspre-set.csv`, exported from the new PubMed interface).

### Список литературы ВОЗ по COVID-19 | WHO COVID-19 references

CSV-таблицу взял отсюда (ссылка с сайта ВОЗ; CSV-файл дублирую в коммит: `csv-search-results/CSV as at 27 March 2020-Full database.csv`):

https://worldhealthorg-my.sharepoint.com/:f:/g/personal/garnicacarrenoj_who_int/EnzxnSJt68pIqLBwPYdqkqcB1KHboCAQJRN3mkTt3ZqDAA?e=OtxhHb

> I took the CSV table from here (the link is from the WHO website; I have duplicated and included the CSV file in the commit: `csv-search-results/CSV as at 27 March 2020-Full database.csv`):
>
> https://worldhealthorg-my.sharepoint.com/:f:/g/personal/garnicacarrenoj_who_int/EnzxnSJt68pIqLBwPYdqkqcB1KHboCAQJRN3mkTt3ZqDAA?e=OtxhHb

Также доступно в виде веб-ресурса на сайте ВОЗ: https://www.who.int/emergencies/diseases/novel-coronavirus-2019/global-research-on-novel-coronavirus-2019-ncov

> Also available as a web resource at the WHO website:
> https://www.who.int/emergencies/diseases/novel-coronavirus-2019/global-research-on-novel-coronavirus-2019-ncov

Всего 9995 записей в веб-таблице на момент коммита, но почему-то только 2912 в CSV-таблице (полная, от 27 марта). Буду использовать CSV-файл, так как веб-таблица выглядит ненадежно реализованной.

> A total of 9995 records in the web table at the time of the commit, but for some reason just 2912 records in the CSV table (full, as of Mar 27). Will use the CSV file as the web table seems an unreliable presentation.

Поиск по заголовку и аннотации (CSV-файл, по регулярному выражению):

/(transmi|spread)/gi

> Title/abstract search (the CSV file, by regular expression):
>
> /(transmi|spread)/gi

### Актуальность обзора | Background of the review

В современных гайдах упоминается, что контактная передача SARS-CoV-2 также возможна (кроме воздушно-капельной). Имплементируются широкомасштабные организационные мероприятия направленные на предотвращение возможной контактной передачи SARS-CoV-2 (усиленная дезинфекция поверхностей, руководства по сокращению прикосновений к различным объектам и т. д.). Возникает вопрос, на каких эмпирических свидетельствах основаны такие мероприятия.

> Current guides suggest surface contact transmission is also possible for SARS-CoV-2 (not only droplet person-to-person transmission). Large-scale organizational interventions targeted at prevention of the possible surface contact transmission of SARS-CoV-2 are being implemented (such as aggressive surface disinfection, guides on how to reduce touching different objects, etc.). The question arises: What empirical data underpin such interventions?

## О «Рескьюэре» | About RESCUER 

### Краткое введение | Short background

Краткое введение таково, что существуют три (ср. дюжину других самоназваний литературных обзоров в [классическом обзоре Grant и Booth](https://pubmed.gov/19490148)) типа систематических обзоров литературы — то есть таких литературных обзоров, в которых (1) априори установлен вопрос исследования; (2) ясно определены границы обзора и то, какие работы подлежат включению; (3) приложены все усилия, чтобы найти все релевантные исследования и убедиться, что вопросам систематической ошибки во включенных работах уделено должное внимание; (4) анализ включенных работ выполнен так, чтобы выводы были основаны на всех выявленных работах непредвзятым и объективным образом ([раздел 1.1 главы 1 «Справочника Кокрейна» 6.0](https://training.cochrane.org/handbook/current/chapter-01#section-1-1)).

> As a short background, there are three (cf. a dozen other self-nominated literature review titles in [the classic review by Grant & Booth](https://pubmed.gov/19490148)) types of systematic literature reviews, i.e. the reviews that involve ‘a priori specification of a research question; clarity on the scope of the review and which studies are eligible for inclusion; making every effort to find all relevant research and to ensure that issues of bias in included studies are accounted for; and analysing the included studies in order to draw conclusions based on all the identified research in an impartial and objective way’ ([the section 1.1 of the chapter 1 of the Cochrane Handbook 6.0](https://training.cochrane.org/handbook/current/chapter-01#section-1-1)).

* [Классические систематические обзоры](https://training.cochrane.org/handbook/current/chapter-i#section-i-2-2) — прежде всего, обзоры эффектов вмешательств, но также и обзоры правильности диагностических тестов, прогностические обзоры, обозрения обзоров и методологические обзоры; их статус-кво плотно завязан на имени Кокрейновского содружества.
* [Систематические обзоры о состоянии проблемы](http://prisma-statement.org/Extensions/ScopingReviews).
* [«Быстрые обзоры»](https://methods.cochrane.org/rapidreviews/welcome) — сокращенная версия традиционных систематических обзоров.

> * [Classic systematic reviews](https://training.cochrane.org/handbook/current/chapter-i#section-i-2-2), first of all, reviews of the effects of interventions, but also reviews of diagnostic test accuracy, reviews of prognosis, overviews of reviews, and reviews of methodology; their status quo is closely tied to the name of the Cochrane Collaboration.
> * [Scoping reviews](http://prisma-statement.org/Extensions/ScopingReviews).
> * [Rapid reviews](https://methods.cochrane.org/rapidreviews/welcome), an abridged version of traditional systematic reviews.

Однако методология быстрых _систематических обзоров о состоянии проблемы_ остается неразработанной (поиск `"rapid scoping"[ti]` в PubMed по состоянию на момент коммита выдавал ноль записей), не говоря уже о методологии выполнения такого обзора с привлечением актуального программного обеспечения, несмотря на столь высокую актуальность обзоров такого типа. По существу, речь идет о любых быстрых поисках, которые так или иначе приходится выполнять в повседневной практике в здравоохранении — непосредственно о том виде деятельности, которым представлена доказательная медицина в [веховой работе 1992 года](https://pubmed.gov/1404801). Однако в силу чрезвычайно ограниченных ресурсов в контексте этой деятельности (минуты, часы, дни; единственный участник) становится невозможным следование стандартным руководствам по выполнению и докладу систематических обзоров в полной их форме. Так родился наш подход.

> However, the methodology for rapid _scoping reviews_ remains undeveloped (PubMed `"rapid scoping"[ti]` search at the commit moment produced zero records), not to mention the methodology for conducting such a review making use of up-to-date software, despite the high relevancy of the reviews of such kind. Basically, it implies any rapid searches that are, one way or the other, to be conducted in the everyday healthcare practice—specifically the kind of activity that represented evidence-based medicine in [the seminal 1992 paper](https://pubmed.gov/1404801). However, in spite of the drastical limitation on resources in the context of this activity (minutes, hours, days; single participant), it becomes impossible to follow standard guidelines on systematic review conduct and reporting to their fullest. Hence the birth of our approach.

### Методология коротко | Methodology in short

Итак, коротко о методологии. Наши обзоры:

* систематические о состоянии проблемы, т. е. следуют методологии систематических обзоров о состоянии проблемы, где только возможно (главные ориентиры — [PRISMA-ScR](http://prisma-statement.org/Extensions/ScopingReviews) и неизменно — [Cochrane Handbook](https://training.cochrane.org/handbook/current));
* быстрые, т. е. предназначены для быстрого проведения (от минут до часов и дней);
* электронные, т. е. проводятся и публикуются в первично электронной форме;
* обновляемые, т. е. проводятся и докладываются готовыми к частым обновлениям;
* расширяемые, т. е. могут быть постепенно расширены вплоть до полного систематического обзора о состоянии проблемы.

> So let us talk methodology in short. Our reviews are:
>
> * scoping, i.e. follow scoping review methodology whenever possible (the main courses are the [PRISMA-ScR]() and invariably, the [Cochrane Handbook](https://training.cochrane.org/handbook/current)).
> * rapid, i.e. are to be conducted rapidly (minutes to hours to days);
> * electronic, i.e. are conducted and published electronic-first;
> * updatable, i.e. are conducted and reported ready for frequent update;
> * extensible, i.e. may be gradually extended up to the full scoping review.

Новые проекты создаются как ветви от ветви `rescuer-master` этого репозитория (см. [Pro Git (на русском)](https://git-scm.com/book/ru) для вводного курса в Гит). Затем в режиме [git blame](https://github.com/p1m-ortho/qs-global-ortho-search-queries/blame/rescuer-master/README.md) см. коммит, соответствующий данному поисковому запросу (в пределах ветви), и смотрите в этом коммите:

* полные результаты поисковой выдачи, которые, как правило, можно экспортировать инструментами, предоставленными самим поисковым порталом (например `pubmed_result.csv`), но иногда приходится импровизировать (см., например, [Себзер](https://github.com/p1m-ortho/xs-sebzer));
* таблицу их скрининга, которую я обычно заполняю и экспортирую при помощи [PortoDB](https://play.google.com/store/apps/details?id=com.portofarina.portodb) (например `rescuer - pubmed_result.csv`);
* bib-файлы для цитируемых работ, которые я обычно экспортирую при помощи [JabRef](https://www.jabref.org) или [ZoteroBib](https://zbib.org) (например `Grant200991108.bib` — JabRef; `EvidenceBasedMedicineWorkingGroup199224202425.bib` — ZoteroBib).

> New projects are created as branches of the `rescuer-master` branch of this repository (see [Pro Git](https://git-scm.com/book) for a Git introduction). Then in the [git blame](https://github.com/p1m-ortho/qs-global-ortho-search-queries/blame/rescuer-master/README.md) mode, see the commit corresponding to the search query in question (within the branch) and in the commit, see the following:
>
> * a full search results output, which, as a rule, can be exported using the tools provided by the search portal itself (e.g. `pubmed_result.csv`), but sometimes one is compelled to improvise (e.g. see [Sebzer](https://github.com/p1m-ortho/xs-sebzer));
> * a screening table, which I usually fill and export using [PortoDB](https://play.google.com/store/apps/details?id=com.portofarina.portodb) (e.g. `rescuer - pubmed_result.csv`);
> * bib files for the cited studies, which I usually export using [JabRef](https://www.jabref.org) or [ZoteroBib](https://zbib.org) (e.g. `Grant200991108.bib` — JabRef; `EvidenceBasedMedicineWorkingGroup199224202425.bib` — ZoteroBib).

В таблице скрининга:

* ⚡ (Unicode 4.0 High Voltage Sign) — впечатление, что запись может быть полезной для ответа на рассматриваемый клинический вопрос, и для выяснения нужно поднимать, как минимум, аннотацию, а при необходимости — и полные тексты;
* 👍 (Unicode 6.0 Thumbs Up Sign) — запись точно кое-чем может быть полезной для ответа на рассматриваемый клинический вопрос, что ясно либо сразу же из заголовка, либо после просмотра аннотации или даже полных текстов;
* 🏆 (Unicode 6.0 Trophy) — работы-победители, посвященные в значительной степени ответу на рассматриваемый клинический вопрос, что стало понятно так или иначе.

> In the screening table:
>
> * ⚡ (Unicode 4.0 High Voltage Sign), an impression that the record may be useful to answer the clinical question under review, and to clear this up, one has to look up the abstract at least, or the full text if needed;
> * 👍 (Unicode 6.0 Thumbs Up Sign), the record may definitely be useful to answer the clinical question under review, which is clear either right from the title or after having looked at the abstract or even the full texts;
> * 🏆 (Unicode 6.0 Trophy), the winning papers that, to a great degree, are dedicated to answering the clinical question under review, which has become clear one way or the other.

Сам текст размечен [Commonmark-Маркдауном](https://commonmark.org), а ссылки в нем имеют формат [@ФамилияПервогоАвтораГодСтраницыОтСтраницыДо], что нужно для того, чтобы затем при необходимости скомпилировать сверстанную копию из основного текста и [бибтехов](http://www.bibtex.org) (конкатенированных в один) с помощью [knitr](https://yihui.org/knitr/).

> The very text is marked up with [Commonmark Markdown](https://commonmark.org), and the references within are in the [@FirstAuthorLastnameYearPagesFromPagesTo] format, which is required so that afterwards if needed, to compile a typeset copy from the main text and the [bibtexes](http://www.bibtex.org) (concatenated into one) using [knitr](https://yihui.org/knitr/).

### Литература по теме | Related references

[@Akl2020E1E10] предложили оригинальный подход: Evidence Synthesis 2.0.

> [@Akl2020E1E10] have proposed an originative approach: Evidence Synthesis 2.0.

Некоторые авторы говорят о необходимости живых синтезов с ликвидацией бесконечного дерева третичных работ, что близко перекликается с нашей концепцией [СТМЗ](https://github.com/p1m-ortho/xs-stmz-methodology).

> Some authors talk about the need for live syntheses with elimination of the infinite tree of tertiary research, which corresponds closely with our concept of [STMZ](https://github.com/p1m-ortho/xs-stmz-methodology).
