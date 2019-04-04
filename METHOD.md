# METHOD.md

## Цель

Составить максимально всеобъемлющий запрос по неосложненным взрывным (в интерпретации [классификации AO 2018](https://classification.aoeducation.org)) переломам грудных и поясничных позвонков не при политравме, пользуясь свободным текстом и MeSH.

## Актуальность

Я пытаюсь отработать новый запрос, потому что старый, как я тут поразмышлял, ну совсем никуда не годится.

Причем возможно, что я буду пускать несколько запросов по обзору по взрывным переломам. Похоже, что без этого мне не обойтись.

Сначала я хочу написать предельно специфичный запрос именно по взрывным переломам, причем именно под те вопросы, которые по обзору стоят.

Я прошелся по тематическим блокам обзора и пришел к выводу, что, чтобы уверенно захватить все эти вопросы, нужно выполнить гораздо более широкий поиск — SFMHSUSH SSB HSSS v2 явно не достаточно.

И я попытался даже нечто подобное предпринять (см. 2eff91d36560e1e6828f0edfc8dddeeeebf3951b, 6ea77c71cf970dbec212c514c26a62cfbdbcea2e и между ними), реализовав параллельно давнюю идею выполнить один глобальный поиск по позвоночнику, коллективно его отскринить, и потом уже брать оттуда те фрагменты, которые необходимо.

То есть такой локальный регистр исследований по позвоночнику, а то и по ортопедии вообще — вообще на кафедре же идет наука не только по позвоночнику, и идея глобально отскринить работы по ортопедии, просеяв и разделив их таким обазом на четкие группы, выглядит актуальной.

Но еще на этапе планирования я понял, что это гиблая затея. Про ортопедию в целом я понял это почти сразу, про позвоночник — с некоторым опозданием, но все же вовремя: до того, как начал что-то по этому делать или — тем хуже — привлекать кого-то еще. В том великое могущество планирования — можно предугадать некоторые неизбежные ошибки и их таким невероятным образом избежать.

Преимущество работы в Гите — в том, что там оказываются теперь запечатлены и такие моменты — тупиковые варианты развития, которые очень трудно отследить, если не записывать все проспективно. Потому что, когда за что-то взялись, и не срослось, слишком велик соблазн тогда уж ничего и не записывать: мол, а зачем? Хотя значимость таких проектов отнюдь не меньшая, чем результативных: они показывают, что за это _уже брались_, и второй раз это делать _не надо_, либо, если делать, то только хорошо подумав. Не запишешь — рискуешь и сам встать на те же грабли, и другим дать это сделать.

## Методы

## PubMed. Свободный текст + MeSH

`pubmed.txt` прилагается.

### Алгоритм скрининга

См. https://github.com/p1m-ortho/qs-global-ortho-search-queries/blob/master/METHOD.md#алгоритм-скрининга на момент коммита.

### Критерии исключения (шаги)

См. https://github.com/p1m-ortho/xt-ao-type-a/blob/master/xt-ao-type-a.Rmd на момент коммита.

## Обсуждение

Необходимо пояснить, что #0 — это буфер обмена Пабмеда. Туда можно просто складывать записи из разных мест. В частности здесь я сложил сюда 296 записей, которые уже ранее отскринил по старому запросу про хирургию переломов позвонков (тот самый, который SFMHSUSH SSB HSSS v2).

Здесь я преследовал цель именно затестировать новый запрос! С каких позиций? Коль скоро у меня уже есть наскриненная подборка по хирургии переломов позвонков — неполностью совпадает с PICO нового запроса, но все же отчасти совпадает,— мне было интересно посмотреть, а _все ли_ записи из уже наскриненной подборки войдут в новый запрос, и поподробнее рассмотреть записи, которые не вошли: почему не вошли? есть ли среди них релевантные по новому запросу? Это способ затестить и улучшить новый запрос.

То есть было как дело. То, что мы наскриниваем по SFMHSUSH SSB HSSS v2, какими характеристиками обладает: про переломы позвонков, при этом не доклинические исследования, не дети, не шея, не таз, не осложненная травма, не старая травма, не ВП, только с адекватной хирургией и не НРИ и не НСО.

За счет того, что исключенные по шагу 9 (НРИ или НСО) тоже вошли в 296, то НРИ или НСО также может быть.

**296 пока не публикую из соображений сохранения маскирования по SFMHSUSH SSB HSSS v2, по которому на данный момент не закончен перекрестный скрининг (https://github.com/p1m-ortho/xr-sfmhsush-ssb-hsss-v2/commits/master). И так маскирование нарушается фактом публикации количества таких записей, но этот срыв уже был сделан ранее (https://github.com/p1m-ortho/xr-sfmhsush-ssb-hsss-v2/commit/b62c1b7818788dbd4abe30093d7cda76a2c72e09). И хотя был и еще один срыв маскирования, когда какое-то время были частично доступны списки отскриненных мной (https://github.com/p1m-ortho/xr-sfmhsush-ssb-hsss-v2/commit/983b16269f2e659719b83f1accf09db661ce85b7), именно список 296 никогда ранее не публиковался.**

**По этой же причине не публикую 137.**

А что должно быть по новому запросу, исходя из его структуры: переломы или повреждения, ГОП/ПОП и какое-то указание либо на взрывной/компрессионный перелом, либо на классификацию AO.

~~То есть, логически рассуждая, _все_ такие записи из нового запроса, которые удовлетворяют также и шагам SFMHSUSH SSB HSSS v2, _должны_ также оказаться и в области пересечения. А значит, те 137 записей, которые _за границами_ пересечения, _должны_ оказаться несовпавшими по какому-либо из шагов SFMHSUSH SSB HSSS v2 (кроме 9-го, естественно).~~ Глупости.

## Чем на могут быть полезны… (обсуждение)

### Abudou 2013

Ожидание.

### Cheng 2013

Ожидание.

### Dailey 2019

```
16.02.19, 23:19 - Nachrichten in diesem Chat sowie Anrufe sind jetzt mit Ende-zu-Ende-Verschlüsselung geschützt. Tippe für mehr Infos.
16.02.19, 23:19 - Павел: Смотрите, Сергей, какая штука интересная получается. Сижу я над такой задачей.
16.02.19, 23:21 - Павел: Следующий запрос в PubMed.
16.02.19, 23:21 - Павел: https://www.cns.org/guideline-chapters/congress-neurological-surgeons-systematic-review-evidence-based-guidelines/chapter_2
16.02.19, 23:21 - Павел: Думаю, чего бы из него выжать, и вообще в порядке ли он.
16.02.19, 23:22 - Павел: В частности вот эта его часть:
16.02.19, 23:22 - Павел: Thoracolumbar [TIAB] OR thoraco-lumbar [TIAB] OR thoraco lumbar [TIAB] OR burst [Title]
16.02.19, 23:22 - Павел: Направленная на выявление работ по грудным и поясничным позвонкам по свободному тексту.
16.02.19, 23:24 - Павел: И я даже не в плане этой части:
Thoracolumbar [TIAB] OR thoraco-lumbar [TIAB] OR thoraco lumbar [TIAB]
16.02.19, 23:24 - Павел: Хотя она явно избыточная. Достаточно написать thoraco*[tiab].
16.02.19, 23:24 - Павел: Но я не о ней. Меня `burst [Title]` смущает.
16.02.19, 23:25 - Павел: Во-первых, уже странно, не правда ли. С чего это бы это слову _burst_ быть специфичным для грудного и поясничного отделов?
16.02.19, 23:26 - Павел: Но даже допустим, что это какая-то хитрая шпионская логика. Допустим. Но почему [Title]?
16.02.19, 23:27 - Павел: Откуда такая уверенность, что статей, где `burst` будет в аннотации, но не в заголовке, нет? Или что они будут перекрываться другими поисковыми терминами? Непонятно.
16.02.19, 23:29 - Павел: Может, какая-то логика и была, но в статье она не описана — непонятно. Именно поэтому-то и надо всегда все описывать. Долго, изнурительно, но иного пути нет — сжать зубы и описывать всю свою логику, а еще желательней делать это проспективно — вот как мы в Гите: возникла идея — запиши.
16.02.19, 23:31 - Павел: Короче, дальше что. Ну зашел я в Пабмед, естественно, посмотреть, что там со статьями `burst[tiab] not burst[ti]`, а еще и фактические названия тех, что `burst[ti]` (какие там слова-то еще встречаются — вдруг будет что полезное).
16.02.19, 23:31 - Павел: Выдает он мне на это 6432 записи:
16.02.19, 23:32 - Павел: pubmed.gov/?term=burst[ti]
16.02.19, 23:33 - Павел: Смотреть это все — лень, естественно, и я и думаю: возьму сейчас случайную выборку и посмотрю на ней.
16.02.19, 23:36 - Павел: Технически это просто сделать: экспортировать из Пабмеда в список PMID, потом отсортировать его случайно на RANDOM.ORG и взять сверху нужное число записей. Потом заменой текста преобразовать список в запрос и пусть его в Пабмед, собственно. Тут все просто. Вопрос в том, сколько статей брать в случайную выборку.
16.02.19, 23:36 - Павел: Для этого есть прекрасные калькуляторы размера выборки. Их пруд пруди. Например:
16.02.19, 23:36 - Павел: http://www.raosoft.com/samplesize.html
16.02.19, 23:37 - Павел: Но надо определиться с параметрами. А для этого приходится определяться, что хотим выявить, собственно говоря.
16.02.19, 23:37 - Павел: Вот теперь только я и дошел до самой задачи.
16.02.19, 23:39 - Павел: Анализирую эту ситуацию и доходит до меня очевидная, по идее, вещь. Суть огромного числа работ сводится к определению разницы некоторых показателей.
16.02.19, 23:42 - Павел: Здесь, если моделировать, имеем популяцию (6432 записи), для каждой записи есть, предположительно, совершенно определенное значение показателя «подходит / не подходит» (ну, потому что `burst` в статье либо относится ко взрывным переломам, либо нет — спорную ситуацию не могу представить).
16.02.19, 23:43 - Павел: То есть подходит k/6432 записей, где k натуральное число.
16.02.19, 23:46 - Павел: Вот, и мы хотим оценить k/6432, используя случайную нашу выборку.
16.02.19, 23:51 - Павел: И вот в чем фокус! Меня что поразило внезапно (хотя это очевидная вещь, и нечему тут поражаться), и чем хотел поделиться с Вами: гипотеза-то такова, что таких записей вовсе в популяции нет.
16.02.19, 23:54 - Павел: Вот тут не так я написал. Нас здесь интересует не то, относится ко взрывным переломам или нет, а есть ли такие записи, у которых `burst` в заголовке не сочетается ни с `fractur*`, ни с `injur*`.
16.02.19, 23:54 - Павел: Запутался и, вероятно, совсем Вас запутал.
16.02.19, 23:55 - Павел: Еще раз: (а) посмотреть, что там со статьями `burst[tiab] not burst[ti]`, (б) а еще и фактические названия тех, что `burst[ti]`.
16.02.19, 23:56 - Павел: К (а) еще вообще не притрагивались. Пока речь про (б).
16.02.19, 23:57 - Павел: Я просто предположил, что достаточно бессмысленно в рамках запроса по травма _позвоночника вообще_ искать еще и по `burst[ti]`, потому что, как я предположил, «burst» само по себе в заголовках не встречается.
16.02.19, 23:58 - Павел: Когда оно употреблено в этом смысле.
16.02.19, 23:59 - Павел: То есть гипотеза — такова, что из этих 6432 не будет ни одной записи, которая касалась бы взрывных переломов, а слово «burst» было бы в заголовке само по себе, без терминов, указующих на перелом или траву.
17.02.19, 00:01 - Павел: Вот! И в этом и заключаются весь интерес и вся кульминация, Сергей! До тех пор, пока мы формулируем вопрос в терминах «доказать, что чего-то нет», исследование нам здесь не поможет, потому что нужно иметь _хотя бы одно_ событие, чтобы посчитать его риск.
17.02.19, 00:01 - Павел: Если бы мы даже просмотрели все 6432 и ни одной такой записи не нашли, мы смогли бы сказать только, что фактический риск был меньше 1/6432.
17.02.19, 00:03 - Павел: Но при планировании размера выборки вот я не знаю, как это использовать.
17.02.19, 00:03 - Павел: Допустим, что мы возьмем случайную выборку из 20 записей, ее просмотрим и не найдем в ней ни одной такой. Докажем ли мы тогда, что и во всей популяции нет такой записи? Нет.
17.02.19, 00:06 - Павел: Короче говоря, Сергей, не можем исследовать явления, которые никогда не встречаются. Мораль такая. Очень-очень редкие, но теоретически возможные события — можем, не случающиеся никогда события — не можем. По-крайней мере, я не знаю как. Может, как-то и можно, но вот эти стандартные методы однозначно не годятся.
17.02.19, 00:09 - Павел: Поэтому и тут надо оценивать свои ощущения. Допустим, просмотрели 20 записей — такой не нашли. Достаточно ли редко? Вроде нет. 100 просмотрели — достаточно? Может, и мало. 1000 просмотрели — ни одной такой. Когда остановиться? А вдруг фактический риск составляет как раз 1/1001, и так совпало, что именно эта запись нам не попалась? В контексте обзоров литературы речь ведь идет именно о таких ситуациях: редкие-редкие релевантные записи, и как их не пропустить через сито.
17.02.19, 00:13 - Павел: Поэтому и надо все равно _представить_ и подумать, а в каких случаях такие ситуации все же могут возникнуть и в связи с чем, и сколько таких случаев будет на сто, тысячу, миллион записей. Определившись с этим, мы определяемся, случайной выборки какого размера может быть достаточно, чтобы поймать
17.02.19, 00:14 - Павел: Чтобы поймать этот один случай.
17.02.19, 00:19 - Павел: По моим ощущениям, частота должна быть где-то 1/200. Возможными вариантами могут быть нестандартная структура фразы в сочетании с использованием синонимов, например: «Pedicle screw fixation candidates: burst v non-burst».
17.02.19, 00:23 - Павел: Вопрос теперь, скорее, в том, зачем нам эти цифры. Ну получим мы некую популяционную встречаемость таких случаев. Дальше что? Установить априори некую точку отсева, до которой мы еще будем считать запрос приемлемым, а после нее — нет? Абсурд.
```

## Разное

### Частота и структура взрывных переломов (PubMed, на скорую руку)

Возвращает 217 записей. Список PMID см. `pubmed_result_217.txt`.

Пошаговую стратегию для конструктора с количествами см. в `pubmed-1.txt` (сделал настолько на скорую руку, что там остались даже старые запросы еще в начале истории).

```
((((((((((((((("Arbeitsgemeinschaft fur Osteosynthesefragen"[Title/Abstract]) OR "Association for Osteosynthesis"[Title/Abstract]) OR "Arbeitsgemeinschaft fur Osteosynthesefragen"[Title/Abstract]) OR "Association for the Study of Internal Fixation"[Title/Abstract]) OR AOSpine[Title/Abstract]) OR AO[Title/Abstract]) OR A2[Title/Abstract]) OR A3[Title/Abstract]) OR A4[Title/Abstract]) OR burst[Title/Abstract]) OR compression[Title/Abstract])) AND ((((((((spinal injuries[MeSH Terms]) OR fractures, bone[mh:noexp]) OR in[sh]) OR fracture*[Title]) OR injur*[Title])) AND (((((thoracic vertebrae[mh]) OR lumbar vertebrae[mh]) OR thoraco*[ti]) OR thoracic[ti]) OR lumbar[ti])) AND ((((((((((((demograph*[Title]) OR stats[Title]) OR statistic*[Title]) OR prevalence[Title]) OR occurrence[Title]) OR frequency[Title]) OR morbidity[Title]) OR incidence[Title]) OR distribut*[Title]) OR epidemiol*[Title]) OR ep[MeSH Subheading]) OR demography[MeSH Terms])))) AND 1600/01/01:2019/02/23[mhda])
```

Выгружу в Рэйан, проскриню (в одиночку).

[Традиционный пошаговый алгоритм скрининга](https://github.com/p1m-ortho/qs-global-ortho-search-queries/blob/6ea77c71cf970dbec212c514c26a62cfbdbcea2e/METHOD.md#алгоритм-скрининга), критерии возьму стандартные рэйановские в следующих порядке и интерпретации:

1. `wrong publication type`: не статьи в научных журналах (комментарии и письма расцениваем как статьи в научных журналах);
1. `background article`: исследования на животных, трупах, стендовые, in vitro, in silico или на здоровых лицах;
1. `wrong population`: детская популяция или популяция не пересекается с PICO (применяется, только если определена в PICO, иначе не применяется);
1. `wrong drug`: вмешательства не пересекаются с PICO (применяется, только если определены в PICO, иначе не применяется);
1. `wrong study design`: не СО
([Shojania 2001](https://pubmed.gov/11525102)) и не РКИ ([Cochrane Handbook 5.1, box 6.3a](https://handbook-5-1.cochrane.org/chapter_6/box_6_3_a_cochrane_definitions_and_criteria_for_randomized.htm));
1. `wrong outcome`: исходы не пересекаются с PICO (применяется, только если определены в PICO, иначе не применяется);
1. `wrong study duration`: точки оценки результатов не пересекаются с PICO (применяется, только если определены в PICO, иначе не применяется);
1. `foreign language`: не английский и не русский в аннотации или полном тексте.

PICO подготовлю в [традиционном PICO-конструкторе](http://pussia.today/request-a-search).

PICO:

```
```

-----

Расширенная (нормальная вообще-то) версия, где везде стоит [tiab].

Возвращает 1469 записей.

```
((((((((((((((("Arbeitsgemeinschaft fur Osteosynthesefragen"[Title/Abstract]) OR "Association for Osteosynthesis"[Title/Abstract]) OR "Arbeitsgemeinschaft fur Osteosynthesefragen"[Title/Abstract]) OR "Association for the Study of Internal Fixation"[Title/Abstract]) OR AOSpine[Title/Abstract]) OR AO[Title/Abstract]) OR A2[Title/Abstract]) OR A3[Title/Abstract]) OR A4[Title/Abstract]) OR burst[Title/Abstract]) OR compression[Title/Abstract])) AND ((((((((spinal injuries[MeSH Terms]) OR fractures, bone[mh:noexp]) OR in[sh]) OR fracture*[Title/Abstract]) OR injur*[Title/Abstract])) AND (((((thoracic vertebrae[mh]) OR lumbar vertebrae[mh]) OR thoraco*[tiab]) OR thoracic[tiab]) OR lumbar[tiab])) AND ((((((((((((demograph*[Title/Abstract]) OR stats[Title/Abstract]) OR statistic*[Title/Abstract]) OR prevalence[Title/Abstract]) OR occurrence[Title/Abstract]) OR frequency[Title/Abstract]) OR morbidity[Title/Abstract]) OR incidence[Title/Abstract]) OR distribut*[Title/Abstract]) OR epidemiol*[Title/Abstract]) OR ep[MeSH Subheading]) OR demography[MeSH Terms])))) AND 1600/01/01:2019/02/23[mhda])
```

И совсем расширенная, где везде [tw].

Возвращает 1753 записи.

```
((((((((((((((("Arbeitsgemeinschaft fur Osteosynthesefragen"[tw]) OR "Association for Osteosynthesis"[tw]) OR "Arbeitsgemeinschaft fur Osteosynthesefragen"[tw]) OR "Association for the Study of Internal Fixation"[tw]) OR AOSpine[tw]) OR AO[tw]) OR A2[tw]) OR A3[tw]) OR A4[tw]) OR burst[tw]) OR compression[tw])) AND ((((((((spinal injuries[MeSH Terms]) OR fractures, bone[mh:noexp]) OR in[sh]) OR fracture*[tw]) OR injur*[tw])) AND (((((thoracic vertebrae[mh]) OR lumbar vertebrae[mh]) OR thoraco*[tw]) OR thoracic[tw]) OR lumbar[tw])) AND ((((((((((((demograph*[tw]) OR stats[tw]) OR statistic*[tw]) OR prevalence[tw]) OR occurrence[tw]) OR frequency[tw]) OR morbidity[tw]) OR incidence[tw]) OR distribut*[tw]) OR epidemiol*[tw]) OR ep[MeSH Subheading]) OR demography[MeSH Terms])))) AND 1600/01/01:2019/02/23[mhda])
```

## Взрывные и AO переломы/вывихи ГОП/ПОП, не клинические наблюдения, от 28.02.2019, последнее обновление 04.04.2019 (PubMed, MeSH + свободный текст, _не_ на скорую руку)

Возвращает 1460 записей.

`history_1460.csv` прилагается.

`((((((((((((((burst[Text Word]) OR ((a2[tw] OR a3[tw] OR a4[tw]))) OR AOSpine[Text Word]) OR AO[Text Word]) OR Arbeitsgemeinschaft fur Osteosynthesefragen[Text Word])) AND (((((((fractur*[Text Word]) OR injur*[Text Word]) OR fractures, bone[mh:noexp])) OR dislocat*[Text Word])) AND (((((((thoracic[Text Word]) OR lumbar[Text Word]) OR thoracic vertebrae[MeSH Terms]) OR lumbar vertebrae[MeSH Terms]) OR thoraco*[Text Word])) OR ((t1[tw] OR t2[tw] OR t3[tw] OR t4[tw] OR t5[tw] OR t6[tw] OR t7[tw] OR t8[tw] OR t9[tw] OR t10[tw] OR t11[tw] OR t12[tw] OR th1[tw] OR th2[tw] OR th3[tw] OR th4[tw] OR th5[tw] OR th6[tw] OR th7[tw] OR th8[tw] OR th9[tw] OR th10[tw] OR th11[tw] OR th12[tw] OR d1[tw] OR d2[tw] OR d3[tw] OR d4[tw] OR d5[tw] OR d6[tw] OR d7[tw] OR d8[tw] OR d9[tw] OR d10[tw] OR d11[tw] OR d12[tw] OR l1[tw] OR l2[tw] OR l3[tw] OR l4[tw] OR l5[tw] OR l6[tw])))))) NOT ((case reports[Publication Type] OR "case report"[Title]) NOT ((((systematic review[ti] OR systematic literature review[ti] OR systematic scoping review[ti] OR systematic narrative review[ti] OR systematic qualitative review[ti] OR systematic evidence review[ti] OR systematic quantitative review[ti] OR systematic meta-review[ti] OR systematic critical review[ti] OR systematic mixed studies review[ti] OR systematic mapping review[ti] OR systematic cochrane review[ti] OR systematic search and review[ti] OR systematic integrative review[ti]) NOT comment[pt] NOT (protocol[ti] OR protocols[ti])) NOT MEDLINE [subset]) OR (Cochrane Database Syst Rev[ta] AND review[pt]) OR systematic review[pt]))) NOT ((Animals[mh:noexp] not Humans[mh:noexp]))) AND 1600/01/01:2019/02/26[crdt]))))`

Систематический гроб — это теперь [systematic[sb]](https://www.nlm.nih.gov/bsd/pubmed_subsets/sysreviews_strategy.html) так выглядит (с декабря 2018):

`(((systematic review[ti] OR systematic literature review[ti] OR systematic scoping review[ti] OR systematic narrative review[ti] OR systematic qualitative review[ti] OR systematic evidence review[ti] OR systematic quantitative review[ti] OR systematic meta-review[ti] OR systematic critical review[ti] OR systematic mixed studies review[ti] OR systematic mapping review[ti] OR systematic cochrane review[ti] OR systematic search and review[ti] OR systematic integrative review[ti]) NOT comment[pt] NOT (protocol[ti] OR protocols[ti])) NOT MEDLINE [subset]) OR (Cochrane Database Syst Rev[ta] AND review[pt]) OR systematic review[pt]`

Перезапустил на момент коммита: 1458 записей.

И понятно почему: меш-термины в запросе стоят без ограничений по MHDA, и с тех пор просто часть записей проиндексировали по заноченным мешам, и теперь они выночиваются. Так что надо добавить MHDA везде.

`
((((((((((((((burst[Text Word]) OR ((a2[tw] OR a3[tw] OR a4[tw]))) OR AOSpine[Text Word]) OR AO[Text Word]) OR Arbeitsgemeinschaft fur Osteosynthesefragen[Text Word])) AND (((((((fractur*[Text Word]) OR injur*[Text Word]) OR (fractures, bone[mh:noexp] 1600/01/01:2019/02/26[mhda]))) OR dislocat*[Text Word])) AND (((((((thoracic[Text Word]) OR lumbar[Text Word]) OR (thoracic vertebrae[MeSH Terms] 1600/01/01:2019/02/26[mhda])) OR (lumbar vertebrae[MeSH Terms] 1600/01/01:2019/02/26[mhda])) OR thoraco*[Text Word])) OR ((t1[tw] OR t2[tw] OR t3[tw] OR t4[tw] OR t5[tw] OR t6[tw] OR t7[tw] OR t8[tw] OR t9[tw] OR t10[tw] OR t11[tw] OR t12[tw] OR th1[tw] OR th2[tw] OR th3[tw] OR th4[tw] OR th5[tw] OR th6[tw] OR th7[tw] OR th8[tw] OR th9[tw] OR th10[tw] OR th11[tw] OR th12[tw] OR d1[tw] OR d2[tw] OR d3[tw] OR d4[tw] OR d5[tw] OR d6[tw] OR d7[tw] OR d8[tw] OR d9[tw] OR d10[tw] OR d11[tw] OR d12[tw] OR l1[tw] OR l2[tw] OR l3[tw] OR l4[tw] OR l5[tw] OR l6[tw])))))) NOT (((case reports[Publication Type] 1600/01/01:2019/02/26[mhda]) OR "case report"[Title]) NOT ((((systematic review[ti] OR systematic literature review[ti] OR systematic scoping review[ti] OR systematic narrative review[ti] OR systematic qualitative review[ti] OR systematic evidence review[ti] OR systematic quantitative review[ti] OR systematic meta-review[ti] OR systematic critical review[ti] OR systematic mixed studies review[ti] OR systematic mapping review[ti] OR systematic cochrane review[ti] OR systematic search and review[ti] OR systematic integrative review[ti]) NOT (comment[pt] 1600/01/01:2019/02/26[mhda]) NOT (protocol[ti] OR protocols[ti])) NOT (MEDLINE [subset] 1600/01/01:2019/02/26[mhda])) OR (Cochrane Database Syst Rev[ta] AND (review[pt] 1600/01/01:2019/02/26[mhda])) OR (systematic review[pt] 1600/01/01:2019/02/26[mhda])))) NOT (((Animals[mh:noexp] not Humans[mh:noexp]) 1600/01/01:2019/02/26[mhda]))) AND 1600/01/01:2019/02/26[crdt]))))`

Выдает 1461. Перестарался. 😁 Далее будем использовать эту версию.

~~Также _очень_ сильно смущает меня `NOT "case report"[Title]`, потому что весьма не редки статьи-наблюдения и обзорами литературы. Надо попробовать без него; вдруг не так сильно увеличит общее число записей.~~ А нет, стоп, стоп: все же в порядке! Там же гроб на СО. А наблюдения с несистематическими обзорами нам и не очень-то сдались (потому что нам несистематические обзоры в принципе не сдались, поскольку не являются адекватным дизайном исследования).

Итак, сейчас все проверим — готово.

Вот и попробуем этот запрос применить для целей xt-ao-type-a.

Перезапуск на 1461 от 04.04.2019:

`((((((((((((((burst[Text Word]) OR ((a2[tw] OR a3[tw] OR a4[tw]))) OR AOSpine[Text Word]) OR AO[Text Word]) OR Arbeitsgemeinschaft fur Osteosynthesefragen[Text Word])) AND (((((((fractur*[Text Word]) OR injur*[Text Word]) OR (fractures, bone[mh:noexp] 1600/01/01:2019/04/02[mhda]))) OR dislocat*[Text Word])) AND (((((((thoracic[Text Word]) OR lumbar[Text Word]) OR (thoracic vertebrae[MeSH Terms] 1600/01/01:2019/04/02[mhda])) OR (lumbar vertebrae[MeSH Terms] 1600/01/01:2019/04/02[mhda])) OR thoraco*[Text Word])) OR ((t1[tw] OR t2[tw] OR t3[tw] OR t4[tw] OR t5[tw] OR t6[tw] OR t7[tw] OR t8[tw] OR t9[tw] OR t10[tw] OR t11[tw] OR t12[tw] OR th1[tw] OR th2[tw] OR th3[tw] OR th4[tw] OR th5[tw] OR th6[tw] OR th7[tw] OR th8[tw] OR th9[tw] OR th10[tw] OR th11[tw] OR th12[tw] OR d1[tw] OR d2[tw] OR d3[tw] OR d4[tw] OR d5[tw] OR d6[tw] OR d7[tw] OR d8[tw] OR d9[tw] OR d10[tw] OR d11[tw] OR d12[tw] OR l1[tw] OR l2[tw] OR l3[tw] OR l4[tw] OR l5[tw] OR l6[tw])))))) NOT (((case reports[Publication Type] 1600/01/01:2019/04/02[mhda]) OR "case report"[Title]) NOT ((((systematic review[ti] OR systematic literature review[ti] OR systematic scoping review[ti] OR systematic narrative review[ti] OR systematic qualitative review[ti] OR systematic evidence review[ti] OR systematic quantitative review[ti] OR systematic meta-review[ti] OR systematic critical review[ti] OR systematic mixed studies review[ti] OR systematic mapping review[ti] OR systematic cochrane review[ti] OR systematic search and review[ti] OR systematic integrative review[ti]) NOT (comment[pt] 1600/01/01:2019/04/02[mhda]) NOT (protocol[ti] OR protocols[ti])) NOT (MEDLINE [subset] 1600/01/01:2019/04/02[mhda])) OR (Cochrane Database Syst Rev[ta] AND (review[pt] 1600/01/01:2019/04/02[mhda])) OR (systematic review[pt] 1600/01/01:2019/04/02[mhda])))) NOT (((Animals[mh:noexp] not Humans[mh:noexp]) 1600/01/01:2019/04/02[mhda]))) AND 1600/01/01:2019/04/02[crdt]))))`
