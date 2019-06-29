# METHOD.md

## Цель

Составить максимально всеобъемлющий запрос по неосложненным взрывным (в интерпретации [классификации AO 2018](https://classification.aoeducation.org)) переломам грудных и поясничных позвонков не при политравме, пользуясь свободным текстом и MeSH.

## Актуальность

Я пытаюсь отработать новый запрос, потому что старый, как я тут поразмышлял, ну совсем никуда не годится.

Причем возможно, что я буду пускать несколько запросов по обзору по взрывным переломам (см. репозиторий xt-ao-type-a). Похоже, что без этого мне не обойтись.

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

## Взрывные и AO переломы/вывихи ГОП/ПОП, не клинические наблюдения, от 28.02.2019, последнее обновление 13.04.2019 (PubMed, MeSH + свободный текст, _не_ на скорую руку)

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

Почему-то перезапуск того же от 13.04.2018 возвращает 1463, а не 1462.

Выяснил, что это за счет вот этой записи:

```
PMID- 30104626
OWN - NLM
STAT- MEDLINE
DCOM- 20190408
LR  - 20190408
IS  - 1935-3456 (Electronic)
IS  - 1933-0219 (Linking)
VI  - 11
IP  - 6
DP  - 2018 Nov
TI  - Dietary DHA amplifies LXA4 circuits in tissues and lymph node PMN and is
      protective in immune-driven dry eye disease.
PG  - 1674-1683
LID - 10.1038/s41385-018-0070-z [doi]
AB  - Recently identified regulatory PMN control immune-driven dry eye disease (DED) in
      females by producing the arachidonic acid (omega-6)-derived specialized
      pro-resolving mediator (SPM), LXA4, in lymph nodes. Dietary omega-3
      docosahexaenoic acid (DHA) is protective in DED but mechanisms of action remain
      elusive. DHA is converted to omega-3 SPMs by PMN via the same lipoxygenases (LOX)
      that generate LXA4. We investigated if dietary DHA amplifies SPM formation and
      affects T effector cell function and/or regulatory PMN in DED. DED was induced in
      mice on a DHA-enriched or omega-3-deficient diet. DHA deficiency amplified DED
      with marked sex-specific differences. Dietary DHA protection against dry eye
      disease correlated with increased PMN levels in lymph nodes, ocular tissues, and 
      unexpectedly, selective amplification of LXA4 tissue levels. Dietary DHA
      increased 12/15-LOX and decreased 5-LOX expression in lymph nodes and isolated
      lymph node PMN, which correlated with amplified LXA4 formation. Acute DHA
      treatment rescued DHA-deficient females from exaggerated DED by amplifying lymph 
      node LXA4 formation, increasing Treg and decreasing TH1 and TH17 effector cells. 
      Our results identify DHA regulation of LXA4 producing PMN in ocular tissues and
      lymph nodes in health and immune disease as novel mechanism and determinant for
      T-cell responses to routine ocular injury or stress signals.
FAU - Gao, Yuan
AU  - Gao Y
AD  - Southwest Hospital/Southwest Eye Hospital, Third Military Medical University,
      Chongqing, 400038, China.
AD  - Key Lab of Visual Damage and Regeneration & Restoration of Chongqing, Chongqing, 
      400038, China.
AD  - Vision Science Program, University of California Berkeley, Berkeley, CA, 94720,
      USA.
AD  - School of Optometry, University of California Berkeley, Berkeley, CA, 94720, USA.
FAU - Su, John
AU  - Su J
AD  - Vision Science Program, University of California Berkeley, Berkeley, CA, 94720,
      USA.
FAU - Zhang, Yibing
AU  - Zhang Y
AD  - Vision Science Program, University of California Berkeley, Berkeley, CA, 94720,
      USA.
FAU - Chan, Allison
AU  - Chan A
AD  - Vision Science Program, University of California Berkeley, Berkeley, CA, 94720,
      USA.
FAU - Sin, Jun Hyung
AU  - Sin JH
AD  - Vision Science Program, University of California Berkeley, Berkeley, CA, 94720,
      USA.
FAU - Wu, Di
AU  - Wu D
AD  - Vision Science Program, University of California Berkeley, Berkeley, CA, 94720,
      USA.
FAU - Min, Kyungi
AU  - Min K
AD  - Vision Science Program, University of California Berkeley, Berkeley, CA, 94720,
      USA.
FAU - Gronert, Karsten
AU  - Gronert K
AD  - Vision Science Program, University of California Berkeley, Berkeley, CA, 94720,
      USA. kgronert@berkeley.edu.
AD  - School of Optometry, University of California Berkeley, Berkeley, CA, 94720, USA.
      kgronert@berkeley.edu.
AD  - Infectious Disease and Immunity Program, University of California Berkeley,
      Berkeley, CA, 94720, USA. kgronert@berkeley.edu.
LA  - eng
GR  - P30 EY003176/EY/NEI NIH HHS/United States
GR  - R01 EY022208/EY/NEI NIH HHS/United States
GR  - R01 EY026082/EY/NEI NIH HHS/United States
PT  - Journal Article
PT  - Research Support, N.I.H., Extramural
DEP - 20180813
PL  - United States
TA  - Mucosal Immunol
JT  - Mucosal immunology
JID - 101299742
RN  - 0 (Lipoxins)
RN  - 0 (lipoxin A4)
RN  - 25167-62-8 (Docosahexaenoic Acids)
SB  - IM
MH  - Animals
MH  - Cells, Cultured
MH  - *Diet
MH  - Docosahexaenoic Acids/deficiency/metabolism
MH  - Dry Eye Syndromes/*immunology
MH  - Eye/*immunology
MH  - Female
MH  - Humans
MH  - Lipoxins/*metabolism
MH  - Lymph Nodes/*immunology
MH  - Male
MH  - Mice
MH  - Mice, Inbred C57BL
MH  - Neutrophils/*immunology
MH  - T-Lymphocytes, Regulatory/*immunology
PMC - PMC6279588
MID - NIHMS980902
EDAT- 2018/08/15 06:00
MHDA- 2019/04/09 06:00
CRDT- 2018/08/15 06:00
PHST- 2018/03/30 00:00 [received]
PHST- 2018/07/10 00:00 [accepted]
PHST- 2018/07/02 00:00 [revised]
PHST- 2018/08/15 06:00 [pubmed]
PHST- 2019/04/09 06:00 [medline]
PHST- 2018/08/15 06:00 [entrez]
AID - 10.1038/s41385-018-0070-z [doi]
AID - 10.1038/s41385-018-0070-z [pii]
PST - ppublish
SO  - Mucosal Immunol. 2018 Nov;11(6):1674-1683. doi: 10.1038/s41385-018-0070-z. Epub
      2018 Aug 13.
```

Проверяю запрос: заменяю круглые скобки на фигурные, добавляю автоотступы (спасибо, например, [HTML Formatter](https://htmlformatter.com/)), проверяю.

Что-то малопонятное за счет того, что запрос был изначально автособран в поисковом конструкторе Пабмеда. Перепишу начисто руками.

Итак, тот же запрос начисто руками:

```
(1600/01/01:2019/04/02[crdt]
AND
(compression[Text Word] OR burst[Text Word] OR a2[tw] OR a3[tw] OR a4[tw] OR AOSpine[Text Word] OR AO[Text Word] OR "Arbeitsgemeinschaft fur Osteosynthesefragen"[Text Word])
AND
(fractur*[Text Word] OR injur*[Text Word] OR ((fractures, bone[mh:noexp]) 1600/01/01:2019/04/02[mhda]) OR dislocat*[Text Word]) 
AND
(thoracic[Text Word] OR lumbar[Text Word] OR ((thoracic vertebrae[MeSH Terms]) 1600/01/01:2019/04/02[mhda]) OR ((lumbar vertebrae[MeSH Terms]) 1600/01/01:2019/04/02[mhda]) OR thoraco*[Text Word] OR t1[tw] OR t2[tw] OR t3[tw] OR t4[tw] OR t5[tw] OR t6[tw] OR t7[tw] OR t8[tw] OR t9[tw] OR t10[tw] OR t11[tw] OR t12[tw] OR th1[tw] OR th2[tw] OR th3[tw] OR th4[tw] OR th5[tw] OR th6[tw] OR th7[tw] OR th8[tw] OR th9[tw] OR th10[tw] OR th11[tw] OR th12[tw] OR d1[tw] OR d2[tw] OR d3[tw] OR d4[tw] OR d5[tw] OR d6[tw] OR d7[tw] OR d8[tw] OR d9[tw] OR d10[tw] OR d11[tw] OR d12[tw] OR l1[tw] OR l2[tw] OR l3[tw] OR l4[tw] OR l5[tw] OR l6[tw]))
NOT
(
    (
        (((case reports[Publication Type]) 1600/01/01:2019/04/02[mhda]) OR "case report"[Title]
        )
        NOT
        (
        (((systematic review[ti] OR systematic literature review[ti] OR systematic scoping review[ti] OR 
systematic narrative review[ti] OR systematic qualitative review[ti] OR systematic evidence review[ti] OR 
systematic quantitative review[ti] OR systematic meta-review[ti] OR systematic critical review[ti] OR 
systematic mixed studies review[ti] OR systematic mapping review[ti] OR systematic cochrane review[ti] OR 
systematic search and review[ti] OR systematic integrative review[ti]) NOT (comment[pt] 1600/01/01:2019/04/02[mhda]) NOT (protocol[ti] OR 
protocols[ti])) NOT (MEDLINE [subset] 1600/01/01:2019/04/02[mhda])) OR (Cochrane Database Syst Rev[ta] AND (review[pt] 1600/01/01:2019/04/02[mhda])) OR 
((systematic review[pt]) 1600/01/01:2019/04/02[mhda])
        )
    )
    OR
    ((Animals[mh:noexp] NOT Humans[mh:noexp]) 1600/01/01:2019/04/02[mhda])
)
```

Возвращает 4466 вместо 1462. Проверяю еще раз вручную.

Да нет, вроде все верно в запросе. Сейчас, только обновлю еще под 13.04.2019:

```
(1600/01/01:2019/04/11[crdt]
AND
(compression[Text Word] OR burst[Text Word] OR a2[tw] OR a3[tw] OR a4[tw] OR AOSpine[Text Word] OR AO[Text Word] OR "Arbeitsgemeinschaft fur Osteosynthesefragen"[Text Word])
AND
(fractur*[Text Word] OR injur*[Text Word] OR ((fractures, bone[mh:noexp]) 1600/01/01:2019/04/11[mhda]) OR dislocat*[Text Word]) 
AND
(thoracic[Text Word] OR lumbar[Text Word] OR ((thoracic vertebrae[MeSH Terms]) 1600/01/01:2019/04/11[mhda]) OR ((lumbar vertebrae[MeSH Terms]) 1600/01/01:2019/04/11[mhda]) OR thoraco*[Text Word] OR t1[tw] OR t2[tw] OR t3[tw] OR t4[tw] OR t5[tw] OR t6[tw] OR t7[tw] OR t8[tw] OR t9[tw] OR t10[tw] OR t11[tw] OR t12[tw] OR th1[tw] OR th2[tw] OR th3[tw] OR th4[tw] OR th5[tw] OR th6[tw] OR th7[tw] OR th8[tw] OR th9[tw] OR th10[tw] OR th11[tw] OR th12[tw] OR d1[tw] OR d2[tw] OR d3[tw] OR d4[tw] OR d5[tw] OR d6[tw] OR d7[tw] OR d8[tw] OR d9[tw] OR d10[tw] OR d11[tw] OR d12[tw] OR l1[tw] OR l2[tw] OR l3[tw] OR l4[tw] OR l5[tw] OR l6[tw]))
NOT
(
    (
        (((case reports[Publication Type]) 1600/01/01:2019/04/11[mhda]) OR "case report"[Title]
        )
        NOT
        (
        (((systematic review[ti] OR systematic literature review[ti] OR systematic scoping review[ti] OR 
systematic narrative review[ti] OR systematic qualitative review[ti] OR systematic evidence review[ti] OR 
systematic quantitative review[ti] OR systematic meta-review[ti] OR systematic critical review[ti] OR 
systematic mixed studies review[ti] OR systematic mapping review[ti] OR systematic cochrane review[ti] OR 
systematic search and review[ti] OR systematic integrative review[ti]) NOT (comment[pt] 1600/01/01:2019/04/11[mhda]) NOT (protocol[ti] OR 
protocols[ti])) NOT (MEDLINE [subset] 1600/01/01:2019/04/11[mhda])) OR (Cochrane Database Syst Rev[ta] AND (review[pt] 1600/01/01:2019/04/11[mhda])) OR 
((systematic review[pt]) 1600/01/01:2019/04/11[mhda])
        )
    )
    OR
    ((Animals[mh:noexp] NOT Humans[mh:noexp]) 1600/01/01:2019/04/11[mhda])
)
```

Возвращает 4468 (список PMID, отсортированный по убыванию по дате публикации, `pubmed_result_4468.txt` прилагаю). 4468 значит. Буду думать тогда, как еще по-умному сузить. 

Вот так случайно выяснилось, что запрос работает _совсем_ не так, как ему положено. А всего-то хотел перевыгрузить из Пабмеда с сортировкой по дате публикации.

Беру свои 100 неисключенных по SFMHSUSH v2 и изучаю список тех из них, что не вошли в 4468 (срываю сейчас маскирование по SFMHSUSH v2, ну и ладно):

```
(25320199[pmid] OR 22009840[pmid] OR 19411450[pmid] OR 1806079[pmid] OR 23728686[pmid] OR 24018981[pmid] OR 24326026[pmid] OR 25645322[pmid] OR 24563980[pmid] OR 21644092[pmid] OR 29151568[pmid] OR 28343026[pmid] OR 28035907[pmid] OR 27648675[pmid] OR 27584674[pmid] OR 27541493[pmid] OR 24919003[pmid] OR 24890141[pmid] OR 26455226[pmid] OR 24867898[pmid] OR 24358996[pmid] OR 24284240[pmid] OR 24136267[pmid] OR 23905953[pmid] OR 23740669[pmid] OR 23672907[pmid] OR 23263169[pmid] OR 21548257[pmid] OR 20646506[pmid] OR 19946295[pmid] OR 19718404[pmid] OR 19525832[pmid] OR 11569156[pmid] OR 11172655[pmid] OR 10851954[pmid] OR 7817241[pmid] OR 18563333[pmid] OR 19652568[pmid] OR 17077731[pmid] OR 16622372[pmid] OR 15699801[pmid] OR 15682000[pmid] OR 12728024[pmid] OR 7482020[pmid] OR 2218713[pmid] OR 17139218[pmid] OR 17109106[pmid] OR 17054237[pmid] OR 16703901[pmid] OR 16306834[pmid] OR 15690209[pmid] OR 15087804[pmid] OR 12810974[pmid] OR 11806392[pmid] OR 11154543[pmid] OR 2028330[pmid] OR 1428329[pmid] OR 19094653[pmid] OR 25568388[pmid] OR 29924040[pmid] OR 28777064[pmid] OR 20407345[pmid] OR 26202101[pmid] OR 25077910[pmid] OR 23996046[pmid] OR 22971486[pmid] OR 22844053[pmid] OR 22057820[pmid] OR 21067776[pmid] OR 20495932[pmid] OR 26051881[pmid] OR 27537586[pmid] OR 25396259[pmid] OR 20881467[pmid] OR 27262651[pmid] OR 24013718[pmid] OR 23676860[pmid] OR 28800928[pmid] OR 28739478[pmid] OR 26983411[pmid] OR 26907876[pmid] OR 25890296[pmid] OR 29419692[pmid] OR 29113901[pmid] OR 28803178[pmid] OR 28641907[pmid] OR 27757682[pmid] OR 27028069[pmid] OR 26414835[pmid] OR 25842559[pmid] OR 25150769[pmid] OR 23704968[pmid] OR 23053291[pmid] OR 20535041[pmid] OR 20023338[pmid] OR 11337622[pmid] OR 25648401[pmid] OR 24981907[pmid] OR 24981897[pmid] OR 17320622[pmid]) NOT ((1600/01/01:2019/04/11[crdt]
AND
(compression[Text Word] OR burst[Text Word] OR a2[tw] OR a3[tw] OR a4[tw] OR AOSpine[Text Word] OR AO[Text Word] OR "Arbeitsgemeinschaft fur Osteosynthesefragen"[Text Word])
AND
(fractur*[Text Word] OR injur*[Text Word] OR ((fractures, bone[mh:noexp]) 1600/01/01:2019/04/11[mhda]) OR dislocat*[Text Word]) 
AND
(thoracic[Text Word] OR lumbar[Text Word] OR ((thoracic vertebrae[MeSH Terms]) 1600/01/01:2019/04/11[mhda]) OR ((lumbar vertebrae[MeSH Terms]) 1600/01/01:2019/04/11[mhda]) OR thoraco*[Text Word] OR t1[tw] OR t2[tw] OR t3[tw] OR t4[tw] OR t5[tw] OR t6[tw] OR t7[tw] OR t8[tw] OR t9[tw] OR t10[tw] OR t11[tw] OR t12[tw] OR th1[tw] OR th2[tw] OR th3[tw] OR th4[tw] OR th5[tw] OR th6[tw] OR th7[tw] OR th8[tw] OR th9[tw] OR th10[tw] OR th11[tw] OR th12[tw] OR d1[tw] OR d2[tw] OR d3[tw] OR d4[tw] OR d5[tw] OR d6[tw] OR d7[tw] OR d8[tw] OR d9[tw] OR d10[tw] OR d11[tw] OR d12[tw] OR l1[tw] OR l2[tw] OR l3[tw] OR l4[tw] OR l5[tw] OR l6[tw]))
NOT
(
    (
        (((case reports[Publication Type]) 1600/01/01:2019/04/11[mhda]) OR "case report"[Title]
        )
        NOT
        (
        (((systematic review[ti] OR systematic literature review[ti] OR systematic scoping review[ti] OR 
systematic narrative review[ti] OR systematic qualitative review[ti] OR systematic evidence review[ti] OR 
systematic quantitative review[ti] OR systematic meta-review[ti] OR systematic critical review[ti] OR 
systematic mixed studies review[ti] OR systematic mapping review[ti] OR systematic cochrane review[ti] OR 
systematic search and review[ti] OR systematic integrative review[ti]) NOT (comment[pt] 1600/01/01:2019/04/11[mhda]) NOT (protocol[ti] OR 
protocols[ti])) NOT (MEDLINE [subset] 1600/01/01:2019/04/11[mhda])) OR (Cochrane Database Syst Rev[ta] AND (review[pt] 1600/01/01:2019/04/11[mhda])) OR 
((systematic review[pt]) 1600/01/01:2019/04/11[mhda])
        )
    )
    OR
    ((Animals[mh:noexp] NOT Humans[mh:noexp]) 1600/01/01:2019/04/11[mhda])
))
```

Возвращает 32 записи.

Также посмотрю те, что, наоборот, выдаются по новому запросу:

```
(25320199[pmid] OR 22009840[pmid] OR 19411450[pmid] OR 1806079[pmid] OR 23728686[pmid] OR 24018981[pmid] OR 24326026[pmid] OR 25645322[pmid] OR 24563980[pmid] OR 21644092[pmid] OR 29151568[pmid] OR 28343026[pmid] OR 28035907[pmid] OR 27648675[pmid] OR 27584674[pmid] OR 27541493[pmid] OR 24919003[pmid] OR 24890141[pmid] OR 26455226[pmid] OR 24867898[pmid] OR 24358996[pmid] OR 24284240[pmid] OR 24136267[pmid] OR 23905953[pmid] OR 23740669[pmid] OR 23672907[pmid] OR 23263169[pmid] OR 21548257[pmid] OR 20646506[pmid] OR 19946295[pmid] OR 19718404[pmid] OR 19525832[pmid] OR 11569156[pmid] OR 11172655[pmid] OR 10851954[pmid] OR 7817241[pmid] OR 18563333[pmid] OR 19652568[pmid] OR 17077731[pmid] OR 16622372[pmid] OR 15699801[pmid] OR 15682000[pmid] OR 12728024[pmid] OR 7482020[pmid] OR 2218713[pmid] OR 17139218[pmid] OR 17109106[pmid] OR 17054237[pmid] OR 16703901[pmid] OR 16306834[pmid] OR 15690209[pmid] OR 15087804[pmid] OR 12810974[pmid] OR 11806392[pmid] OR 11154543[pmid] OR 2028330[pmid] OR 1428329[pmid] OR 19094653[pmid] OR 25568388[pmid] OR 29924040[pmid] OR 28777064[pmid] OR 20407345[pmid] OR 26202101[pmid] OR 25077910[pmid] OR 23996046[pmid] OR 22971486[pmid] OR 22844053[pmid] OR 22057820[pmid] OR 21067776[pmid] OR 20495932[pmid] OR 26051881[pmid] OR 27537586[pmid] OR 25396259[pmid] OR 20881467[pmid] OR 27262651[pmid] OR 24013718[pmid] OR 23676860[pmid] OR 28800928[pmid] OR 28739478[pmid] OR 26983411[pmid] OR 26907876[pmid] OR 25890296[pmid] OR 29419692[pmid] OR 29113901[pmid] OR 28803178[pmid] OR 28641907[pmid] OR 27757682[pmid] OR 27028069[pmid] OR 26414835[pmid] OR 25842559[pmid] OR 25150769[pmid] OR 23704968[pmid] OR 23053291[pmid] OR 20535041[pmid] OR 20023338[pmid] OR 11337622[pmid] OR 25648401[pmid] OR 24981907[pmid] OR 24981897[pmid] OR 17320622[pmid]) AND ((1600/01/01:2019/04/11[crdt]
AND
(compression[Text Word] OR burst[Text Word] OR a2[tw] OR a3[tw] OR a4[tw] OR AOSpine[Text Word] OR AO[Text Word] OR "Arbeitsgemeinschaft fur Osteosynthesefragen"[Text Word])
AND
(fractur*[Text Word] OR injur*[Text Word] OR ((fractures, bone[mh:noexp]) 1600/01/01:2019/04/11[mhda]) OR dislocat*[Text Word]) 
AND
(thoracic[Text Word] OR lumbar[Text Word] OR ((thoracic vertebrae[MeSH Terms]) 1600/01/01:2019/04/11[mhda]) OR ((lumbar vertebrae[MeSH Terms]) 1600/01/01:2019/04/11[mhda]) OR thoraco*[Text Word] OR t1[tw] OR t2[tw] OR t3[tw] OR t4[tw] OR t5[tw] OR t6[tw] OR t7[tw] OR t8[tw] OR t9[tw] OR t10[tw] OR t11[tw] OR t12[tw] OR th1[tw] OR th2[tw] OR th3[tw] OR th4[tw] OR th5[tw] OR th6[tw] OR th7[tw] OR th8[tw] OR th9[tw] OR th10[tw] OR th11[tw] OR th12[tw] OR d1[tw] OR d2[tw] OR d3[tw] OR d4[tw] OR d5[tw] OR d6[tw] OR d7[tw] OR d8[tw] OR d9[tw] OR d10[tw] OR d11[tw] OR d12[tw] OR l1[tw] OR l2[tw] OR l3[tw] OR l4[tw] OR l5[tw] OR l6[tw]))
NOT
(
    (
        (((case reports[Publication Type]) 1600/01/01:2019/04/11[mhda]) OR "case report"[Title]
        )
        NOT
        (
        (((systematic review[ti] OR systematic literature review[ti] OR systematic scoping review[ti] OR 
systematic narrative review[ti] OR systematic qualitative review[ti] OR systematic evidence review[ti] OR 
systematic quantitative review[ti] OR systematic meta-review[ti] OR systematic critical review[ti] OR 
systematic mixed studies review[ti] OR systematic mapping review[ti] OR systematic cochrane review[ti] OR 
systematic search and review[ti] OR systematic integrative review[ti]) NOT (comment[pt] 1600/01/01:2019/04/11[mhda]) NOT (protocol[ti] OR 
protocols[ti])) NOT (MEDLINE [subset] 1600/01/01:2019/04/11[mhda])) OR (Cochrane Database Syst Rev[ta] AND (review[pt] 1600/01/01:2019/04/11[mhda])) OR 
((systematic review[pt]) 1600/01/01:2019/04/11[mhda])
        )
    )
    OR
    ((Animals[mh:noexp] NOT Humans[mh:noexp]) 1600/01/01:2019/04/11[mhda])
))
```

Должно быть 68 — так и есть (плоды изучения: можно бы попробовать исключить еще вертебропластику, консервативное лечение и повреждение спинного мозга, но рискованно).

Изучение 32 дает плоды: пополняю запрос:

```
((1600/01/01:2019/04/11[crdt]
AND
(compression[Text Word] OR burst[Text Word] OR flexion[tw] OR distraction[tw] OR (posterior[tw] ligament*[tw]) OR PLC[tw] OR Chance[tw] OR dislocation[tw] OR translation[tw] or rotation[tw] OR a2[tw] OR a3[tw] OR a4[tw] OR "b"[tw] OR b1[tw] OR b2[tw] OR "c"[tw] OR c1[tw] OR c2[tw] OR c3[tw] OR TLICS[tw] OR type[tw] OR AOSpine[Text Word] OR AO[Text Word] OR "Arbeitsgemeinschaft fur Osteosynthesefragen"[Text Word] OR Magerl[tw])
AND
(fractur*[Text Word] OR injur*[Text Word] OR ((fractures, bone[mh:noexp]) 1600/01/01:2019/04/11[mhda]) OR dislocat*[Text Word]) 
AND
(thoracic[Text Word] OR lumbar[Text Word] OR ((thoracic vertebrae[MeSH Terms]) 1600/01/01:2019/04/11[mhda]) OR ((lumbar vertebrae[MeSH Terms]) 1600/01/01:2019/04/11[mhda]) OR thoraco*[Text Word] OR t1[tw] OR t2[tw] OR t3[tw] OR t4[tw] OR t5[tw] OR t6[tw] OR t7[tw] OR t8[tw] OR t9[tw] OR t10[tw] OR t11[tw] OR t12[tw] OR th1[tw] OR th2[tw] OR th3[tw] OR th4[tw] OR th5[tw] OR th6[tw] OR th7[tw] OR th8[tw] OR th9[tw] OR th10[tw] OR th11[tw] OR th12[tw] OR d1[tw] OR d2[tw] OR d3[tw] OR d4[tw] OR d5[tw] OR d6[tw] OR d7[tw] OR d8[tw] OR d9[tw] OR d10[tw] OR d11[tw] OR d12[tw] OR l1[tw] OR l2[tw] OR l3[tw] OR l4[tw] OR l5[tw] OR l6[tw]))
NOT
(
    (
        (((case reports[Publication Type]) 1600/01/01:2019/04/11[mhda]) OR "case report"[Title]
        )
        NOT
        (
        (
        (((systematic review[ti] OR systematic literature review[ti] OR systematic scoping review[ti] OR 
systematic narrative review[ti] OR systematic qualitative review[ti] OR systematic evidence review[ti] OR 
systematic quantitative review[ti] OR systematic meta-review[ti] OR systematic critical review[ti] OR 
systematic mixed studies review[ti] OR systematic mapping review[ti] OR systematic cochrane review[ti] OR 
systematic search and review[ti] OR systematic integrative review[ti]) NOT (comment[pt] 1600/01/01:2019/04/11[mhda]) NOT (protocol[ti] OR 
protocols[ti])) NOT (MEDLINE [subset] 1600/01/01:2019/04/11[mhda])) OR (Cochrane Database Syst Rev[ta] AND (review[pt] 1600/01/01:2019/04/11[mhda])) OR 
((systematic review[pt]) 1600/01/01:2019/04/11[mhda])
        )
        OR
        ((Evidence-Based Medicine [mh:noexp]) 1600/01/01:2019/04/11[mhda])
        )
    )
    OR
    ((Animals[mh:noexp] NOT Humans[mh:noexp]) 1600/01/01:2019/04/11[mhda])
))
```

Теперь возвращает 13957 записей. Пока более или менее стабильный вариант.

Попробовал убрать всю часть запроса, ограничивающую по типу перелома (чтобы не мучиться с ее уточнением), и получил за 40 тыс. записей. Не вариант.

Конечно, все релевантные статьи все равно не захватим, потому что подход с сужением по типу перелома явно ограничен тем обстоятельством, отразили ли авторы тип в заголовке или аннотации (и велик шанс, что не отразили, хотя отразили его в материалах).

Не знаю, как по-умному сократить. При сокращении за последние 5 полных лет (плюс аоспайновская классификация вышла только в 2013), по английскому языку и наличию аннотации `2014:2018[dp] english[la] hasabstract` все равно возвращает за 4 тыс. записей, что сейчас не осилить. Видимо, придется отказаться в этом обзоре от систематического поиска, написать по уже имеющимся на руках источникам (плюс-минус дополнительные точечные поиски).

Отчаянно пробую убрать еще и вертебропластику (хотя очень рискованно; надо бы потестировать вначале на имеющейся подборке из 68):

```
2014:2018[dp] english[la] hasabstract
(
(1600/01/01:2019/04/11[crdt]
AND
(compression[Text Word] OR burst[Text Word] OR flexion[tw] OR distraction[tw] OR (posterior[tw] ligament*[tw]) OR PLC[tw] OR Chance[tw] OR dislocation[tw] OR translation[tw] or rotation[tw] OR a2[tw] OR a3[tw] OR a4[tw] OR "b"[tw] OR b1[tw] OR b2[tw] OR "c"[tw] OR c1[tw] OR c2[tw] OR c3[tw] OR TLICS[tw] OR type[tw] OR AOSpine[Text Word] OR AO[Text Word] OR "Arbeitsgemeinschaft fur Osteosynthesefragen"[Text Word] OR Magerl[tw])
AND
(fractur*[Text Word] OR injur*[Text Word] OR ((fractures, bone[mh:noexp]) 1600/01/01:2019/04/11[mhda]) OR dislocat*[Text Word]) 
AND
(thoracic[Text Word] OR lumbar[Text Word] OR ((thoracic vertebrae[MeSH Terms]) 1600/01/01:2019/04/11[mhda]) OR ((lumbar vertebrae[MeSH Terms]) 1600/01/01:2019/04/11[mhda]) OR thoraco*[Text Word] OR t1[tw] OR t2[tw] OR t3[tw] OR t4[tw] OR t5[tw] OR t6[tw] OR t7[tw] OR t8[tw] OR t9[tw] OR t10[tw] OR t11[tw] OR t12[tw] OR th1[tw] OR th2[tw] OR th3[tw] OR th4[tw] OR th5[tw] OR th6[tw] OR th7[tw] OR th8[tw] OR th9[tw] OR th10[tw] OR th11[tw] OR th12[tw] OR d1[tw] OR d2[tw] OR d3[tw] OR d4[tw] OR d5[tw] OR d6[tw] OR d7[tw] OR d8[tw] OR d9[tw] OR d10[tw] OR d11[tw] OR d12[tw] OR l1[tw] OR l2[tw] OR l3[tw] OR l4[tw] OR l5[tw] OR l6[tw]))
NOT
(
    (
        (((case reports[Publication Type]) 1600/01/01:2019/04/11[mhda]) OR "case report"[Title]
        )
        NOT
        (
        (
        (((systematic review[ti] OR systematic literature review[ti] OR systematic scoping review[ti] OR 
systematic narrative review[ti] OR systematic qualitative review[ti] OR systematic evidence review[ti] OR 
systematic quantitative review[ti] OR systematic meta-review[ti] OR systematic critical review[ti] OR 
systematic mixed studies review[ti] OR systematic mapping review[ti] OR systematic cochrane review[ti] OR 
systematic search and review[ti] OR systematic integrative review[ti]) NOT (comment[pt] 1600/01/01:2019/04/11[mhda]) NOT (protocol[ti] OR 
protocols[ti])) NOT (MEDLINE [subset] 1600/01/01:2019/04/11[mhda])) OR (Cochrane Database Syst Rev[ta] AND (review[pt] 1600/01/01:2019/04/11[mhda])) OR 
((systematic review[pt]) 1600/01/01:2019/04/11[mhda])
        )
        OR
        ((Evidence-Based Medicine [mh:noexp]) 1600/01/01:2019/04/11[mhda])
        )
    )
    OR
    ((Animals[mh:noexp] NOT Humans[mh:noexp]) 1600/01/01:2019/04/11[mhda])
)
NOT
(kyphoplast*[tiab] OR vertebroplast*[tiab] OR sarcoplast*[tiab] OR stentoplast*[tiab] OR augment*[tiab] OR cementoplast*[tiab] OR (Cementoplasty[mh] 1600/01/01:2019/04/11[mhda]))
)
```

Возвращает 3817 записей. Посмотрим дальше.

Тестирую исключение по вертебропластике на 68:

```
(
((25320199[pmid] OR 22009840[pmid] OR 19411450[pmid] OR 1806079[pmid] OR 23728686[pmid] OR 24018981[pmid] OR 24326026[pmid] OR 25645322[pmid] OR 24563980[pmid] OR 21644092[pmid] OR 29151568[pmid] OR 28343026[pmid] OR 28035907[pmid] OR 27648675[pmid] OR 27584674[pmid] OR 27541493[pmid] OR 24919003[pmid] OR 24890141[pmid] OR 26455226[pmid] OR 24867898[pmid] OR 24358996[pmid] OR 24284240[pmid] OR 24136267[pmid] OR 23905953[pmid] OR 23740669[pmid] OR 23672907[pmid] OR 23263169[pmid] OR 21548257[pmid] OR 20646506[pmid] OR 19946295[pmid] OR 19718404[pmid] OR 19525832[pmid] OR 11569156[pmid] OR 11172655[pmid] OR 10851954[pmid] OR 7817241[pmid] OR 18563333[pmid] OR 19652568[pmid] OR 17077731[pmid] OR 16622372[pmid] OR 15699801[pmid] OR 15682000[pmid] OR 12728024[pmid] OR 7482020[pmid] OR 2218713[pmid] OR 17139218[pmid] OR 17109106[pmid] OR 17054237[pmid] OR 16703901[pmid] OR 16306834[pmid] OR 15690209[pmid] OR 15087804[pmid] OR 12810974[pmid] OR 11806392[pmid] OR 11154543[pmid] OR 2028330[pmid] OR 1428329[pmid] OR 19094653[pmid] OR 25568388[pmid] OR 29924040[pmid] OR 28777064[pmid] OR 20407345[pmid] OR 26202101[pmid] OR 25077910[pmid] OR 23996046[pmid] OR 22971486[pmid] OR 22844053[pmid] OR 22057820[pmid] OR 21067776[pmid] OR 20495932[pmid] OR 26051881[pmid] OR 27537586[pmid] OR 25396259[pmid] OR 20881467[pmid] OR 27262651[pmid] OR 24013718[pmid] OR 23676860[pmid] OR 28800928[pmid] OR 28739478[pmid] OR 26983411[pmid] OR 26907876[pmid] OR 25890296[pmid] OR 29419692[pmid] OR 29113901[pmid] OR 28803178[pmid] OR 28641907[pmid] OR 27757682[pmid] OR 27028069[pmid] OR 26414835[pmid] OR 25842559[pmid] OR 25150769[pmid] OR 23704968[pmid] OR 23053291[pmid] OR 20535041[pmid] OR 20023338[pmid] OR 11337622[pmid] OR 25648401[pmid] OR 24981907[pmid] OR 24981897[pmid] OR 17320622[pmid]) AND ((1600/01/01:2019/04/11[crdt]
AND
(compression[Text Word] OR burst[Text Word] OR a2[tw] OR a3[tw] OR a4[tw] OR AOSpine[Text Word] OR AO[Text Word] OR "Arbeitsgemeinschaft fur Osteosynthesefragen"[Text Word])
AND
(fractur*[Text Word] OR injur*[Text Word] OR ((fractures, bone[mh:noexp]) 1600/01/01:2019/04/11[mhda]) OR dislocat*[Text Word]) 
AND
(thoracic[Text Word] OR lumbar[Text Word] OR ((thoracic vertebrae[MeSH Terms]) 1600/01/01:2019/04/11[mhda]) OR ((lumbar vertebrae[MeSH Terms]) 1600/01/01:2019/04/11[mhda]) OR thoraco*[Text Word] OR t1[tw] OR t2[tw] OR t3[tw] OR t4[tw] OR t5[tw] OR t6[tw] OR t7[tw] OR t8[tw] OR t9[tw] OR t10[tw] OR t11[tw] OR t12[tw] OR th1[tw] OR th2[tw] OR th3[tw] OR th4[tw] OR th5[tw] OR th6[tw] OR th7[tw] OR th8[tw] OR th9[tw] OR th10[tw] OR th11[tw] OR th12[tw] OR d1[tw] OR d2[tw] OR d3[tw] OR d4[tw] OR d5[tw] OR d6[tw] OR d7[tw] OR d8[tw] OR d9[tw] OR d10[tw] OR d11[tw] OR d12[tw] OR l1[tw] OR l2[tw] OR l3[tw] OR l4[tw] OR l5[tw] OR l6[tw]))
NOT
(
    (
        (((case reports[Publication Type]) 1600/01/01:2019/04/11[mhda]) OR "case report"[Title]
        )
        NOT
        (
        (((systematic review[ti] OR systematic literature review[ti] OR systematic scoping review[ti] OR 
systematic narrative review[ti] OR systematic qualitative review[ti] OR systematic evidence review[ti] OR 
systematic quantitative review[ti] OR systematic meta-review[ti] OR systematic critical review[ti] OR 
systematic mixed studies review[ti] OR systematic mapping review[ti] OR systematic cochrane review[ti] OR 
systematic search and review[ti] OR systematic integrative review[ti]) NOT (comment[pt] 1600/01/01:2019/04/11[mhda]) NOT (protocol[ti] OR 
protocols[ti])) NOT (MEDLINE [subset] 1600/01/01:2019/04/11[mhda])) OR (Cochrane Database Syst Rev[ta] AND (review[pt] 1600/01/01:2019/04/11[mhda])) OR 
((systematic review[pt]) 1600/01/01:2019/04/11[mhda])
        )
    )
    OR
    ((Animals[mh:noexp] NOT Humans[mh:noexp]) 1600/01/01:2019/04/11[mhda])
)))
AND
(kyphoplast*[tiab] OR vertebroplast*[tiab] OR sarcoplast*[tiab] OR stentoplast*[tiab] OR augment*[tiab] OR cementoplast*[tiab] OR (Cementoplasty[mh] 1600/01/01:2019/04/11[mhda]))
)
```

Возвращает 7 записей `(28035907[pmid] OR 25890296[pmid] OR 25150769[pmid] OR 24563980[pmid] OR 23996046[pmid] OR 21067776[pmid] OR 15682000[pmid])`. Весьма жаль 25150769, которые систематический обзорный обзор по MIS в хирургии травматических взрывных переломов в ГПОП; их бы наверняка взял рассматривать. (Наводит на мысль, что обзоры вообще надо искать отдельно.) Остальные все про фиксацию + ВП/КП — _возможно_, можно было бы и не брать, хотя трудно сказать.

Все равно все это много, не успеть сейчас скринить. Так что пока откладываю этот запрос. Буду писать по уже имеющимся работам (плюс-минус точечные поиски).

-----

Подебажил-таки старый запрос, который возвращал выше в последний раз 1463 от 13.04.2018.

Запрос ниже представляет собой результат дебага, заключавшегося, по сути, в разборе скобок. Возвращает же этот запрос 1464 записи.

```
(
    (
        (
            (
                (burst[Text Word] OR a2[tw] OR a3[tw] OR a4[tw] OR AOSpine[Text Word] OR AO[Text Word] OR Arbeitsgemeinschaft fur Osteosynthesefragen[Text Word])
                AND
                (
                    (
                        fractur*[Text Word] OR injur*[Text Word] OR ("Fractures, Bone"[mh:noexp] 1600/01/01: 2019/04/02[mhda]) OR dislocat*[Text Word]
                    )
                    AND
                    (
                        (thoracic[Text Word] OR lumbar[Text Word] OR ("Thoracic Vertebrae"[MeSH Terms] 1600/01/01:2019/04/02[mhda]) OR ("Lumbar Vertebrae"[MeSH Terms] 1600/01/01:2019/04/02[mhda]) OR thoraco*[Text Word])
                        OR (t1[tw] OR t2[tw] OR t3[tw] OR t4[tw] OR t5[tw] OR t6[tw] OR t7[tw] OR t8[tw] OR t9[tw] OR t10[tw] OR t11[tw] OR t12[tw] OR th1[tw] OR th2[tw] OR th3[tw] OR th4[tw] OR th5[tw] OR th6[tw] OR th7[tw] OR th8[tw] OR th9[tw] OR th10[tw] OR th11[tw] OR th12[tw] OR d1[tw] OR d2[tw] OR d3[tw] OR d4[tw] OR d5[tw] OR d6[tw] OR d7[tw] OR d8[tw] OR d9[tw] OR d10[tw] OR d11[tw] OR d12[tw] OR l1[tw] OR l2[tw] OR l3[tw] OR l4[tw] OR l5[tw] OR l6[tw])
                    )
                )
            )
            NOT
            (
                ((case reports[Publication Type] 1600/01/01: 2019/04/02[mhda]) OR "case report"[Title])
                NOT
                ((((systematic review[ti] OR systematic literature review[ti] OR systematic scoping review[ti] OR systematic narrative review[ti] OR systematic qualitative review[ti] OR systematic evidence review[ti] OR systematic quantitative review[ti] OR systematic meta-review[ti] OR systematic critical review[ti] OR systematic mixed studies review[ti] OR systematic mapping review[ti] OR systematic cochrane review[ti] OR systematic search and review[ti] OR systematic integrative review[ti]) NOT (comment[pt] 1600/01/01: 2019/04/02[mhda]) NOT (protocol[ti] OR protocols[ti])) NOT (MEDLINE [subset] 1600/01/01: 2019/04/02[mhda])) OR (Cochrane Database Syst Rev[ta] AND (review[pt] 1600/01/01: 2019/04/02[mhda])) OR (systematic review[pt] 1600/01/01: 2019/04/02[mhda]))
            )
        )
        NOT
        (
            ((Animals[mh:noexp] not Humans[mh:noexp]) 1600/01/01:2019/04/02[mhda])
        )
    )
    AND
    1600/01/01:2019/04/02[crdt]
)
```

1464 вместо 1463 — за счет этой записи (как выясняю: [изначальные 1462 у меня сохранены в публичную подборку](https://www.ncbi.nlm.nih.gov/sites/myncbi/1bGT_5WlUb855/collections/58129193/public/), и через расширенный поиск я дополняю эту подборку до результатов запроса):

```
PMID- 29366930
OWN - NLM
STAT- MEDLINE
DCOM- 20190423
LR  - 20190423
IS  - 1090-2139 (Electronic)
IS  - 0889-1591 (Linking)
VI  - 69
DP  - 2018 Mar
TI  - Sustained reversal of central neuropathic pain induced by a single intrathecal
      injection of adenosine A2A receptor agonists.
PG  - 470-479
LID - S0889-1591(18)30004-7 [pii]
LID - 10.1016/j.bbi.2018.01.005 [doi]
AB  - Central neuropathic pain is a debilitating outcome of spinal cord injury (SCI)
      and current treatments to alleviate this pain condition are ineffective. A
      growing body of literature suggests that activating adenosine A2A receptors
      (A2ARs) decreases the production of proinflammatory cytokines and increases the
      production of anti-inflammatory cytokines. Here, the effect of administering
      intrathecal A2AR agonists on central neuropathic pain was measured using hindpaw 
      mechanical allodynia in a rat model of SCI termed spinal neuropathic avulsion
      pain (SNAP). Other models of SCI cause extensive damage to the spinal cord,
      resulting in paralysis and health problems. SNAP rats with unilateral low
      thoracic (T13)/high lumbar (L1) dorsal root avulsion develop below-level
      bilateral allodynia, without concomitant motor or health problems. A single
      intrathecal injection of the A2AR agonist
      2-p-(2-carboxyethyl)phenethylamino-5'-N-ethylcarboxamido adenosine HCl (CGS21680)
      reversed SCI-induced allodynia for at least 6weeks. The reversal is likely in
      part mediated by interleukin (IL)-10, as intrathecally administering neutralizing
      IL-10 antibodies 1week after CGS21680 abolished the anti-allodynic effect of
      CGS21680. Dorsal spinal cord tissue from the ipsilateral site of SCI (T13/L1) was
      assayed 1 and 6weeks after CGS21680 for IL-10, CD11b, and tumor necrosis factor
      (TNF) gene expression. CGS21680 treatment did not change IL-10 gene expression
      but did significantly decrease CD11b and TNF gene expression at both timepoints. 
      A second A2AR agonist,
      4-(3-(6-amino-9-(5-cyclopropylcarbamoyl-3,4-dihydroxytetrahydrofuran-2-yl)-9H-pur
      in-2-yl)prop-2-ynyl)piperidine-1-carboxylic acid methyl ester (ATL313), was also 
      able to significantly prevent and reverse SCI-induced allodynia for several weeks
      after a single intrathecal injection, providing converging lines of evidence of
      A2AR involvement. The enduring pain reversal after a single intrathecal injection
      of A2AR agonists suggests that A2AR agonists could be exciting new candidates for
      treating SCI-induced central neuropathic pain.
CI  - Copyright (c) 2018 Elsevier Inc. All rights reserved.
FAU - Kwilasz, Andrew J
AU  - Kwilasz AJ
AD  - Department of Psychology and Neuroscience, Center for Neuroscience, University of
      Colorado-Boulder, Boulder, CO 80309-0345, United States. Electronic address:
      andrew.kwilasz@colorado.edu.
FAU - Ellis, Amanda
AU  - Ellis A
AD  - Department of Psychology and Neuroscience, Center for Neuroscience, University of
      Colorado-Boulder, Boulder, CO 80309-0345, United States.
FAU - Wieseler, Julie
AU  - Wieseler J
AD  - Department of Psychology and Neuroscience, Center for Neuroscience, University of
      Colorado-Boulder, Boulder, CO 80309-0345, United States.
FAU - Loram, Lisa
AU  - Loram L
AD  - Department of Psychology and Neuroscience, Center for Neuroscience, University of
      Colorado-Boulder, Boulder, CO 80309-0345, United States.
FAU - Favret, Jacob
AU  - Favret J
AD  - Department of Psychology and Neuroscience, Center for Neuroscience, University of
      Colorado-Boulder, Boulder, CO 80309-0345, United States.
FAU - McFadden, Andrew
AU  - McFadden A
AD  - Department of Psychology and Neuroscience, Center for Neuroscience, University of
      Colorado-Boulder, Boulder, CO 80309-0345, United States.
FAU - Springer, Kendra
AU  - Springer K
AD  - Department of Psychology and Neuroscience, Center for Neuroscience, University of
      Colorado-Boulder, Boulder, CO 80309-0345, United States.
FAU - Falci, Scott
AU  - Falci S
AD  - Craig Hospital, 3425 S Clarkson St, Englewood, CO 80113, United States.
FAU - Rieger, Jayson
AU  - Rieger J
AD  - PBM Capital Group, Charlottesville, VA 22902, United States.
FAU - Maier, Steven F
AU  - Maier SF
AD  - Department of Psychology and Neuroscience, Center for Neuroscience, University of
      Colorado-Boulder, Boulder, CO 80309-0345, United States.
FAU - Watkins, Linda R
AU  - Watkins LR
AD  - Department of Psychology and Neuroscience, Center for Neuroscience, University of
      Colorado-Boulder, Boulder, CO 80309-0345, United States.
LA  - eng
PT  - Journal Article
DEP - 20180131
PL  - Netherlands
TA  - Brain Behav Immun
JT  - Brain, behavior, and immunity
JID - 8800478
RN  - 0 (Adenosine A2 Receptor Agonists)
RN  - 0 (Antibodies, Neutralizing)
RN  - 0 (Phenethylamines)
RN  - 120225-54-9 (2-(4-(2-carboxyethyl)phenethylamino)-5'-N-ethylcarboxamidoadenosine)
RN  - 130068-27-8 (Interleukin-10)
RN  - K72T3FS567 (Adenosine)
SB  - IM
MH  - Adenosine/*analogs & derivatives/therapeutic use
MH  - Adenosine A2 Receptor Agonists/*therapeutic use
MH  - Animals
MH  - Antibodies, Neutralizing/pharmacology
MH  - Hyperalgesia/*drug therapy/etiology/physiopathology
MH  - Interleukin-10/immunology
MH  - Male
MH  - Neuralgia/*drug therapy/etiology/physiopathology
MH  - Phenethylamines/*therapeutic use
MH  - Rats
MH  - Rats, Sprague-Dawley
MH  - Spinal Cord Injuries/*complications/physiopathology
OTO - NOTNLM
OT  - *ATL313
OT  - *Avulsion
OT  - *CGS21680
OT  - *Mechanical allodynia
OT  - *Rats
OT  - *Spinal cord injury
EDAT- 2018/01/26 06:00
MHDA- 2019/04/24 06:00
CRDT- 2018/01/26 06:00
PHST- 2016/06/28 00:00 [received]
PHST- 2018/01/09 00:00 [revised]
PHST- 2018/01/11 00:00 [accepted]
PHST- 2018/01/26 06:00 [pubmed]
PHST- 2019/04/24 06:00 [medline]
PHST- 2018/01/26 06:00 [entrez]
AID - S0889-1591(18)30004-7 [pii]
AID - 10.1016/j.bbi.2018.01.005 [doi]
PST - ppublish
SO  - Brain Behav Immun. 2018 Mar;69:470-479. doi: 10.1016/j.bbi.2018.01.005. Epub 2018
      Jan 31.
```

Но этот, отдебаженный запрос — сейчас смотрю на него — совершенно корректен, а значит и 1462 (1463, 1464) — совершенно валидны.

Остается разобраться, как сюда проникают эти две записи, и запрос смело можно брать в работу дальше.

Ура!

Так вот, как же проникают записи ([30104626](https://pubmed.gov/30104626) и [29366930](https://pubmed.gov/29366930)).

При изучении обеих ясно, что обе первая попала за счет `lipoxin A4` в RN, а вторая — за счет `Adenosine A2 Receptor Agonists`, и тоже в RN. При этом обе были доиндексированы позже 2 апреля 2019, а именно первая — 8 или 9 апреля, а вторая — 24 или 26 апреля; видимо, тогда и были добавлены эти дополнительные термины.

Как избежать такой ситуации? Единственный выход, который я вижу — заменить TW на TIAB, потому что именно за счет TW дополнительные термины сюда и проникают.

Проверим, насколько хорош будет этот запрос с замененными `tw` и `Text Word` на `tiab` — 1419 вместо 1464 записей, и 45 дополняющих записей в формате MEDLINE добавляю в коммит.

Нужно посмотреть, в каких местах там находятся вхождения, и есть ли среди этих 45 хоть что-либо годное.

Если хоть что-то есть, то придется оставить Text Word, потому что это и более обоснованно, и с несколькими добавляющимися записями можно мириться, тем более что желающие смогут легко проверить, добавились ли эти записи в результатах запроса по этой причине или нет.

Если же явно будет видно, что все это — сплошной мусор, а вхождения — сплошь в неподходящих местах, то можно будет на Title/Abstract заменить.

Итак, просмотрел 45, в результате чего сделал важные добавления к запросу: плавающий `in[sh]` и `trauma*[tiab]` — явные упущения, которые требовали исправления.

Но вот что Text Word вместо Title/Abstract — полезное исправление в нашем случае, я не убедился: по моей оценке (см. прилагающийся `pubmed_result_45_medline.csv`), 3 из 45 записей соответствуют семантике запроса (из них [Sadiqi 2017](https://pubmed.gov/27372945), кстати, небезызвестна нам по запросу про шкалы оценки результатов при ПСМТ, про который можно почитать в [соответствующем экспорте из СТМЗ 3](https://github.com/p1m-ortho/xc-led-dzhanelidze-proms-and-croms/commit/e2492c5898964b9712cfeb12c0f42053ae0339e4)), и по исправленному запросу они выдаются.

Более того, те две добавлявшиеся записи ([30104626](https://pubmed.gov/30104626) и [29366930](https://pubmed.gov/29366930)) тоже были среди этих 45, а значит велик шанс, что с TIAB количество записей в выдаче уже будет остававться неизменным.

В итоге исправленный запрос (также синтактически несущественные правки по оформлению):

```
(
    (
        (
            burst[tiab] OR a2[tiab] OR a3[tiab] OR a4[tiab] OR AOSpine[tiab] OR AO[tiab] OR Arbeitsgemeinschaft fur Osteosynthesefragen[tiab]
        )
        AND
        (
            fractur*[tiab] OR injur*[tiab] OR ("Fractures, Bone"[mh:noexp] 1600/01/01:2019/04/02[mhda]) OR dislocat*[tiab] OR in[sh] OR traum*[tiab]
        )
        AND
        (
            thoracic[tiab] OR lumbar[tiab] OR ("Thoracic Vertebrae"[MeSH Terms] 1600/01/01:2019/04/02[mhda]) OR ("Lumbar Vertebrae"[MeSH Terms] 1600/01/01:2019/04/02[mhda]) OR thoraco*[tiab] OR t1[tiab] OR t2[tiab] OR t3[tiab] OR t4[tiab] OR t5[tiab] OR t6[tiab] OR t7[tiab] OR t8[tiab] OR t9[tiab] OR t10[tiab] OR t11[tiab] OR t12[tiab] OR th1[tiab] OR th2[tiab] OR th3[tiab] OR th4[tiab] OR th5[tiab] OR th6[tiab] OR th7[tiab] OR th8[tiab] OR th9[tiab] OR th10[tiab] OR th11[tiab] OR th12[tiab] OR d1[tiab] OR d2[tiab] OR d3[tiab] OR d4[tiab] OR d5[tiab] OR d6[tiab] OR d7[tiab] OR d8[tiab] OR d9[tiab] OR d10[tiab] OR d11[tiab] OR d12[tiab] OR l1[tiab] OR l2[tiab] OR l3[tiab] OR l4[tiab] OR l5[tiab] OR l6[tiab]
        )
        NOT
        (
            (
                (case reports[Publication Type] 1600/01/01:2019/04/02[mhda]) OR "case report"[ti]
            )
            NOT
            (
                (((systematic review[ti] OR systematic literature review[ti] OR systematic scoping review[ti] OR systematic narrative review[ti] OR systematic qualitative review[ti] OR systematic evidence review[ti] OR systematic quantitative review[ti] OR systematic meta-review[ti] OR systematic critical review[ti] OR systematic mixed studies review[ti] OR systematic mapping review[ti] OR systematic cochrane review[ti] OR systematic search and review[ti] OR systematic integrative review[ti]) NOT (comment[pt] 1600/01/01:2019/04/02[mhda]) NOT (protocol[ti] OR protocols[ti])) NOT (MEDLINE [subset] 1600/01/01:2019/04/02[mhda])) OR (Cochrane Database Syst Rev[ta] AND (review[pt] 1600/01/01:2019/04/02[mhda])) OR (systematic review[pt] 1600/01/01:2019/04/02[mhda])
            )
        )
        NOT
        (
            (Animals[mh:noexp] not Humans[mh:noexp]) 1600/01/01:2019/04/02[mhda]
        )
    )
    AND
    (
        1600/01/01:2019/04/02[crdt]
    )
)
```

Выдает 1442 записи, такие что:

* включают 13 не выдававшихся по запросу на 1464 (добавляю в коммит);
* не включают 35 из 45 записей, не выдававшихся по 1419, но выдававшихся по 1464 (добавляю в коммит);
* включают 23 не выдававшихся по запросу на 1419 (добавляю в коммит).
