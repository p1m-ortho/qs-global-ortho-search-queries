# Глобальный живой поиск по систематическим обзорам — Zheln.com

ℹ️ **Поддержка русскоязычной версии прекращена.**

🔒 _**Последнее обновление: 19 сентября 2020.**_

[![Woodpecker by Anton from The Noun Project](https://zheln.com/favicons/android-chrome-512x512.png)](https://zheln.com)

С сентября 2020 исследование продолжается в виде краудфандингового проекта [Zheln](https://zheln.com). Из изменений: (1) фокус исследования расширен с ортопедии на всю доказательную практику, и (2) в рамках проекта теперь выполняется также критическая оценка и репликация обзоров. [Методы](https://github.com/p1m-ortho/qs-global-ortho-search-queries/commits/global-sr-query) остались без изменения, а методы критической оценки можно описать одной фразой: неформальное изучение документации по обзору единственным оценивающим с репликацией каких-то из элементов обзора, чтобы сформулировать собственное экспертное представление о том, воспроизводим ли обзор и чем он полезен для доказательной практики. Детали относительно краудфандинга доступны на сайте [Zheln](https://zheln.com).

## Цель

1. Мониторировать большинство из публикуемые систематические обзоры, чтобы быстро выявлять новые систематические обзоры. Систематические обзоры же, как известно, сегодня лучший источник научной информации для доказательной практики.
2. Критически оценивать и, по возможности, реплицировать те из выявленных систематических обзоров, которые полезны для доказательной практики, по мнению оценивающего.
3. Проиндексировать отсмотренные обзоры по врачебным специальностям, чтобы облегчить слежение за обновлениями для практических врачей.

## PubMed

### Методы

* Методы поиска и фильтрации обзоров см. в [истории коммитов репозитория](https://github.com/p1m-ortho/qs-global-ortho-search-queries/commits/global-sr-query). Поисковые запросы см. ниже в этом разделе, а историю их разработки и тестирования также см. в истории коммитов.
* Методы критической оценки можно описать одной фразой: неформальное изучение документации по обзору единственным оценивающим с репликацией каких-то из элементов обзора, чтобы сформулировать собственное экспертное представление о том, воспроизводим ли обзор и чем он полезен для доказательной практики.
* Детали относительно краудфандинга доступны на сайте [Zheln](https://zheln.com).
* Мониторинг продолжился со 2 сентября 2020. В настоящее время я не планирую возвращаться к какому-либо материалу, который я оставил нерассмотренным, поскольку у меня нет мощностей для такого предприятия.
* Для ясности я резюмировал о методах в **Оценка обзора в Zheln за 10 шагов:**

1. 🔄❌✅ Скачан из ежедневных обновлений [PubMed Systematic Subset](https://p1m.org/ssb)
2. 🔄❌✅ Отвечает ли критериям [Shojania & Bero 2001](https://www.researchgate.net/publication/11820967_Taking_Advantage_of_the_Explosion_of_Systematic_Reviews_An_Efficient_MEDLINE_Search_Strategy) для истинных позитивов систематических обзоров либо по заголовку, либо по аннотации?
3. 🔄❌✅ Полный текст и другие отчеты собраны **Zheln**
4. 🔄❌✅ Генерирует ли прагматические доказательства, прямо релевантные для доказательной практики?
5. 🔄❌✅ Является ли дубликатом?
6. 🔄❌✅ Прошел или провалил репликацию?
7. 🔄❌✅ Имеет ли критические изъяны проведения?
8. 🔄❌✅ Понравилось или не понравилось **Zheln**?
9. 🔄❌✅ Практическое значение резюмировано **Zheln**
10. 🔄❌✅ Оценка опубликована и призыв к краудфандингу

⚠️ Важно!

* Методы индексации по специальностям не включены в шаги, поскольку нет конкретной временной точки, когда индексация должна быть завершена: она начинается, когда начинается изучение записи, и она заканчивается, когда заканчивается изучение записи. Тем не менее эти методы важны, и поэтому резюмированы здесь.
* См. методы, использованные для компиляции списков специальностей и тегов специальностей в [истории коммитов](https://github.com/p1m-ortho/qs-global-ortho-search-queries/commits/global-sr-query).
* Индексация по специальностям выполняется самими оценщиками на основании какой бы то ни было информации, которая получена в процессе оценки.
* Нет предела для количества прикрепляемых тегов специальностей, но, по меньшей мере, один тег необходимо выбрать для каждой записи.
* Индексирующим при индексации следует рассмотреть, будет ли данная запись доступна со всех релевантных страниц специальностей, и обеспечить, чтобы была доступна.
* Я не планирую добавлять какие-либо новые теги специальностей. Однако если я услышу о каких-либо изменениях в списке врачебных специальностей AMA Masterfile, то рассмотрю соответствующее обновление списков специальностей Zheln.

Версия от февраля 2017 [основана](https://wayback.archive-it.org/org-350/20180406175620/https://www.nlm.nih.gov/bsd/pubmed_subsets/sysreviews_sources.html) на работе [[@Shojania2001]](https://pubmed.gov/11525102). Версия от декабря 2018 не знаю, на чем основана, там не было написано.

### Живая версия (актуален бессрочно до каких-либо вмешивающихся обновлений PubMed; при запуске 11 сентября 2020 вернул 474 043 записей)

```
(
    (
        (((systematic review[ti] OR systematic literature review[ti] OR systematic scoping review[ti] OR systematic narrative review[ti] OR systematic qualitative review[ti] OR systematic evidence review[ti] OR systematic quantitative review[ti] OR systematic meta-review[ti] OR systematic critical review[ti] OR systematic mixed studies review[ti] OR systematic mapping review[ti] OR systematic cochrane review[ti] OR systematic search and review[ti] OR systematic integrative review[ti]) NOT comment[pt] NOT (protocol[ti] OR protocols[ti])) NOT MEDLINE [subset]) OR (Cochrane Database Syst Rev[ta] AND review[pt]) OR systematic review[pt]
    )
    OR
    (
        (((systematic review[ti] OR meta-analysis[pt] OR meta-analysis[ti] OR systematic literature review[ti] OR this systematic review[tw] OR pooling project[tw] OR (systematic review[tiab] AND review[pt]) OR meta synthesis[ti] OR meta-analy*[ti] OR integrative review[tw] OR integrative research review[tw] OR rapid review[tw] OR umbrella review[tw] OR consensus development conference[pt] OR practice guideline[pt] OR drug class reviews[ti] OR cochrane database syst rev[ta] OR acp journal club[ta] OR health technol assess[ta] OR evid rep technol assess summ[ta] OR jbi database system rev implement rep[ta]) OR (clinical guideline[tw] AND management[tw]) OR ((evidence based[ti] OR evidence-based medicine[mh] OR best practice*[ti] OR evidence synthesis[tiab]) AND (review[pt] OR diseases category[mh] OR behavior and behavior mechanisms[mh] OR therapeutics[mh] OR evaluation study[pt] OR validation study[pt] OR guideline[pt] OR pmcbook)) OR ((systematic[tw] OR systematically[tw] OR critical[tiab] OR (study selection[tw]) OR (predetermined[tw] OR inclusion[tw] AND criteri*[tw]) OR exclusion criteri*[tw] OR main outcome measures[tw] OR standard of care[tw] OR standards of care[tw]) AND (survey[tiab] OR surveys[tiab] OR overview*[tw] OR review[tiab] OR reviews[tiab] OR search*[tw] OR handsearch[tw] OR analysis[ti] OR critique[tiab] OR appraisal[tw] OR (reduction[tw] AND (risk[mh] OR risk[tw]) AND (death[mh] OR "death"[all] OR recurrence[mh] OR "recurrence"[all]))) AND (literature[tiab] OR articles[tiab] OR publications[tiab] OR publication[tiab] OR bibliography[tiab] OR bibliographies[tiab] OR published[tiab] OR pooled data[tw] OR unpublished[tw] OR citation[tw] OR citations[tw] OR database[tiab] OR internet[tiab] OR textbooks[tiab] OR references[tw] OR scales[tw] OR papers[tw] OR datasets[tw] OR trials[tiab] OR meta-analy*[tw] OR (clinical[tiab] AND studies[tiab]) OR treatment outcome[mh] OR treatment outcome[tw] OR pmcbook)) NOT (letter[pt] OR newspaper article[pt])))
    )
)
```

### Реплицируемая версия (актуален на 9 сентября 2020, при запуске 12 сентября 2020 вернул 472 252 записей)

**Как пользоваться?**

* Замените верхние границы во всех диапазонах дат на нужную дату, используя любой текстовый редактор.
* Если вам нужно отфильтровать только записи, проиндексированные _в_ эту дату (вместо всех записей, проиндексированных _к_ этой дате), тогда добавьте к запросу следующий фрагмент (либо перед первой скобкой либо после последней скобки): `(2020/09/09:2020/09/09[crdt] OR 2020/09/09:2020/09/09[dcom] OR 2020/09/09:2020/09/09[mhda])`, где дата — ваша требуемая дата (должна быть той же самой, что и верхняя граница в диапазонах дат).
* Если все сделано правильно и если сам запрос все еще работает, вы будете получать одно и то же множество записей каждый раз вне зависимости от даты запуска запроса.

```
(
    (
        (
            (
                (
                    (
                        "systematic review"[ti] OR "systematic literature review"[ti] OR "systematic scoping review"[ti] OR "systematic narrative review"[ti] OR "systematic qualitative review"[ti] OR "systematic evidence review"[ti] OR "systematic quantitative review"[ti] OR "systematic meta review"[ti] OR "systematic critical review"[ti] OR "systematic mixed studies review"[ti] OR "systematic mapping review"[ti] OR "systematic cochrane review"[ti] OR "systematic search and review"[ti] OR "systematic integrative review"[ti]
                    )
                    AND
                    1865/01/01:2020/09/09[crdt]
                )
                NOT
                (
                    "comment"[pt]
                    AND
                    1865/01/01:2020/09/09[dcom]
                )
                NOT
                (
                    (
                        "protocol"[ti] OR "protocols"[ti]
                    )
                    AND
                    1865/01/01:2020/09/09[crdt]
                )
            )
            NOT
            (
                "medline"[sb]
                AND
                1865/01/01:2020/09/09[dcom]
            )
        )
        OR
        (
            (
                "cochrane database syst rev"[ta]
                AND
                1865/01/01:2020/09/09[crdt]
            )
            AND
            (
                "review"[pt]
                AND
                1865/01/01:2020/09/09[dcom]
            )
        )
        OR
        (
            "systematic review"[pt]
            AND
            1865/01/01:2020/09/09[dcom]
        )
    )
    OR
    (
        (
            (
                "systematic review"[ti]
                AND
                1865/01/01:2020/09/09[crdt]
            )
            OR
            (
                "meta-analysis"[pt]
                AND
                1865/01/01:2020/09/09[dcom]
            )
            OR
            (
                (
                    "meta analysis"[ti] OR "systematic literature review"[ti]
                )
                AND
                1865/01/01:2020/09/09[crdt]
            )
            OR
            (
                (
                    "this systematic review"[tw] OR "pooling project"[tw]
                )
                AND
                (
                    1865/01/01:2020/09/09[dcom]
                    OR
                    1865/01/01:2020/09/09[mhda]
                )
            )
            OR
            (
                (
                    "this systematic review"[tiab] OR "pooling project"[tiab]
                )
                AND
                1865/01/01:2020/09/09[crdt]
            )
            OR
            (
                (
                    "systematic review"[tiab]
                    AND
                    1865/01/01:2020/09/09[crdt]
                )
                AND
                (
                    "review"[pt]
                    AND
                    1865/01/01:2020/09/09[dcom]
                )
            )
            OR
            (
                (
                    "meta synthesis"[ti] OR "meta analy*"[ti]
                )
                AND
                1865/01/01:2020/09/09[crdt]
            )
            OR
            (
                (
                    "integrative review"[tw] OR "integrative research review"[tw] OR "rapid review"[tw] OR "umbrella review"[tw]
                )
                AND
                (
                    1865/01/01:2020/09/09[dcom]
                    OR
                    1865/01/01:2020/09/09[mhda]
                )
            )
            OR
            (
                (
                    "integrative review"[tiab] OR "integrative research review"[tiab] OR "rapid review"[tiab] OR "umbrella review"[tiab]
                )
                AND
                1865/01/01:2020/09/09[crdt]
            )
            OR
            (
                (
                    "consensus development conference"[pt] OR "practice guideline"[pt]
                )
                AND
                1865/01/01:2020/09/09[dcom]
            )
            OR
            (
                (
                    "drug class reviews"[ti] OR "cochrane database syst rev"[ta] OR "acp journal club"[ta] OR "health technol assess"[ta] OR "evid rep technol assess summ"[ta] OR "jbi database system rev implement rep"[ta]
                )
                AND
                1865/01/01:2020/09/09[crdt]
            )
            OR
            (
                "clinical guideline"[tw]
                AND
                "management"[tw]
                AND
                (
                    1865/01/01:2020/09/09[dcom]
                    OR
                    1865/01/01:2020/09/09[mhda]
                )
            )
            OR
            (
                "clinical guideline"[tiab]
                AND
                "management"[tiab]
                AND
                1865/01/01:2020/09/09[crdt]
            )
            OR
            (
                (
                    (
                        "evidence based"[ti]
                        AND
                        1865/01/01:2020/09/09[crdt]
                    )
                    OR
                    (
                        "evidence-based medicine"[mh]
                        AND
                        1865/01/01:2020/09/09[mhda]
                    )
                    OR
                    (
                        (
                            "best practice*"[ti] OR "evidence synthesis"[tiab]
                        )
                        AND
                        1865/01/01:2020/09/09[crdt]
                    )
                )
                AND
                (
                    (
                        (
                            "review"[pt] OR "evaluation study"[pt] OR "validation study"[pt] OR "guideline"[pt] OR "pmcbook"[all]
                        )
                        AND
                        1865/01/01:2020/09/09[dcom]
                    )
                    OR
                    (
                        (
                            "diseases category"[mh] OR "behavior and behavior mechanisms"[mh] OR "therapeutics"[mh]
                        )
                        AND
                        1865/01/01:2020/09/09[mhda]
                    )
                )
            )
            OR
            (
                (
                    (
                        (
                            "systematic"[tw] OR "systematically"[tw] OR "study selection"[tw]
                            OR
                            (
                                (
                                    "predetermined"[tw] OR "inclusion"[tw]
                                )
                                AND
                                "criteri*"[tw]
                            )
                            OR
                            "exclusion criteri*"[tw] OR "main outcome measures"[tw] OR "standard of care"[tw] OR "standards of care"[tw]
                        )
                        AND
                        (
                            1865/01/01:2020/09/09[dcom]
                            OR
                            1865/01/01:2020/09/09[mhda]
                        )
                    )
                    OR
                    (
                        (
                            "systematic"[tiab] OR "systematically"[tiab] OR "study selection"[tiab]
                            OR
                            (
                                (
                                    "predetermined"[tiab] OR "inclusion"[tiab]
                                )
                                AND
                                "criteri*"[tiab]
                            )
                            OR
                            "exclusion criteri*"[tiab] OR "main outcome measures"[tiab] OR "standard of care"[tiab] OR "standards of care"[tiab]
                        )
                        AND
                        1865/01/01:2020/09/09[crdt]
                    )
                    OR
                    (
                        "critical"[tiab] 
                        AND
                        1865/01/01:2020/09/09[crdt]
                    )
                )
                AND
                (
                    (
                        (
                            "survey"[tiab] OR "surveys"[tiab] OR "review"[tiab] OR "reviews"[tiab] OR "analysis"[ti] OR "critique"[tiab]
                        )
                        AND
                        1865/01/01:2020/09/09[crdt]
                    )
                    OR
                    (
                        (
                            "overview*"[tw] OR "search*"[tw] OR "handsearch"[tw] OR "appraisal"[tw]
                        )
                        AND
                        (
                            1865/01/01:2020/09/09[dcom]
                            OR
                            1865/01/01:2020/09/09[mhda]
                        )
                    )
                    OR
                    (
                        (
                            "overview*"[tiab] OR "search*"[tiab] OR "handsearch"[tiab] OR "appraisal"[tiab]
                        )
                        AND
                        1865/01/01:2020/09/09[crdt]
                    )
                    OR
                    (
                        (
                            (
                                "reduction"[tw]
                                AND
                                (
                                    1865/01/01:2020/09/09[dcom]
                                    OR
                                    1865/01/01:2020/09/09[mhda]
                                )
                            )
                            OR
                            (
                                "reduction"[tiab]
                                AND
                                1865/01/01:2020/09/09[crdt]
                            )
                        )
                        AND
                        (
                            (
                                "risk"[mh]
                                AND
                                1865/01/01:2020/09/09[mhda]
                            )
                            OR
                            (
                                (
                                    "risk"[tw]
                                    AND
                                    (
                                        1865/01/01:2020/09/09[dcom]
                                        OR
                                        1865/01/01:2020/09/09[mhda]
                                    )
                                )
                                OR
                                (
                                    "risk"[tiab]
                                    AND
                                    1865/01/01:2020/09/09[crdt]
                                )
                            )
                        )
                        AND
                        (
                            (
                                (
                                    "death"[mh] OR "recurrence"[mh]
                                )
                                AND
                                1865/01/01:2020/09/09[mhda]
                            )
                            OR
                            (
                                (
                                    "death"[all] OR "recurrence"[all]
                                )
                                AND
                                1865/01/01:2020/09/09[dcom]
                            )
                        )
                    )
                )
                AND
                (
                    (
                        (
                            "literature"[tiab] OR "articles"[tiab] OR "publications"[tiab] OR "publication"[tiab] OR "bibliography"[tiab] OR "bibliographies"[tiab] OR "published"[tiab] OR "database"[tiab] OR "internet"[tiab] OR "textbooks"[tiab] OR "trials"[tiab]
                        )
                        AND
                        1865/01/01:2020/09/09[crdt]
                    )
                    OR
                    (
                        (
                            "pooled data"[tw] OR "unpublished"[tw] OR "citation"[tw] OR "citations"[tw] OR "references"[tw] OR "scales"[tw] OR "papers"[tw] OR "datasets"[tw] OR "meta analy*"[tw]
                        )
                        AND
                        (
                            1865/01/01:2020/09/09[dcom]
                            OR
                            1865/01/01:2020/09/09[mhda]
                        )
                    )
                    OR
                    (
                        (
                            "pooled data"[tiab] OR "unpublished"[tiab] OR "citation"[tiab] OR "citations"[tiab] OR "references"[tiab] OR "scales"[tiab] OR "papers"[tiab] OR "datasets"[tiab] OR "meta analy*"[tiab]
                        )
                        AND
                        1865/01/01:2020/09/09[crdt]
                    )
                    OR
                    (
                        "clinical"[tiab]
                        AND
                        "studies"[tiab]
                        AND
                        1865/01/01:2020/09/09[crdt]
                    )
                    OR
                    (
                        "treatment outcome"[mh]
                        AND
                        1865/01/01:2020/09/09[mhda]
                    )
                    OR
                    (
                        "treatment outcome"[tw]
                        AND
                        (
                            1865/01/01:2020/09/09[dcom]
                            OR
                            1865/01/01:2020/09/09[mhda]
                        )
                    )
                    OR
                    (
                        "treatment outcome"[tiab]
                        AND
                        1865/01/01:2020/09/09[crdt]
                    )
                    OR
                    (
                        "pmcbook"[all]
                        AND
                        1865/01/01:2020/09/09[dcom]
                    )
                )
            )
        )
        NOT
        (
            (
                "letter"[pt] OR "newspaper article"[pt]
            )
            AND
            1865/01/01:2020/09/09[dcom]
        )
    )
)
```
