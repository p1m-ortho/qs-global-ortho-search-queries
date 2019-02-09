# METHOD.md

## Актуальность

Определиться с тактикой по пациенту.

В CDSR (Issue 2 of 12, February 2019):

```
#1    (abscess):ti,ab,kw
#2    MeSH descriptor: [Abscess] explode all trees
#3    #1 OR #2
```

56 записей, из них ни одной похожей (`CDSR.bib` прилагается).

## PICO-формула

Дренировать псоас-абсцесс по сравнению с не дренировать псоас-абсцесс является более ли эффективным в лечении боли и ограничения жизнедеятельности в группе лиц со спондилодисцитом неуточненным (любой этиологии) если судить по динамике ВАШ через 1 неделю и SF-36 через 4 недели после операции.

> Может быть, стоило вообще псоас-абсцесс вынести в популяцию вместо спондилодисцита и расширить, таким образом, до любых псоас-абсцессов?

## Поисковая стратегия в PubMed

((Свободный текст AND MeSH-термины) AND (фильтр HSSS v2 OR фильтр SSB) AND (дата создания записи от начала времен до вчера)).

```
(((drainage[mh:noexp] OR drain*[tiab]) AND ("psoas abscess"[mh] OR ((abscess*[tiab] or abscess[mh]) AND (psoas[tiab] OR "psoas muscles"[mh] OR iliopsoas[tiab] OR paravertebral[tiab] OR paraspinal[tiab] OR "back muscles"[mh] OR spinal[tiab] OR spine[mh] OR vertebr*[tiab] OR spondyl*[tiab] OR spondylitis[mh]))) AND ((((systematic review [ti] OR meta-analysis [pt] OR meta-analysis [ti] OR systematic literature review [ti] OR this systematic review [tw] OR pooling project [tw] OR (systematic review [tiab] AND review [pt]) OR meta synthesis [ti] OR meta-analy*[ti] OR integrative review [tw] OR integrative research review [tw] OR rapid review [tw] OR umbrella review [tw] OR consensus development conference [pt] OR practice guideline [pt] OR drug class reviews [ti] OR cochrane database syst rev [ta] OR acp journal club [ta] OR health technol assess [ta] OR evid rep technol assess summ [ta] OR jbi database system rev implement rep [ta]) OR (clinical guideline [tw] AND management [tw]) OR ((evidence based[ti] OR evidence-based medicine [mh] OR best practice* [ti] OR evidence synthesis [tiab]) AND (review [pt] OR diseases category[mh] OR behavior and behavior mechanisms [mh] OR therapeutics [mh] OR evaluation studies[pt] OR validation studies[pt] OR guideline [pt] OR pmcbook)) OR ((systematic [tw] OR systematically [tw] OR critical [tiab] OR (study selection [tw]) OR (predetermined [tw] OR inclusion [tw] AND criteri* [tw]) OR exclusion criteri* [tw] OR main outcome measures [tw] OR standard of care [tw] OR standards of care [tw]) AND (survey [tiab] OR surveys [tiab] OR overview* [tw] OR review [tiab] OR reviews [tiab] OR search* [tw] OR handsearch [tw] OR analysis [ti] OR critique [tiab] OR appraisal [tw] OR (reduction [tw]AND (risk [mh] OR risk [tw]) AND (death OR recurrence))) AND (literature [tiab] OR articles [tiab] OR publications [tiab] OR publication [tiab] OR bibliography [tiab] OR bibliographies [tiab] OR published [tiab] OR pooled data [tw] OR unpublished [tw] OR citation [tw] OR citations [tw] OR database [tiab] OR internet [tiab] OR textbooks [tiab] OR references [tw] OR scales [tw] OR papers [tw] OR datasets [tw] OR trials [tiab] OR meta-analy* [tw] OR (clinical [tiab] AND studies [tiab]) OR treatment outcome [mh] OR treatment outcome [tw] OR pmcbook)) NOT (letter [pt] OR newspaper article [pt]))) OR (((randomized controlled trial [pt]) OR (randomized controlled trial [mh]) OR (controlled clinical trial [pt]) OR randomized[tiab] OR randomised[tiab] OR placebo[tiab] OR (drug therapy [sh]) OR randomly[tiab] OR trial[tiab] OR groups[tiab]) NOT (animals[mh] NOT humans[mh])))) 1600/01/01:2019/02/06[crdt])
```

292 записи (~~`citations.nbib` и `citations (1).nbib` прилагаются~~ `pubmed_result.xml` прилагается; Rayyan поддерживает только PubMed XML).

Выгружаем в Rayyan.

Критерий исключения один: не соответствует PICO-формуле или не является РКИ или СО ~~поэтому в Rayyan не будем даже указывать~~. Апробируем список стандартных критериев исключения Rayyan, потому что он выглядит адекватным (полужирным выделяем критерии, обоснованные в контексте этого обзора):

* **background article**,
* **foreign language**,
* **wrong drug**,
* **wrong outcome**,
* **wrong population**,
* **wrong publication type**,
* **wrong study design**,
* **wrong study duration**.

При этом _wrong drug_ разумеем, естественно, в более общем смысле как «не то вмешательство».

> По ходу дела прихожу к мысли, что в контексте такой формулировки основной группы и группы сравнения этот критерий не имеет значения: «не дренировать» с необходимостью включает все остальные возможные виды лечения.

Также здесь:

* _background article_ соответствует старому `шаг 1 - фаза 0-1 [Records Excluded Step 1 Animal or Cadaver or Biomech or In Vitro or In Silico or Healthy] (исследования на животных, трупах, стендовые, in vitro, in silico или на здоровых лицах)`;
* _wrong publication type_ — не статьи в научных журналах (комментарии и письма расцениваем как статьи в научных журналах);
* _foreign language_ — не английский и не русский в аннотации или полном тексте.

Остальные, считаю, самоочевидны с учетом PICO-формулы и наложенного ограничения по дизайну (иначе не велик смысл в использовании стандартного набора критериев, если каждый из них все равно явно переопределять).

При этом применять критерии будем, по старому опыту, пошагово. Градация будет тоже в целом соответствовать старой:

1. **wrong publication type**,
1. **background article**,
1. **wrong population**,
1. **wrong drug**,
1. **wrong study design**,
1. **wrong outcome**,
1. **wrong study duration**,
1. **foreign language**.

Итак, явный порядок действий при скрининге для ясности:

* в начале скрининга статус: не исключено;
* для каждой библиографической записи (для каждого полного текста на 2-м этапе скрининга) последовательно проходим по всем шагам;
* при выявлении оснований для исключения по данному шагу (конкретный фрагмент текста, который при необходимости можем процитировать), исключаем по этому шагу;
* при отсутствии таких оснований переходим к следующему шагу, и так до конца списка;
* если на последнем шаге запись не исключена, то включаем по этому этапу скрининга;
* таким образом по завершении скрининга все или исключены или включены по данному этапу скрининга, и каждой исключенной библиографической записи (каждому исключенному полному тексту на 2-м этапе скрининга) будет соответствовать один шаг (критерий исключения), наиболее ранний из тех, по которым потенциально можно было бы исключить, причем ровно один.

Всё выгрузилось: 292 из PubMed + 56 из CDSR.

Адрес обзора: https://rayyan.qcri.org/reviews/50748

При загрузке BibTeX из CDSR пришлось вручную править в нем ссылки, убирая из них дефисы, пробелы и диакритические знаки.