# RESCUER: a methodology for Rapid Electronic Scoping Updatable Extensible Reviews | «Рескьюэр»: методология быстрых электронных обновляемых расширяемых систематических обзоров о состоянии проблемы

## Предисловие | Introduction

Это ветка крупного репозитория, посвященного разработке запросов для поиска библиографических источников по ортопедии и не только по ней, освещающая нашу методологию быстрого проведения сжатых систематических обзоров о состоянии проблемы по остро возникающим клиническим вопросам. Несколько подробнее см. ниже после раздела об обзоре.

> This is a branch of a major repository dedicated to development of queries to search for bibliographic sources in orthopedics or otherwise. It throws light on our methodology to rapidly conduct an abridged scoping review on acutely prominent clinical questions. See some detail below after the review section.

## Обзор | Review

### Клинический вопрос | Clinical question

_Обучающиеся в сфере здоровья_ (образование): является ли _журнальный клуб_ по сравнению с _отсутствием журнального клуба_ более эффективным, если судить по _тестам на компетенцию критической оценки литературы_?

> _Students in health_ (education): are _journal clubs_ compared to _no journal clubs_ more effective, judging from _formalized assessments of literature critical appraisal competence_?

### Запрос в PubMed, live-версия | PubMed query, a live version

Максимально чувствительная версия (150 750
 записей):

> A sensitivity-maximizing version (150,750 records):

```
"journal club"[tiab] OR "journal clubs"[tiab] OR "critical appraisal"[tiab] OR (Education, Medical, Graduate[mh]) OR (Periodicals as Topic[mh]) OR Reading[mh]
```

Разработано с использованием поисковой стратегии [@Alguire1998347353] и «МeSH-браузера».

> Developed using the search strategy from [@Alguire1998347353] and the MeSH Browser.

Не будем ее использовать здесь, потому что здесь не нужна такая чувствительность. Достаточно вот чего (1 932 записи):

> Will not use it here because no such sensitivity is needed. This will suffice (1,932 records):

```
"journal club"[ti] or "journal clubs"[ti] 
```

При перезапуске 17 июня 2020 (уже в новом Пабмеде) выдал 1 944 записи. Результаты не выгружаю, так как уже старая выдача запущена в работу.

### Скрининг и картирование

* С некоторыми отклонениями от стандартного RESCUER (про который см. ниже).
* В частности эмодзи пришлось заменить на текстовые описания, потому что FormTools 3.0.10 из коробки почему-то отказался поддерживать все необходимые эмодзи.
* В этом обзоре используем следующую объединенную форму скрининга и картирования в [FormTools](https://formtools.org):

![Форма скрининга и картирования](screening-and-charting-form.png)

В текстовом виде:

```
Скрининг и картирование
Внимание! Сохранитесь, прежде чем покинуть вкладку. Все несохраненные данные будут потеряны.


В ИДЕАЛЕ НУЖНЫ ИССЛЕДОВАНИЯ, ГДЕ В ОДНОЙ ГРУППЕ ПРОВОДЯТ ЖУРКЛУБ, А В ДРУГОЙ НЕТ (ЛИБО ДРУГОЙ ВАРИАНТ ЖУРКЛУБА), А ПОТОМ ТЕСТИРУЮТ И СРАВНИВАЮТ ОБУЧАЮЩИХСЯ, НАСКОЛЬКО ОНИ УМЕЮТ КРИТИЧЕСКИ ОЦЕНИВАТЬ СТАТЬИ (ЛИБО ОБЗОРЫ ТАКИХ ИССЛЕДОВАНИЙ). ЕСЛИ НЕ ЭТО, НО ДРУГОЕ ПОЛЕЗНОЕ ПРО ЖУРКЛУБЫ, ТО ПРОСТО ПОДХОДИТ. ЕСЛИ СОМНЕВАЕМСЯ, ТО — ВОЗМОЖНО. ЕСЛИ НЕ ПОДХОДИТ, ГАЛКУ МОЖНО НЕ СТАВИТЬ.

Приемлемость	 Идеально   Подходит   Возможно   Не подходит

Заголовок	Preparing and Presenting Journal Club Content: An Essential Component of Homeopathic Learning.

Ссылка	/pubmed/32283557

ЕСЛИ НУЖЕН ПОЛНЫЙ ТЕКСТ, ИЩЕМ, ОТКРЫВАЕМ И ПИШЕМ КОММЕНТАРИЙ ЗДЕСЬ: ЕСЛИ ПОДОШЛО, ТО СРАЗУ ДЕЛАЕМ ВЫПИСКУ О ТОМ, ЧТО ТАМ НАПИСАНО; ЕСЛИ НЕ ПОДОШЛО, ТО ТАК И ПИШЕМ; ЕСЛИ НЕ СМОГЛИ ПОЛУЧИТЬ ДОСТУП К ПОЛНОМУ ТЕКСТУ, ТО ТАК И ПИШЕМ.

Что в полном тексте?	
```

* До начала скрининга отсортировал список из 1932 в случайном порядке, просто поместив ID записей из FormTools [рандомизатор списков от RANDOM.ORG](https://www.random.org/lists/?mode=advanced). Это для того, чтобы придать однородность множеству.
* Скрининг и картирования выполним перекрестно с маскированием вдвоем: [Наталья Меньшова](https://github.com/DiesNat) и [Павел Желнов](https://github.com/pussiatoday). Порядок записей будет хотя и случайный, но у обоих одинаковый.
* Итоговую версию результатов сформируем потом путем консенсуса.
* Результаты экспортируем тремя CSV-файлами: отдельно для каждого и консенсусную версию. Шаблоны файлов см. в директории `screening-and-charting`.

### Актуальность обзора | Background of the review

С начала апреля 2020 собираюсь организовать журнальный клуб P1M.ORG. Нужен шаблон доклада и вообще шаблон заседания.

> Beginning April 2020, I’m organizing a P1M.ORG journal club. I need a presentation template and a general meeting template.

Я уже смотрел в Гугле шаблоны презентаций и как-то ничем не удовлетворился. Хочется более основательно проникнуться накопленным опытом.

> I already saw some slide templates on Google but wasn’t somewhat satisfied. Want to get a more fundamental acquaintance with the experience accumulated.

Кстати, журклуб я пытался организовать и до этого (в июле — сентябре 2019), но безуспешно. См. коммиты ниже.

> By the way, I tried organizing a journal club even before (July through September 2019) but with no success. See the commits below.

1. [5d4a307b6b1f0b783b81a743a113cf5500c3467b](https://github.com/p1m-ortho/qs-global-ortho-search-queries/commit/5d4a307b6b1f0b783b81a743a113cf5500c3467b)
2. [35c3122ae9b4e9e65c6c6eee09e3ee83f402e6d1](https://github.com/p1m-ortho/qs-global-ortho-search-queries/commit/35c3122ae9b4e9e65c6c6eee09e3ee83f402e6d1)
3. [d67e6d378e56ef6e1f8ec82cdbbf56f2594a908a](https://github.com/p1m-ortho/qs-global-ortho-search-queries/commit/d67e6d378e56ef6e1f8ec82cdbbf56f2594a908a)
4. [672f849771a42c847ea7cd0c9e9cec1c8c37203a](https://github.com/p1m-ortho/qs-global-ortho-search-queries/commit/672f849771a42c847ea7cd0c9e9cec1c8c37203a)


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
