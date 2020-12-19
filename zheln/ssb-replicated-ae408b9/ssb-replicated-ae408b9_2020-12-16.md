# Zheln Search

## PubMed

### Replicated Systematic Review Subset

* This query ultimately represents the [Search Strategy Used to Create the Systematic Reviews Subset on PubMed](https://www.nlm.nih.gov/bsd/pubmed_subsets/sysreviews_strategy.html) as joined from the two versions: [February 2017](http://web.archive.org/web/20181023065423/https://www.nlm.nih.gov/bsd/pubmed_subsets/sysreviews_strategy.html) and [December 2018](http://web.archive.org/web/20190711085949/https://www.nlm.nih.gov/bsd/pubmed_subsets/sysreviews_strategy.html).
* The February 2017 version is [based](https://wayback.archive-it.org/org-350/20180406175620/https://www.nlm.nih.gov/bsd/pubmed_subsets/sysreviews_sources.html) on the study by [Shojania & Bero 2001](https://pubmed.gov/11525102). I don’t know what the December 2018 version is based on, it’s not been written there.
* The Replicated version produces a replicable set of records for a certain date. In other words, if the query still works, you will get a consistent set of records each time on whatever date you run the query. Notice: There is [evidence PubMed index is sometimes updated retrospectively](https://github.com/p1m-ortho/qs-global-ortho-search-queries/commit/29c9a7cfba51dc06390672971eb69d248b91cf35); therefore, in these cases, count mismatches may still occur.
* See a detailed account of development of the Replicated Systematic Review Subset and its testing reports in the [commit history of the Zheln methods repository](https://github.com/p1m-ortho/qs-global-ortho-search-queries/commits/global-sr-query). While lurking through the commit history, be sure to inspect [both the diff _and_ the body of the commits](https://git-scm.com/book/en/v2/Git-Basics-Recording-Changes-to-the-Repository).
* When run on Dec 18, 2020, and Dec 19, 2020, this query returned 502 errors. At the same time, `(2020/12/16:2020/12/16[crdt] OR 2020/12/16:2020/12/16[dcom] OR 2020/12/16:2020/12/16[mhda])` ran successfully and produced 17,455 and 17,377 results, respectively.

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
                    1865/01/01:2020/12/16[crdt]
                )
                NOT
                (
                    "comment"[pt]
                    AND
                    1865/01/01:2020/12/16[dcom]
                )
                NOT
                (
                    (
                        "protocol"[ti] OR "protocols"[ti]
                    )
                    AND
                    1865/01/01:2020/12/16[crdt]
                )
            )
            NOT
            (
                "medline"[sb]
                AND
                1865/01/01:2020/12/16[dcom]
            )
        )
        OR
        (
            (
                "cochrane database syst rev"[ta]
                AND
                1865/01/01:2020/12/16[crdt]
            )
            AND
            (
                "review"[pt]
                AND
                1865/01/01:2020/12/16[dcom]
            )
        )
        OR
        (
            "systematic review"[pt]
            AND
            1865/01/01:2020/12/16[dcom]
        )
    )
    OR
    (
        (
            (
                "systematic review"[ti]
                AND
                1865/01/01:2020/12/16[crdt]
            )
            OR
            (
                "meta-analysis"[pt]
                AND
                1865/01/01:2020/12/16[dcom]
            )
            OR
            (
                (
                    "meta analysis"[ti] OR "systematic literature review"[ti]
                )
                AND
                1865/01/01:2020/12/16[crdt]
            )
            OR
            (
                (
                    "this systematic review"[tw] OR "pooling project"[tw]
                )
                AND
                (
                    1865/01/01:2020/12/16[dcom]
                    OR
                    1865/01/01:2020/12/16[mhda]
                )
            )
            OR
            (
                (
                    "this systematic review"[tiab] OR "pooling project"[tiab]
                )
                AND
                1865/01/01:2020/12/16[crdt]
            )
            OR
            (
                (
                    "systematic review"[tiab]
                    AND
                    1865/01/01:2020/12/16[crdt]
                )
                AND
                (
                    "review"[pt]
                    AND
                    1865/01/01:2020/12/16[dcom]
                )
            )
            OR
            (
                (
                    "meta synthesis"[ti] OR "meta analy*"[ti]
                )
                AND
                1865/01/01:2020/12/16[crdt]
            )
            OR
            (
                (
                    "integrative review"[tw] OR "integrative research review"[tw] OR "rapid review"[tw] OR "umbrella review"[tw]
                )
                AND
                (
                    1865/01/01:2020/12/16[dcom]
                    OR
                    1865/01/01:2020/12/16[mhda]
                )
            )
            OR
            (
                (
                    "integrative review"[tiab] OR "integrative research review"[tiab] OR "rapid review"[tiab] OR "umbrella review"[tiab]
                )
                AND
                1865/01/01:2020/12/16[crdt]
            )
            OR
            (
                (
                    "consensus development conference"[pt] OR "practice guideline"[pt]
                )
                AND
                1865/01/01:2020/12/16[dcom]
            )
            OR
            (
                (
                    "drug class reviews"[ti] OR "cochrane database syst rev"[ta] OR "acp journal club"[ta] OR "health technol assess"[ta] OR "evid rep technol assess summ"[ta] OR "jbi database system rev implement rep"[ta]
                )
                AND
                1865/01/01:2020/12/16[crdt]
            )
            OR
            (
                "clinical guideline"[tw]
                AND
                "management"[tw]
                AND
                (
                    1865/01/01:2020/12/16[dcom]
                    OR
                    1865/01/01:2020/12/16[mhda]
                )
            )
            OR
            (
                "clinical guideline"[tiab]
                AND
                "management"[tiab]
                AND
                1865/01/01:2020/12/16[crdt]
            )
            OR
            (
                (
                    (
                        "evidence based"[ti]
                        AND
                        1865/01/01:2020/12/16[crdt]
                    )
                    OR
                    (
                        "evidence-based medicine"[mh]
                        AND
                        1865/01/01:2020/12/16[mhda]
                    )
                    OR
                    (
                        (
                            "best practice*"[ti] OR "evidence synthesis"[tiab]
                        )
                        AND
                        1865/01/01:2020/12/16[crdt]
                    )
                )
                AND
                (
                    (
                        (
                            "review"[pt] OR "evaluation study"[pt] OR "validation study"[pt] OR "guideline"[pt] OR "pmcbook"[all]
                        )
                        AND
                        1865/01/01:2020/12/16[dcom]
                    )
                    OR
                    (
                        (
                            "diseases category"[mh] OR "behavior and behavior mechanisms"[mh] OR "therapeutics"[mh]
                        )
                        AND
                        1865/01/01:2020/12/16[mhda]
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
                            1865/01/01:2020/12/16[dcom]
                            OR
                            1865/01/01:2020/12/16[mhda]
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
                        1865/01/01:2020/12/16[crdt]
                    )
                    OR
                    (
                        "critical"[tiab] 
                        AND
                        1865/01/01:2020/12/16[crdt]
                    )
                )
                AND
                (
                    (
                        (
                            "survey"[tiab] OR "surveys"[tiab] OR "review"[tiab] OR "reviews"[tiab] OR "analysis"[ti] OR "critique"[tiab]
                        )
                        AND
                        1865/01/01:2020/12/16[crdt]
                    )
                    OR
                    (
                        (
                            "overview*"[tw] OR "search*"[tw] OR "handsearch"[tw] OR "appraisal"[tw]
                        )
                        AND
                        (
                            1865/01/01:2020/12/16[dcom]
                            OR
                            1865/01/01:2020/12/16[mhda]
                        )
                    )
                    OR
                    (
                        (
                            "overview*"[tiab] OR "search*"[tiab] OR "handsearch"[tiab] OR "appraisal"[tiab]
                        )
                        AND
                        1865/01/01:2020/12/16[crdt]
                    )
                    OR
                    (
                        (
                            (
                                "reduction"[tw]
                                AND
                                (
                                    1865/01/01:2020/12/16[dcom]
                                    OR
                                    1865/01/01:2020/12/16[mhda]
                                )
                            )
                            OR
                            (
                                "reduction"[tiab]
                                AND
                                1865/01/01:2020/12/16[crdt]
                            )
                        )
                        AND
                        (
                            (
                                "risk"[mh]
                                AND
                                1865/01/01:2020/12/16[mhda]
                            )
                            OR
                            (
                                (
                                    "risk"[tw]
                                    AND
                                    (
                                        1865/01/01:2020/12/16[dcom]
                                        OR
                                        1865/01/01:2020/12/16[mhda]
                                    )
                                )
                                OR
                                (
                                    "risk"[tiab]
                                    AND
                                    1865/01/01:2020/12/16[crdt]
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
                                1865/01/01:2020/12/16[mhda]
                            )
                            OR
                            (
                                (
                                    "death"[all] OR "recurrence"[all]
                                )
                                AND
                                1865/01/01:2020/12/16[dcom]
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
                        1865/01/01:2020/12/16[crdt]
                    )
                    OR
                    (
                        (
                            "pooled data"[tw] OR "unpublished"[tw] OR "citation"[tw] OR "citations"[tw] OR "references"[tw] OR "scales"[tw] OR "papers"[tw] OR "datasets"[tw] OR "meta analy*"[tw]
                        )
                        AND
                        (
                            1865/01/01:2020/12/16[dcom]
                            OR
                            1865/01/01:2020/12/16[mhda]
                        )
                    )
                    OR
                    (
                        (
                            "pooled data"[tiab] OR "unpublished"[tiab] OR "citation"[tiab] OR "citations"[tiab] OR "references"[tiab] OR "scales"[tiab] OR "papers"[tiab] OR "datasets"[tiab] OR "meta analy*"[tiab]
                        )
                        AND
                        1865/01/01:2020/12/16[crdt]
                    )
                    OR
                    (
                        "clinical"[tiab]
                        AND
                        "studies"[tiab]
                        AND
                        1865/01/01:2020/12/16[crdt]
                    )
                    OR
                    (
                        "treatment outcome"[mh]
                        AND
                        1865/01/01:2020/12/16[mhda]
                    )
                    OR
                    (
                        "treatment outcome"[tw]
                        AND
                        (
                            1865/01/01:2020/12/16[dcom]
                            OR
                            1865/01/01:2020/12/16[mhda]
                        )
                    )
                    OR
                    (
                        "treatment outcome"[tiab]
                        AND
                        1865/01/01:2020/12/16[crdt]
                    )
                    OR
                    (
                        "pmcbook"[all]
                        AND
                        1865/01/01:2020/12/16[dcom]
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
            1865/01/01:2020/12/16[dcom]
        )
    )
) AND (2020/12/16:2020/12/16[crdt] OR 2020/12/16:2020/12/16[dcom] OR 2020/12/16:2020/12/16[mhda])
```
