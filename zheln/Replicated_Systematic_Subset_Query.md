# Zheln Search – Replicated Systematic Review Subset

## Background

* This query ultimately represents the [Search Strategy Used to Create the Systematic Reviews Subset on PubMed](https://www.nlm.nih.gov/bsd/pubmed_subsets/sysreviews_strategy.html) as joined from the two versions: [February 2017](http://web.archive.org/web/20181023065423/https://www.nlm.nih.gov/bsd/pubmed_subsets/sysreviews_strategy.html) and [December 2018](http://web.archive.org/web/20190711085949/https://www.nlm.nih.gov/bsd/pubmed_subsets/sysreviews_strategy.html).
* The February 2017 version is [based](https://wayback.archive-it.org/org-350/20180406175620/https://www.nlm.nih.gov/bsd/pubmed_subsets/sysreviews_sources.html) on the study by [Shojania & Bero 2001](https://pubmed.gov/11525102). I don’t know what the December 2018 version is based on, it’s not been written there.
* The Replicated version produces a replicable set of records for a certain date or date period. In other words, if the query still works, you will get a consistent set of records each time on whatever date you run the query. Notice: There is [evidence PubMed index is sometimes updated retrospectively](https://github.com/p1m-ortho/qs-global-ortho-search-queries/commit/29c9a7cfba51dc06390672971eb69d248b91cf35); therefore, in these cases, count mismatches may still occur. **Notice 2: Replicated Systematic Review Subset appears to have stopped producing replicable record sets on PubMed’s side as of June 2022.** I initiated an investigation to find out more – please see the [Development Log](#development-log) down below.

## Development Log

**Nov 11, 2022**

This day the [October 18&ndash;25, 2022](ssb-replicated-ae408b9/ssb-replicated-ae408b9_2022-10-18_thru_2022-10-25.md) query also produced **2,917** records, the [Nov 7, 2020](ssb-replicated-ae408b9/ssb-replicated-ae408b9_2020-11-07.md) query also produced **145** records, and the [Nov 8, 2020](ssb-replicated-ae408b9/ssb-replicated-ae408b9_2020-11-08.md) query also produced **63** records.

Now that I have all the new query results exported, I can identify and inspect the records. And even simply looking at the sorted PMID lists (see [diffs](https://github.com/p1m-ortho/qs-global-ortho-search-queries/commits/global-sr-query/zheln/rssb-debug)), I am noticing that for the 2020 records, the bulk of the records with lesser PMIDs went missing over time, whereas for the recent late Oct and Nov, 2022, records, record additions and deletions seem random.

So, time to look at the individual records.

**Nov 10, 2022**

Doing more as a table to try and find a clue or at least figure out the extent of the problem (or if it changes with time):

| Period of Coverage | Original Query Date | Original Total | Replication Date | Replication Total | Difference (%) |
|--------------------|---------------|:--------------:|------------------|:-----------------:|:--------------:|
| [Nov 7, 2020](ssb-replicated-ae408b9/ssb-replicated-ae408b9_2020-11-07.md) | Nov 9, 2020 | 290 | Nov 10, 2022 | 145 | -145 (-50%) |
| [Nov 8, 2020](ssb-replicated-ae408b9/ssb-replicated-ae408b9_2020-11-08.md) | Nov 10, 2020 | 180 | Nov 10, 2022 | 63 | -117 (-65%) |
| … | … | … | … | … | … |
| [October 18&ndash;25, 2022](ssb-replicated-ae408b9/ssb-replicated-ae408b9_2022-10-18_thru_2022-10-25.md) | Oct 26, 2022 | 2,941 | Nov 6, 2022<br>Nov 10, 2022 | 2,921<br>2,917 | -20 (-0.7%)<br>-24 (-0.8%) |
| [October 26 &ndash; November 5, 2022](ssb-replicated-ae408b9/ssb-replicated-ae408b9_2022-10-26_thru_2022-11-05.md) | Nov 6, 2022 | 3,237 | Nov 10, 2022 | 3,233 | -4 (-0.1%) |

So the difference is, <s>not _that_ big</s> at times, _substantial_ (more than a twofold reduction for one date!); it is not uniform in terms of its direction; and it tends to accumulate over time. We are keeping in mind that between 2020 and 2022 there were major changes in NLM’s procedures for PubMed, so there may be heterogeneity in the difference.

Anyway, let’s look at the structural changes next to identify and inspect the records that differ.

**Nov 6, 2022**

* I am finally going to investigate the reasons behind the query not being replicable anymore, as I have [first noticed in June 2022](https://github.com/p1m-ortho/qs-global-ortho-search-queries/commit/0da3c163f9da1ac98e38c03fb0ff367ea0286d47).
* So let’s take the last one I did, and this the one [Oct 18 through 25, 2022](zheln/ssb-replicated-ae408b9/ssb-replicated-ae408b9_2022-10-18_thru_2022-10-25.md). It used to produce **2,941** on Oct 26, 2022. Now that I’ve copied, pasted, and run it through [pubmed.ncbi.nlm.nih.gov](https://pubmed.ncbi.nlm.nih.gov), it’s **2,921**.

**Before November 2022**

See a detailed account of development of the Replicated Systematic Review Subset and its testing reports in the [commit history of the Zheln methods repository](https://github.com/p1m-ortho/qs-global-ortho-search-queries/commits/global-sr-query). While lurking through the commit history, be sure to inspect [both the diff _and_ the body of the commits](https://git-scm.com/book/en/v2/Git-Basics-Recording-Changes-to-the-Repository). Further testing from November 2022 onward is available in this section.

## Current Version

**Usage Notes**

* Intended to cover records from Oct 26, 2022, to Nov 5, 2022.
* Run on Nov 6, 2022, to retrieve 3,237 records.
* To change the date interval, one would need to replace all the upper limit dates with the latest date needed, and the lower limit dates from the final `(2022/10/26:2022/11/05[crdt] OR 2022/10/26:2022/11/05[dcom] OR 2022/10/26:2022/11/05[mhda])` fragment with the earliest date needed (not touching the `1865/01/01` fragments throughout the query, though), using any text editor. If one is to filter just the records indexed _on_ the date or _by_ the date, one needs to edit this final fragment accordingly.

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
                    1865/01/01:2022/11/05[crdt]
                )
                NOT
                (
                    "comment"[pt]
                    AND
                    1865/01/01:2022/11/05[dcom]
                )
                NOT
                (
                    (
                        "protocol"[ti] OR "protocols"[ti]
                    )
                    AND
                    1865/01/01:2022/11/05[crdt]
                )
            )
            NOT
            (
                "medline"[sb]
                AND
                1865/01/01:2022/11/05[dcom]
            )
        )
        OR
        (
            (
                "cochrane database syst rev"[ta]
                AND
                1865/01/01:2022/11/05[crdt]
            )
            AND
            (
                "review"[pt]
                AND
                1865/01/01:2022/11/05[dcom]
            )
        )
        OR
        (
            "systematic review"[pt]
            AND
            1865/01/01:2022/11/05[dcom]
        )
    )
    OR
    (
        (
            (
                "systematic review"[ti]
                AND
                1865/01/01:2022/11/05[crdt]
            )
            OR
            (
                "meta-analysis"[pt]
                AND
                1865/01/01:2022/11/05[dcom]
            )
            OR
            (
                (
                    "meta analysis"[ti] OR "systematic literature review"[ti]
                )
                AND
                1865/01/01:2022/11/05[crdt]
            )
            OR
            (
                (
                    "this systematic review"[tw] OR "pooling project"[tw]
                )
                AND
                (
                    1865/01/01:2022/11/05[dcom]
                    OR
                    1865/01/01:2022/11/05[mhda]
                )
            )
            OR
            (
                (
                    "this systematic review"[tiab] OR "pooling project"[tiab]
                )
                AND
                1865/01/01:2022/11/05[crdt]
            )
            OR
            (
                (
                    "systematic review"[tiab]
                    AND
                    1865/01/01:2022/11/05[crdt]
                )
                AND
                (
                    "review"[pt]
                    AND
                    1865/01/01:2022/11/05[dcom]
                )
            )
            OR
            (
                (
                    "meta synthesis"[ti] OR "meta analy*"[ti]
                )
                AND
                1865/01/01:2022/11/05[crdt]
            )
            OR
            (
                (
                    "integrative review"[tw] OR "integrative research review"[tw] OR "rapid review"[tw] OR "umbrella review"[tw]
                )
                AND
                (
                    1865/01/01:2022/11/05[dcom]
                    OR
                    1865/01/01:2022/11/05[mhda]
                )
            )
            OR
            (
                (
                    "integrative review"[tiab] OR "integrative research review"[tiab] OR "rapid review"[tiab] OR "umbrella review"[tiab]
                )
                AND
                1865/01/01:2022/11/05[crdt]
            )
            OR
            (
                (
                    "consensus development conference"[pt] OR "practice guideline"[pt]
                )
                AND
                1865/01/01:2022/11/05[dcom]
            )
            OR
            (
                (
                    "drug class reviews"[ti] OR "cochrane database syst rev"[ta] OR "acp journal club"[ta] OR "health technol assess"[ta] OR "evid rep technol assess summ"[ta] OR "jbi database system rev implement rep"[ta]
                )
                AND
                1865/01/01:2022/11/05[crdt]
            )
            OR
            (
                "clinical guideline"[tw]
                AND
                "management"[tw]
                AND
                (
                    1865/01/01:2022/11/05[dcom]
                    OR
                    1865/01/01:2022/11/05[mhda]
                )
            )
            OR
            (
                "clinical guideline"[tiab]
                AND
                "management"[tiab]
                AND
                1865/01/01:2022/11/05[crdt]
            )
            OR
            (
                (
                    (
                        "evidence based"[ti]
                        AND
                        1865/01/01:2022/11/05[crdt]
                    )
                    OR
                    (
                        "evidence-based medicine"[mh]
                        AND
                        1865/01/01:2022/11/05[mhda]
                    )
                    OR
                    (
                        (
                            "best practice*"[ti] OR "evidence synthesis"[tiab]
                        )
                        AND
                        1865/01/01:2022/11/05[crdt]
                    )
                )
                AND
                (
                    (
                        (
                            "review"[pt] OR "evaluation study"[pt] OR "validation study"[pt] OR "guideline"[pt] OR "pmcbook"[all]
                        )
                        AND
                        1865/01/01:2022/11/05[dcom]
                    )
                    OR
                    (
                        (
                            "diseases category"[mh] OR "behavior and behavior mechanisms"[mh] OR "therapeutics"[mh]
                        )
                        AND
                        1865/01/01:2022/11/05[mhda]
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
                            1865/01/01:2022/11/05[dcom]
                            OR
                            1865/01/01:2022/11/05[mhda]
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
                        1865/01/01:2022/11/05[crdt]
                    )
                    OR
                    (
                        "critical"[tiab] 
                        AND
                        1865/01/01:2022/11/05[crdt]
                    )
                )
                AND
                (
                    (
                        (
                            "survey"[tiab] OR "surveys"[tiab] OR "review"[tiab] OR "reviews"[tiab] OR "analysis"[ti] OR "critique"[tiab]
                        )
                        AND
                        1865/01/01:2022/11/05[crdt]
                    )
                    OR
                    (
                        (
                            "overview*"[tw] OR "search*"[tw] OR "handsearch"[tw] OR "appraisal"[tw]
                        )
                        AND
                        (
                            1865/01/01:2022/11/05[dcom]
                            OR
                            1865/01/01:2022/11/05[mhda]
                        )
                    )
                    OR
                    (
                        (
                            "overview*"[tiab] OR "search*"[tiab] OR "handsearch"[tiab] OR "appraisal"[tiab]
                        )
                        AND
                        1865/01/01:2022/11/05[crdt]
                    )
                    OR
                    (
                        (
                            (
                                "reduction"[tw]
                                AND
                                (
                                    1865/01/01:2022/11/05[dcom]
                                    OR
                                    1865/01/01:2022/11/05[mhda]
                                )
                            )
                            OR
                            (
                                "reduction"[tiab]
                                AND
                                1865/01/01:2022/11/05[crdt]
                            )
                        )
                        AND
                        (
                            (
                                "risk"[mh]
                                AND
                                1865/01/01:2022/11/05[mhda]
                            )
                            OR
                            (
                                (
                                    "risk"[tw]
                                    AND
                                    (
                                        1865/01/01:2022/11/05[dcom]
                                        OR
                                        1865/01/01:2022/11/05[mhda]
                                    )
                                )
                                OR
                                (
                                    "risk"[tiab]
                                    AND
                                    1865/01/01:2022/11/05[crdt]
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
                                1865/01/01:2022/11/05[mhda]
                            )
                            OR
                            (
                                (
                                    "death"[all] OR "recurrence"[all]
                                )
                                AND
                                1865/01/01:2022/11/05[dcom]
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
                        1865/01/01:2022/11/05[crdt]
                    )
                    OR
                    (
                        (
                            "pooled data"[tw] OR "unpublished"[tw] OR "citation"[tw] OR "citations"[tw] OR "references"[tw] OR "scales"[tw] OR "papers"[tw] OR "datasets"[tw] OR "meta analy*"[tw]
                        )
                        AND
                        (
                            1865/01/01:2022/11/05[dcom]
                            OR
                            1865/01/01:2022/11/05[mhda]
                        )
                    )
                    OR
                    (
                        (
                            "pooled data"[tiab] OR "unpublished"[tiab] OR "citation"[tiab] OR "citations"[tiab] OR "references"[tiab] OR "scales"[tiab] OR "papers"[tiab] OR "datasets"[tiab] OR "meta analy*"[tiab]
                        )
                        AND
                        1865/01/01:2022/11/05[crdt]
                    )
                    OR
                    (
                        "clinical"[tiab]
                        AND
                        "studies"[tiab]
                        AND
                        1865/01/01:2022/11/05[crdt]
                    )
                    OR
                    (
                        "treatment outcome"[mh]
                        AND
                        1865/01/01:2022/11/05[mhda]
                    )
                    OR
                    (
                        "treatment outcome"[tw]
                        AND
                        (
                            1865/01/01:2022/11/05[dcom]
                            OR
                            1865/01/01:2022/11/05[mhda]
                        )
                    )
                    OR
                    (
                        "treatment outcome"[tiab]
                        AND
                        1865/01/01:2022/11/05[crdt]
                    )
                    OR
                    (
                        "pmcbook"[all]
                        AND
                        1865/01/01:2022/11/05[dcom]
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
            1865/01/01:2022/11/05[dcom]
        )
    )
) AND (2022/10/26:2022/11/05[crdt] OR 2022/10/26:2022/11/05[dcom] OR 2022/10/26:2022/11/05[mhda])
```
