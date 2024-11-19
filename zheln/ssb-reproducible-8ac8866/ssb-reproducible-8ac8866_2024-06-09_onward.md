```python
def build_rssb_query(start_date, end_date):
    # Parse dates - assuming they are in ISO format
    start_datetime = datetime.fromisoformat(start_date)
    end_datetime = datetime.fromisoformat(end_date)

    # Format dates in PubMed format
    pubmed_date_format = r"%Y/%m/%d"
    start_date = start_datetime.strftime(pubmed_date_format)
    end_date = end_datetime.strftime(pubmed_date_format)

    rssb_query = f"""
(
    (
        (
            (
                (
                    (
                        "systematic review"[ti] OR "systematic literature review"[ti] OR "systematic scoping review"[ti] OR "systematic narrative review"[ti] OR "systematic qualitative review"[ti] OR "systematic evidence review"[ti] OR "systematic quantitative review"[ti] OR "systematic meta review"[ti] OR "systematic critical review"[ti] OR "systematic mixed studies review"[ti] OR "systematic mapping review"[ti] OR "systematic cochrane review"[ti] OR "systematic search and review"[ti] OR "systematic integrative review"[ti]
                    )
                    AND
                    1865/01/01:{end_date}[crdt]
                )
                NOT
                (
                    "comment"[pt]
                    AND
                    1865/01/01:{end_date}[dcom]
                )
                NOT
                (
                    (
                        "protocol"[ti] OR "protocols"[ti]
                    )
                    AND
                    1865/01/01:{end_date}[crdt]
                )
            )
            NOT
            (
                "medline"[sb]
                AND
                1865/01/01:{end_date}[dcom]
            )
        )
        OR
        (
            (
                "cochrane database syst rev"[ta]
                AND
                1865/01/01:{end_date}[crdt]
            )
            AND
            (
                "review"[pt]
                AND
                1865/01/01:{end_date}[dcom]
            )
        )
        OR
        (
            "systematic review"[pt]
            AND
            1865/01/01:{end_date}[dcom]
        )
    )
    OR
    (
        (
            (
                "systematic review"[ti]
                AND
                1865/01/01:{end_date}[crdt]
            )
            OR
            (
                "meta-analysis"[pt]
                AND
                1865/01/01:{end_date}[dcom]
            )
            OR
            (
                (
                    "meta analysis"[ti] OR "systematic literature review"[ti]
                )
                AND
                1865/01/01:{end_date}[crdt]
            )
            OR
            (
                (
                    "this systematic review"[tw] OR "pooling project"[tw]
                )
                AND
                (
                    1865/01/01:{end_date}[dcom]
                    OR
                    1865/01/01:{end_date}[mhda]
                )
            )
            OR
            (
                (
                    "this systematic review"[tiab] OR "pooling project"[tiab]
                )
                AND
                1865/01/01:{end_date}[crdt]
            )
            OR
            (
                (
                    "systematic review"[tiab]
                    AND
                    1865/01/01:{end_date}[crdt]
                )
                AND
                (
                    "review"[pt]
                    AND
                    1865/01/01:{end_date}[dcom]
                )
            )
            OR
            (
                (
                    "meta synthesis"[ti] OR "meta analy*"[ti]
                )
                AND
                1865/01/01:{end_date}[crdt]
            )
            OR
            (
                (
                    "integrative review"[tw] OR "integrative research review"[tw] OR "rapid review"[tw] OR "umbrella review"[tw]
                )
                AND
                (
                    1865/01/01:{end_date}[dcom]
                    OR
                    1865/01/01:{end_date}[mhda]
                )
            )
            OR
            (
                (
                    "integrative review"[tiab] OR "integrative research review"[tiab] OR "rapid review"[tiab] OR "umbrella review"[tiab]
                )
                AND
                1865/01/01:{end_date}[crdt]
            )
            OR
            (
                (
                    "consensus development conference"[pt] OR "practice guideline"[pt]
                )
                AND
                1865/01/01:{end_date}[dcom]
            )
            OR
            (
                (
                    "drug class reviews"[ti] OR "cochrane database syst rev"[ta] OR "acp journal club"[ta] OR "health technol assess"[ta] OR "evid rep technol assess summ"[ta] OR "jbi database system rev implement rep"[ta]
                )
                AND
                1865/01/01:{end_date}[crdt]
            )
            OR
            (
                "clinical guideline"[tw]
                AND
                "management"[tw]
                AND
                (
                    1865/01/01:{end_date}[dcom]
                    OR
                    1865/01/01:{end_date}[mhda]
                )
            )
            OR
            (
                "clinical guideline"[tiab]
                AND
                "management"[tiab]
                AND
                1865/01/01:{end_date}[crdt]
            )
            OR
            (
                (
                    (
                        "evidence based"[ti]
                        AND
                        1865/01/01:{end_date}[crdt]
                    )
                    OR
                    (
                        "evidence-based medicine"[mh]
                        AND
                        1865/01/01:{end_date}[mhda]
                    )
                    OR
                    (
                        (
                            "best practice*"[ti] OR "evidence synthesis"[tiab]
                        )
                        AND
                        1865/01/01:{end_date}[crdt]
                    )
                )
                AND
                (
                    (
                        (
                            "review"[pt] OR "evaluation study"[pt] OR "validation study"[pt] OR "guideline"[pt] OR "pmcbook"[all]
                        )
                        AND
                        1865/01/01:{end_date}[dcom]
                    )
                    OR
                    (
                        (
                            "diseases category"[mh] OR "behavior and behavior mechanisms"[mh] OR "therapeutics"[mh]
                        )
                        AND
                        1865/01/01:{end_date}[mhda]
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
                            1865/01/01:{end_date}[dcom]
                            OR
                            1865/01/01:{end_date}[mhda]
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
                        1865/01/01:{end_date}[crdt]
                    )
                    OR
                    (
                        "critical"[tiab] 
                        AND
                        1865/01/01:{end_date}[crdt]
                    )
                )
                AND
                (
                    (
                        (
                            "survey"[tiab] OR "surveys"[tiab] OR "review"[tiab] OR "reviews"[tiab] OR "analysis"[ti] OR "critique"[tiab]
                        )
                        AND
                        1865/01/01:{end_date}[crdt]
                    )
                    OR
                    (
                        (
                            "overview*"[tw] OR "search*"[tw] OR "handsearch"[tw] OR "appraisal"[tw]
                        )
                        AND
                        (
                            1865/01/01:{end_date}[dcom]
                            OR
                            1865/01/01:{end_date}[mhda]
                        )
                    )
                    OR
                    (
                        (
                            "overview*"[tiab] OR "search*"[tiab] OR "handsearch"[tiab] OR "appraisal"[tiab]
                        )
                        AND
                        1865/01/01:{end_date}[crdt]
                    )
                    OR
                    (
                        (
                            (
                                "reduction"[tw]
                                AND
                                (
                                    1865/01/01:{end_date}[dcom]
                                    OR
                                    1865/01/01:{end_date}[mhda]
                                )
                            )
                            OR
                            (
                                "reduction"[tiab]
                                AND
                                1865/01/01:{end_date}[crdt]
                            )
                        )
                        AND
                        (
                            (
                                "risk"[mh]
                                AND
                                1865/01/01:{end_date}[mhda]
                            )
                            OR
                            (
                                (
                                    "risk"[tw]
                                    AND
                                    (
                                        1865/01/01:{end_date}[dcom]
                                        OR
                                        1865/01/01:{end_date}[mhda]
                                    )
                                )
                                OR
                                (
                                    "risk"[tiab]
                                    AND
                                    1865/01/01:{end_date}[crdt]
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
                                1865/01/01:{end_date}[mhda]
                            )
                            OR
                            (
                                (
                                    "death"[all] OR "recurrence"[all]
                                )
                                AND
                                1865/01/01:{end_date}[dcom]
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
                        1865/01/01:{end_date}[crdt]
                    )
                    OR
                    (
                        (
                            "pooled data"[tw] OR "unpublished"[tw] OR "citation"[tw] OR "citations"[tw] OR "references"[tw] OR "scales"[tw] OR "papers"[tw] OR "datasets"[tw] OR "meta analy*"[tw]
                        )
                        AND
                        (
                            1865/01/01:{end_date}[dcom]
                            OR
                            1865/01/01:{end_date}[mhda]
                        )
                    )
                    OR
                    (
                        (
                            "pooled data"[tiab] OR "unpublished"[tiab] OR "citation"[tiab] OR "citations"[tiab] OR "references"[tiab] OR "scales"[tiab] OR "papers"[tiab] OR "datasets"[tiab] OR "meta analy*"[tiab]
                        )
                        AND
                        1865/01/01:{end_date}[crdt]
                    )
                    OR
                    (
                        "clinical"[tiab]
                        AND
                        "studies"[tiab]
                        AND
                        1865/01/01:{end_date}[crdt]
                    )
                    OR
                    (
                        "treatment outcome"[mh]
                        AND
                        1865/01/01:{end_date}[mhda]
                    )
                    OR
                    (
                        "treatment outcome"[tw]
                        AND
                        (
                            1865/01/01:{end_date}[dcom]
                            OR
                            1865/01/01:{end_date}[mhda]
                        )
                    )
                    OR
                    (
                        "treatment outcome"[tiab]
                        AND
                        1865/01/01:{end_date}[crdt]
                    )
                    OR
                    (
                        "pmcbook"[all]
                        AND
                        1865/01/01:{end_date}[dcom]
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
            1865/01/01:{end_date}[dcom]
        )
    )
) AND ({start_date}:{end_date}[crdt] OR {start_date}:{end_date}[dcom] OR {start_date}:{end_date}[mhda] OR {start_date}:{end_date}[edat])
    """

    return rssb_query
```
