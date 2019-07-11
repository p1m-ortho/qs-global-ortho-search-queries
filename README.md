# Глобальный живой поиск по сисобзорам

## Цель

Мониторировать все публикуемые сисобзоры, чтобы быстро выявлять новые сисобзоры по ортопедии. Сисобзоры же, как известно, сегодня лучший источник научной информации.

## PubMed

### Методы

[Search Strategy Used to Create the Systematic Reviews Subset on PubMed](https://www.nlm.nih.gov/bsd/pubmed_subsets/sysreviews_strategy.html), объединенная в двух версиях: [от февраля 2017](http://web.archive.org/web/20181023065423/https://www.nlm.nih.gov/bsd/pubmed_subsets/sysreviews_strategy.html) и [от декабря 2018](http://web.archive.org/web/20190711085949/https://www.nlm.nih.gov/bsd/pubmed_subsets/sysreviews_strategy.html).

Версия от февраля 2017 [основана](https://wayback.archive-it.org/org-350/20180406175620/https://www.nlm.nih.gov/bsd/pubmed_subsets/sysreviews_sources.html) на работе [[@Shojania2001]](https://pubmed.gov/11525102). Версия от декабря 2018 не знаю, на чем основана, там не было написано.

### [Живая версия (актуален бессрочно, при запуске 11 июля 2019 вернул 413 550 записей)](https://pubmed.gov/?term=(%20%20%20%20%20(%20%20%20%20%20%20%20%20%20(((systematic%20review[ti]%20OR%20meta-analysis[pt]%20OR%20meta-analysis[ti]%20OR%20systematic%20literature%20review[ti]%20OR%20this%20systematic%20review[tw]%20OR%20pooling%20project[tw]%20OR%20(systematic%20review[tiab]%20AND%20review[pt])%20OR%20meta%20synthesis[ti]%20OR%20meta-analy*[ti]%20OR%20integrative%20review[tw]%20OR%20integrative%20research%20review[tw]%20OR%20rapid%20review[tw]%20OR%20umbrella%20review[tw]%20OR%20consensus%20development%20conference[pt]%20OR%20practice%20guideline[pt]%20OR%20drug%20class%20reviews[ti]%20OR%20cochrane%20database%20syst%20rev[ta]%20OR%20acp%20journal%20club[ta]%20OR%20health%20technol%20assess[ta]%20OR%20evid%20rep%20technol%20assess%20summ[ta]%20OR%20jbi%20database%20system%20rev%20implement%20rep[ta])%20OR%20(clinical%20guideline[tw]%20AND%20management[tw])%20OR%20((evidence%20based[ti]%20OR%20evidence-based%20medicine[mh]%20OR%20best%20practice*[ti]%20OR%20evidence%20synthesis[tiab])%20AND%20(review[pt]%20OR%20diseases%20category[mh]%20OR%20behavior%20and%20behavior%20mechanisms[mh]%20OR%20therapeutics[mh]%20OR%20evaluation%20studies[pt]%20OR%20validation%20studies[pt]%20OR%20guideline[pt]%20OR%20pmcbook))%20OR%20((systematic[tw]%20OR%20systematically[tw]%20OR%20critical[tiab]%20OR%20(study%20selection[tw])%20OR%20(predetermined[tw]%20OR%20inclusion[tw]%20AND%20criteri*[tw])%20OR%20exclusion%20criteri*[tw]%20OR%20main%20outcome%20measures[tw]%20OR%20standard%20of%20care[tw]%20OR%20standards%20of%20care[tw])%20AND%20(survey[tiab]%20OR%20surveys[tiab]%20OR%20overview*[tw]%20OR%20review[tiab]%20OR%20reviews[tiab]%20OR%20search*[tw]%20OR%20handsearch[tw]%20OR%20analysis[ti]%20OR%20critique[tiab]%20OR%20appraisal[tw]%20OR%20(reduction[tw]%20AND%20(risk[mh]%20OR%20risk[tw])%20AND%20(death%20OR%20recurrence)))%20AND%20(literature[tiab]%20OR%20articles[tiab]%20OR%20publications[tiab]%20OR%20publication[tiab]%20OR%20bibliography[tiab]%20OR%20bibliographies[tiab]%20OR%20published[tiab]%20OR%20pooled%20data[tw]%20OR%20unpublished[tw]%20OR%20citation[tw]%20OR%20citations[tw]%20OR%20database[tiab]%20OR%20internet[tiab]%20OR%20textbooks[tiab]%20OR%20references[tw]%20OR%20scales[tw]%20OR%20papers[tw]%20OR%20datasets[tw]%20OR%20trials[tiab]%20OR%20meta-analy*[tw]%20OR%20(clinical[tiab]%20AND%20studies[tiab])%20OR%20treatment%20outcome[mh]%20OR%20treatment%20outcome[tw]%20OR%20pmcbook))%20NOT%20(letter[pt]%20OR%20newspaper%20article[pt])))%20%20%20%20%20)%20%20%20%20%20OR%20%20%20%20%20(%20%20%20%20%20%20%20%20%20(((systematic%20review[ti]%20OR%20systematic%20literature%20review[ti]%20OR%20systematic%20scoping%20review[ti]%20OR%20systematic%20narrative%20review[ti]%20OR%20systematic%20qualitative%20review[ti]%20OR%20systematic%20evidence%20review[ti]%20OR%20systematic%20quantitative%20review[ti]%20OR%20systematic%20meta-review[ti]%20OR%20systematic%20critical%20review[ti]%20OR%20systematic%20mixed%20studies%20review[ti]%20OR%20systematic%20mapping%20review[ti]%20OR%20systematic%20cochrane%20review[ti]%20OR%20systematic%20search%20and%20review[ti]%20OR%20systematic%20integrative%20review[ti])%20NOT%20comment[pt]%20NOT%20(protocol[ti]%20OR%20protocols[ti]))%20NOT%20MEDLINE%20[subset])%20OR%20(Cochrane%20Database%20Syst%20Rev[ta]%20AND%20review[pt])%20OR%20systematic%20review[pt]%20%20%20%20%20)%20))

```
(
    (
        (((systematic review[ti] OR meta-analysis[pt] OR meta-analysis[ti] OR systematic literature review[ti] OR this systematic review[tw] OR pooling project[tw] OR (systematic review[tiab] AND review[pt]) OR meta synthesis[ti] OR meta-analy*[ti] OR integrative review[tw] OR integrative research review[tw] OR rapid review[tw] OR umbrella review[tw] OR consensus development conference[pt] OR practice guideline[pt] OR drug class reviews[ti] OR cochrane database syst rev[ta] OR acp journal club[ta] OR health technol assess[ta] OR evid rep technol assess summ[ta] OR jbi database system rev implement rep[ta]) OR (clinical guideline[tw] AND management[tw]) OR ((evidence based[ti] OR evidence-based medicine[mh] OR best practice*[ti] OR evidence synthesis[tiab]) AND (review[pt] OR diseases category[mh] OR behavior and behavior mechanisms[mh] OR therapeutics[mh] OR evaluation studies[pt] OR validation studies[pt] OR guideline[pt] OR pmcbook)) OR ((systematic[tw] OR systematically[tw] OR critical[tiab] OR (study selection[tw]) OR (predetermined[tw] OR inclusion[tw] AND criteri*[tw]) OR exclusion criteri*[tw] OR main outcome measures[tw] OR standard of care[tw] OR standards of care[tw]) AND (survey[tiab] OR surveys[tiab] OR overview*[tw] OR review[tiab] OR reviews[tiab] OR search*[tw] OR handsearch[tw] OR analysis[ti] OR critique[tiab] OR appraisal[tw] OR (reduction[tw] AND (risk[mh] OR risk[tw]) AND (death OR recurrence))) AND (literature[tiab] OR articles[tiab] OR publications[tiab] OR publication[tiab] OR bibliography[tiab] OR bibliographies[tiab] OR published[tiab] OR pooled data[tw] OR unpublished[tw] OR citation[tw] OR citations[tw] OR database[tiab] OR internet[tiab] OR textbooks[tiab] OR references[tw] OR scales[tw] OR papers[tw] OR datasets[tw] OR trials[tiab] OR meta-analy*[tw] OR (clinical[tiab] AND studies[tiab]) OR treatment outcome[mh] OR treatment outcome[tw] OR pmcbook)) NOT (letter[pt] OR newspaper article[pt])))
    )
    OR
    (
        (((systematic review[ti] OR systematic literature review[ti] OR systematic scoping review[ti] OR systematic narrative review[ti] OR systematic qualitative review[ti] OR systematic evidence review[ti] OR systematic quantitative review[ti] OR systematic meta-review[ti] OR systematic critical review[ti] OR systematic mixed studies review[ti] OR systematic mapping review[ti] OR systematic cochrane review[ti] OR systematic search and review[ti] OR systematic integrative review[ti]) NOT comment[pt] NOT (protocol[ti] OR protocols[ti])) NOT MEDLINE [subset]) OR (Cochrane Database Syst Rev[ta] AND review[pt]) OR systematic review[pt]
    )
)
```

### Реплицируемая версия (актуален на 11 июля 2019, при запуске 11 июля 2019 вернул 413 363 записи)

```
(
    (
        (
            (((systematic review[ti] OR systematic literature review[ti] OR systematic scoping review[ti] OR systematic narrative review[ti] OR systematic qualitative review[ti] OR systematic evidence review[ti] OR systematic quantitative review[ti] OR systematic meta-review[ti] OR systematic critical review[ti] OR systematic mixed studies review[ti] OR systematic mapping review[ti] OR systematic cochrane review[ti] OR systematic search and review[ti] OR systematic integrative review[ti]) NOT (comment[pt] 1600/01/01:2019/07/09[mhda]) NOT (protocol[ti] OR protocols[ti])) NOT (MEDLINE [subset] 1600/01/01:2019/07/09[mhda])) OR (Cochrane Database Syst Rev[ta] AND (review[pt] 1600/01/01:2019/07/09[mhda])) OR (systematic review[pt] 1600/01/01:2019/07/09[mhda])
        )
        OR
        (
            ((systematic review[ti] OR (meta-analysis[pt] 1600/01/01:2019/07/09[mhda]) OR meta-analysis[ti] OR systematic literature review[ti] OR this systematic review[tw] OR pooling project[tw] OR (systematic review[tiab] AND (review[pt] 1600/01/01:2019/07/09[mhda])) OR meta synthesis[ti] OR meta-analy*[ti] OR integrative review[tw] OR integrative research review[tw] OR rapid review[tw] OR umbrella review[tw] OR ((consensus development conference[pt] OR practice guideline[pt]) 1600/01/01:2019/07/09[mhda]) OR drug class reviews[ti] OR cochrane database syst rev[ta] OR acp journal club[ta] OR health technol assess[ta] OR evid rep technol assess summ[ta] OR jbi database system rev implement rep[ta]) OR (clinical guideline[tw] AND management[tw]) OR ((evidence based[ti] OR (evidence-based medicine[mh] 1600/01/01:2019/07/09[mhda]) OR best practice*[ti] OR evidence synthesis[tiab]) AND ((review[pt] OR diseases category[mh] OR behavior and behavior mechanisms[mh] OR therapeutics[mh] OR evaluation studies[pt] OR validation studies[pt] OR guideline[pt] OR pmcbook) 1600/01/01:2019/07/09[mhda])) OR ((systematic[tw] OR systematically[tw] OR critical[tiab] OR (study selection[tw]) OR (predetermined[tw] OR inclusion[tw] AND criteri*[tw]) OR exclusion criteri*[tw] OR main outcome measures[tw] OR standard of care[tw] OR standards of care[tw]) AND (survey[tiab] OR surveys[tiab] OR overview*[tw] OR review[tiab] OR reviews[tiab] OR search*[tw] OR handsearch[tw] OR analysis[ti] OR critique[tiab] OR appraisal[tw] OR (reduction[tw] AND ((risk[mh] 1600/01/01:2019/07/09[mhda]) OR risk[tw]) AND (death OR recurrence))) AND (literature[tiab] OR articles[tiab] OR publications[tiab] OR publication[tiab] OR bibliography[tiab] OR bibliographies[tiab] OR published[tiab] OR pooled data[tw] OR unpublished[tw] OR citation[tw] OR citations[tw] OR database[tiab] OR internet[tiab] OR textbooks[tiab] OR references[tw] OR scales[tw] OR papers[tw] OR datasets[tw] OR trials[tiab] OR meta-analy*[tw] OR (clinical[tiab] AND studies[tiab]) OR (treatment outcome[mh] 1600/01/01:2019/07/09[mhda]) OR treatment outcome[tw] OR (pmcbook 1600/01/01:2019/07/09[mhda]))) NOT ((letter[pt] OR newspaper article[pt]) 1600/01/01:2019/07/09[mhda]))
        )
    )
    (
        1600/01/01:2019/07/09[crdt]
    )
)
```
