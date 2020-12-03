# README

**PRISMA-S checklist**

Rethlefsen M, Kirtley S, Waffenschmidt S, Ayala AP, Moher D, Page MJ, Koffel J. PRISMA-S: An Extension to the PRISMA Statement for Reporting Literature Searches in Systematic Reviews. Version: 5. OSF Preprints. 2020 Jul 16. [doi: 10.31219/osf.io/sfc38](https://doi.org/10.31219/osf.io/sfc38).

# INFORMATION SOURCES AND METHODS

## 1 Database name: Name each individual database searched, stating the platform for each

MEDLINE via PubMed (https://pubmed.ncbi.nlm.nih.gov)

Adding other search sources, such as Scopus, OSF, and medRxiv, is planned in the future when more appraisers become available.

## 2 Multi-database searching: If databases were searched simultaneously on a single platform, state the name of the platform, listing all of the databases searched

Not used yet.

## 3 Study registries: List any study registries searched

Not used yet.

Adding other search sources, such as PROSPERO and OSF Registries, is planned in the future when more appraisers become available.

## 4 Online resources and browsing: Describe any online or print source purposefully searched or browsed (e.g., tables of contents, printconference proceedings, web sites), and how this was done

Not used yet.

## 5 Citation searching: Indicate whether cited references or citing references were examined, and describe any methods used for locating cited/citing references (e.g., browsing reference lists, using a citation index, setting up email alerts for references citing included studies)

Not used yet.

If relevant references are somehow identified _during_ critical appraisal, their associated reports will be collected and added to the total report count.

## 6 Contacts: Indicate whether additional studies or data were sought by contacting authors, experts, manufacturers, or others

Will not be done routinely. However, if specifically requested when crowdfunded or at will, will be done.

## 7 Other methods: Describe any additional information sources or search methods used

None used.

# SEARCH STRATEGIES

## 8 Full search strategies: Include the search strategies for each database and information source, copied and pasted exactly as run

* This is the Replicated Version of the _PubMed Systematic Review Subset Query, Zheln Edition_.
* Before use, replace all the upper limit dates with the date needed using any text editor.
* If everything done correctly and the query itself still works, you will get a consistent set of records each time on whatever date you run the query.

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
AND
(2020/09/09:2020/09/09[crdt] OR 2020/09/09:2020/09/09[dcom] OR 2020/09/09:2020/09/09[mhda])
```

## 9 Limits and restrictions: Specify that no limits were used, or describe any limits or restrictions applied to a search (e.g., date or time period, language, study design) and provide justification for their use

None used except those built in the query.

## 10 Search filters: Indicate whether published search filters were used (as originally designed or modified), and if so, cite the filter(s) used

* The _PubMed Systematic Review Subset Query, Zheln Edition,_ ultimately represents the [Search Strategy Used to Create the Systematic Reviews Subset on PubMed](https://www.nlm.nih.gov/bsd/pubmed_subsets/sysreviews_strategy.html) as joined from the two versions: [February 2017](http://web.archive.org/web/20181023065423/https://www.nlm.nih.gov/bsd/pubmed_subsets/sysreviews_strategy.html) and [December 2018](http://web.archive.org/web/20190711085949/https://www.nlm.nih.gov/bsd/pubmed_subsets/sysreviews_strategy.html).
* The February 2017 version is [based](https://wayback.archive-it.org/org-350/20180406175620/https://www.nlm.nih.gov/bsd/pubmed_subsets/sysreviews_sources.html) on the study by [Shojania & Bero 2001][Shojania2001157162].
* I do not know what the December 2018 version is based on, as it has not been written there.
* See a detailed account of the development of the _Zheln Edition_ and its testing reports in the [commit history of the Zheln methods repository](https://github.com/p1m-ortho/qs-global-ortho-search-queries/commits/global-sr-query).
* While lurking through the commit history, be sure to inspect [both the diff _and_ the body of the commits](https://git-scm.com/book/en/v2/Git-Basics-Recording-Changes-to-the-Repository).

## 11 Prior work: Indicate when search strategies from other literature reviews were adapted or reused for a substantive part or all of the search, citing the previous review(s)

None used other than already mentioned.

## 12 Updates: Report the methods used to update the search(es) (e.g., rerunning searches, email alerts)

Manual reruns through the website interface.

Implementing automatic updates using PubMed APIs is considered for the future when more staff is available.

## 13 Dates of searches: For each search strategy, provide the date when the last search occurred

The searches are run daily, please see the [directory containing searches in the Zheln methods repository](https://github.com/p1m-ortho/qs-global-ortho-search-queries/tree/global-sr-query/zheln/ssb-replicated-ae408b9).

# PEER REVIEW

## 14 Peer review: Describe any search peer review process

None.

# MANAGING RECORDS

## 15 Total records: Document the total number of records identified from each database and other information sources

Please consult the [Appraisal Log](https://github.com/p1m-ortho/qs-global-ortho-search-queries/blob/global-sr-query/zheln/Appraisal_Log.md).

## 16 Deduplication: Describe the processes and any software used to deduplicate records from multiple database searches and other information sources

None done, because records are reviewed separately for each date and are unlikely to be duplicate within a single PubMed search.

[Shojania2001157162]: https://www.researchgate.net/publication/11820967_Taking_Advantage_of_the_Explosion_of_Systematic_Reviews_An_Efficient_MEDLINE_Search_Strategy "Shojania KG, Bero LA. Taking advantage of the explosion of systematic reviews: an efficient MEDLINE search strategy. Eff Clin Pract. 2001 Jul-Aug;4(4):157-62. PMID: 11525102."
