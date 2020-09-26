# Global Live Search for Systematic Reviews—Zheln.com

> **This page is also available as the short links:**
>
> 🏷 **[p1m.org/ssb](https://p1m.org/ssb) or [p1m.org/systematic](https://p1m.org/systematic)**
>
> 🇷🇺 [Русскоязычная версия (поддержка прекращена, последнее обновление от 19 сентября 2020)](legacy/ru-RU/README.md)

## Background

### What Is This Repo?

On [July 11, 2019](https://github.com/p1m-ortho/qs-global-ortho-search-queries/commit/70d3bebf1ed70845950aece09122b49f58fe2880), I inititated this study with the aim of creating an exhaustive registry of systematic reviews in orthopedics (in Russian). Due to the large volume of records to screen, it was not very successful; however, it still did continue up until [Feb 17, 2020](https://github.com/p1m-ortho/qs-global-ortho-search-queries/commit/d44e7db892a23adb8ca3eeb36cbe55b8e05b7b45), when it went into a 200-day hiatus.

Since [September 6, 2020](https://github.com/p1m-ortho/qs-global-ortho-search-queries/commit/ff1f29c87483b355b9541859d4b4c39052046936), the study has continued as [![Woodpecker by Anton from The Noun Project](https://raw.githubusercontent.com/drzhelnov/zheln.github.io/gh-pages/favicons/favicon-16x16.png)](https://zheln.com) [Zheln.com](https://zheln.com), a crowdfunding project, and this repository has been a chosen methods repo, while the website itself is hosted in a [separate Zheln repo](https://github.com/drzhelnov/zheln.github.io).

### What Has Changed as Zheln?

1. The focus of the study has been widened to include not only orthopedics but any evidence-based practice.
2. Critical appraisal and replication of reviews is now also performed as part of this project.
3. Grouping of appraised systematic reviews by health care specialty has been recognized as a critical part of the project.

The search & screening methods have not basically changed, whereas the methods of critical appraisal may be described in one phrase: Informal study of the review documentation with replication of some of the elements of the review by a single appraiser to formulate their expert impression as to whether the review is reproducible and whether it is useful for evidence-based practice.

Crowdfunding details are available from the [Zheln](https://zheln.com) website.

### Who Am I & Why Zheln?

Please refer to the [Zheln main repo README](https://github.com/drzhelnov/zheln.github.io/blob/gh-pages/README.md).

## Zheln’s Mission

> Every systematic review daily added to PubMed will get a rigorous, independent, and open-access critical appraisal.

## Objectives

1. Monitor most of all published systematic reviews to rapidly identify new systematic reviews. Systematic reviews, in their turn, are known to be, today, the best source of information for evidence-based practice.
2. Critically appraise and, where possible, replicate those of the systematic reviews idenitifed that are useful for evidence-based practice, in the appraiser’s mind.
3. Tag the records under review with physician specialties to ease following the updates by practising physicians.

## Methods

### The Ten Steps

For clarity, I summarized the methods as **Zheln Review Appraisal in 10 Steps:**

1. [ℹ️](#pubmed-search) Downloaded from the PubMed Systematic Subset Daily Updates 
2. [ℹ️](#record-screening) Meets [Shojania & Bero 2001](https://www.researchgate.net/publication/11820967_Taking_Advantage_of_the_Explosion_of_Systematic_Reviews_An_Efficient_MEDLINE_Search_Strategy) True Positive Criteria for Systematic Reviews by Either Title or Abstract?
3. [ℹ️](#collection-of-reports) Full Text or Other Reports Collected by Zheln
4. [ℹ️](#data-extraction) Generates Pragmatic Evidence Directly Relevant to Evidence-Based Practice?
5. [ℹ️](#critical-appraisal) Is Duplicate?
6. [ℹ️](#critical-appraisal) Passed or Failed Replication?
7. [ℹ️](#critical-appraisal) Has Critical Conduct Flaws?
8. [ℹ️](#critical-appraisal) Liked or Disliked by Zheln?
9. [ℹ️](#data-synthesis) Practical Implications Summarized by Zheln
10. [ℹ️](#publication) Appraisal Published & Call for Crowdfunding

Each step is also marked with an appraisal status icon:

* 🔄 Not Started or In Progress
* ❌ Failed Appraisal
* ✅ Passed Appraisal 

> ⚠️ **Important!**
>
> * Methods to specialty tag are not included in the steps as there is no specific time point when tagging should be complete: It starts when the record review starts and it ends when the record review ends.
> * However, these methods are important and are, thus, summarized in this document.

### PubMed Search

(aka **Step 1**)

* See the [search queries in an Appendix](#appendix-pubmed-systematic-review-subset-query-zheln-edition).
* This _PubMed Systematic Review Subset Query, Zheln Edition,_ ultimately represents the [Search Strategy Used to Create the Systematic Reviews Subset on PubMed](https://www.nlm.nih.gov/bsd/pubmed_subsets/sysreviews_strategy.html) as joined from the two versions: [February 2017](http://web.archive.org/web/20181023065423/https://www.nlm.nih.gov/bsd/pubmed_subsets/sysreviews_strategy.html) and [December 2018](http://web.archive.org/web/20190711085949/https://www.nlm.nih.gov/bsd/pubmed_subsets/sysreviews_strategy.html).
* The February 2017 version is [based](https://wayback.archive-it.org/org-350/20180406175620/https://www.nlm.nih.gov/bsd/pubmed_subsets/sysreviews_sources.html) on the study by [Shojania & Bero 2001](https://pubmed.gov/11525102).
* I don’t know what the December 2018 version is based on, it’s not been written there.
* The _Zheln Edition_ exists in two versions: [Live](#live-version) & [Replicated](#replicated-version). The former is a regular search query that would produce all records available by the time of search, whereas the latter produces a consistent, replicable set of records for a certain date.
* See a detailed account of the development of the _Zheln Edition_ and its testing reports in the [commit history of the repository](https://github.com/p1m-ortho/qs-global-ortho-search-queries/commits/global-sr-query).
* While lurking through the commit history, be sure to inspect [both the diff _and_ the body of the commits](https://git-scm.com/book/en/v2/Git-Basics-Recording-Changes-to-the-Repository).
* On [Zheln](https://zheln.com), records that are at the Step 1 of the appraisal process are automatically (since the [version 2.2.1](https://github.com/p1m-ortho/qs-global-ortho-search-queries/commit/af6d75fa635c2d62169e9ec36505b9657a127ed9#diff-d556e85617be04293b0ad953ad7028b3) of the record-maker script) assigned the `awaiting appraisal` status tag. Also, the [corresponding footer](https://github.com/p1m-ortho/qs-global-ortho-search-queries/blob/global-sr-query/zheln/footer-1-true.txt) is attached.

### Record Screening

(aka **Step 2**)

* This is the step where record eligibility for Zheln appraisal is assessed.
* This is done by checking the record title and, if the title failed, abstract against the ‘true positive criteria’ for systematic reviews taken from the publication by [Shojania & Bero 2001 (Open Access)](https://www.researchgate.net/publication/11820967_Taking_Advantage_of_the_Explosion_of_Systematic_Reviews_An_Efficient_MEDLINE_Search_Strategy).
* This is a diagnostic test accuracy (DTA) assessment for the systematic review search strategy by the authors—the very search strategy that the [PubMed Systematic Subset](#pubmed-search) was originally based on. Incidentally, this is the reason I chose these criteria for Zheln in the first place.
* I quote:
  
    > We regarded an article as a true positive only if the title or abstract explicitly identified the article as a systematic review or meta-analysis or if the article abstract indicated a strategy for locating the literature reviewed. Thus, an article that contained the phrase “literature review” in the title but merely stated that “relevant literature was reviewed” in the abstract would not count as a true positive. MEDLINE records without an abstract could be counted as true positives only if the title contained the words “meta-analysis,” “metaanalysis,” or “systematic review.”

* Therefore, those records that do not meet these criteria are marked as **Failed Step 2** (see [this supplementary file](https://github.com/p1m-ortho/qs-global-ortho-search-queries/blob/global-sr-query/zheln/footer-edit.txt) for the current exact wording) and are not appraised further.
* Technically, screening entails _conversion_ of the citation list downloaded from PubMed in the `Summary (text)` format (see the [list of all original PubMed exports](https://github.com/p1m-ortho/qs-global-ortho-search-queries/tree/global-sr-query/zheln/summary-systematic-set) made by Zheln) into individual editable records with further _compilation_ of the edited records into their published versions that are available from [Zheln](https://zheln.com).
* To do both, I wrote from scratch a special [bash](https://en.wikipedia.org/wiki/Bash_(Unix_shell)) script that I named [_General Makeposti_](https://github.com/p1m-ortho/qs-global-ortho-search-queries/blob/global-sr-query/zheln/general-makeposti.sh).
* For a look into how an editable record looks like, take any in the [directory of editable posts](https://github.com/p1m-ortho/qs-global-ortho-search-queries/tree/global-sr-query/zheln/posts-edit/). Alternatively, you could use _General Makeposti_ to do the conversion yourself.
* Text editors I use for record screening:

    * [Visual Studio Code](https://code.visualstudio.com) with the [Markdown Preview Enhanced Extension](https://marketplace.visualstudio.com/items?itemName=shd101wyy.markdown-preview-enhanced) on macOS or Windows;
    * [Epsilon Notes](https://play.google.com/store/apps/details?id=com.ekartoyev.enotes) on Android.

* On [Zheln](https://zheln.com), records that **passed** the Step 2 of the appraisal process are automatically (since [_General Makeposti_ 2.2.1](https://github.com/p1m-ortho/qs-global-ortho-search-queries/commit/af6d75fa635c2d62169e9ec36505b9657a127ed9#diff-d556e85617be04293b0ad953ad7028b3)) assigned the `awaiting crowdfunding` status tag. That is because if I found the record appealing enough to autonomously embark on its full appraisal, I would have pushed it to the Step 3 of appraisal right away.
* From the other hand, records that **failed** the appraisal process at the Step 2 are reassigned the `awaiting appraisal` status tag. This is because I consider these a _ghost town_ analogy meaning that, theoretically, the appraisal could be continued, but for now, it wouldn’t.
* Also, a [corresponding footer](https://github.com/p1m-ortho/qs-global-ortho-search-queries/tree/global-sr-query/zheln) is attached to the record based on its Step status.

### Specialty Tagging

(done at **Steps 2 thru 10**)

* Specialty tagging is done by the appraiser themselves based on whatever information they acquired during appraisal.
* The tags are chosen from [191 specialty tags](https://github.com/p1m-ortho/qs-global-ortho-search-queries/blob/global-sr-query/zheln/zheln_ama_specialty_tags.ls) made from a [list of 171 AMA Masterfile Physician Specialties](https://github.com/p1m-ortho/qs-global-ortho-search-queries/blob/global-sr-query/zheln/zheln_ama_specialty_tags_config.ls).
* See the methods used to compile the lists of specialties and specialty tags in the [commit history](https://github.com/p1m-ortho/qs-global-ortho-search-queries/commits/global-sr-query).
* While tagging, the tagger should consider if the record would be accessible from all relevant [specialty pages](https://github.com/p1m-ortho/qs-global-ortho-search-queries/blob/global-sr-query/zheln/zheln_ama_specialty_page_filenames.ls) and ensure it would.
* Namely, the tagger must check the record against **each** specialty on the list and decide if this record could be of interest to a typical physician working in this specialty.
* I recognize this could be tricky.
* Also, I do recognize the best approach to specialty grouping would be an evidence-based approach involving feedback from the physicians themselves.
* However, this is unavailable at the moment, so specialty grouping will be theory-based. In the future, introducing empirical testing will be of interest.
* For now, I set one more tagging principle to theoretically improve accuracy: Do not deny a specialty to the record if unsure, but do recognize more enthusiastic specialists could consult different specialties in addition to their ‘major.’
* There is no limit to the number of specialty tags attached, but at least one tag should be chosen for each record (except those that failed and were exlcuded at Step 2).
* I do not plan to add any new specialty tags. However, if I hear about any changes to the AMA Masterfile Physician Specialties list, I will consider updating the Zheln specialty lists accordingly.

### Collection of Reports

(aka **Step 3**)

_This is being written up._

* Will try to collect the full text of the publication under appraisal.
* For some publications, collection of other reports (either written by the same authors or by different authors, like in case of important referenced research) will be required and will be done.

### Data Extraction

(done at **Step 4**)

_This is being written up._

* Involves extracting the pragmatic outcomes that were deemed relevant for evidence-based practice.
* This is done only if the Step 9 summary is conducted.

### Critical Appraisal

(done at **Steps 4 thru 8**)

_This is being written up._

* The methods of critical appraisal may be described in one phrase:
  
  Informal study of the review documentation with replication of some of the elements of the review by a single appraiser to formulate their expert impression as to whether the review is reproducible and whether it is useful for evidence-based practice.

* Will elaborate on the process in further revisions of this doc.
* Step 8 was designed as solely subjective; will provide any personal comment if my decision did not seem obvious.

### Data Synthesis

(aka **Step 9**)

_This is being written up._

* Only done if Steps 2 thru 7 checked green.
* Involves formulating explicit practice-relevant statements based on the health outcomes extracted at Step 4.

### Publication

(done at **Step 10**)

_This is being written up._

* Involves creating a citation for each post on Zheln, see [this issue](https://github.com/drzhelnov/zheln.github.io/issues/4).
* Also, will need to introduce a checklist of items that have to be secured before the Step 10 tick is allowed to be set.

### Crowdfunding

(done at **Step 10** and throughout Zheln)

* I ended all my institutional affiliations except for being a member of the [Society of Specialists in Evidence-Based Medicine, Moscow, Russia](http://osdm.org/english/). See [my employment history on ORCID](http://orcid.org/0000-0003-2767-5123) for more detail.
* Currently, I have no other jobs except self-employed research assistance; see [my freelancer website](https://translate.google.com/translate?sl=ru&tl=en&u=https%3A%2F%2Fhire.p1m.org) for more info on that.
* Therefore, there is no other funding for Zheln besides my private devotion & crowdfunding.
* Crowdfunding details are available from the [Zheln](https://zheln.com) website.

### Project Management

(irrespective of **Steps**)

* Zheln uses public [GitHub kanban boards](https://docs.github.com/en/github/managing-your-work-on-github/about-project-boards) to manage its workflow.
* Namely, important tasks needed to accomplish the [Zheln’s mission](#zhelns-mission) are created as public Projects on the [Zheln GitHub page](https://github.com/drzhelnov/zheln.github.io/projects).
* Currently, there are two such tasks on Zheln: [Streamline Zheln](https://github.com/drzhelnov/zheln.github.io/projects/1) and [Register with PROSPERO](https://github.com/drzhelnov/zheln.github.io/projects/2).
* Further, these tasks are broken down into smaller blocks ([GitHub Issues](https://github.com/drzhelnov/zheln.github.io/issues)) and are displayed on the projects’ kanban boards.
* Finally, each week, short-term [GitHub Milestones](https://github.com/drzhelnov/zheln.github.io/milestones) are created and then assigned to the Issues to track weekly progress.
* All of these elements are public. Issues are open for public comment (GitHub registration needed).
* To maximize publicity, Zheln additionally endeavors to publish [summary posts](https://zheln.com) biweekly, where I overview all the events that happened on Zheln since the last summary.

## Results

_This is being written up._

* The monitoring continued from September 2, 2020. Currently, I do not plan to go back to whatever material that I left unreviewed as I do not have capacity for such an undertaking.

## Appendix: PubMed Systematic Review Subset Query, Zheln Edition

### Live Version

* Up-To-Date Indefinitely Until Any Interfering PubMed Updates
* Run on Sep 11, 2020, to Retrieve 474,043 Records

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

### Replicated Version

* Up-To-Date by Sep 9, 2020
* Run on Sep 12, 2020, to Retrieve 472,252 Records

> **How to use?**
>
> * Replace all the upper limit dates with the date needed using any text editor.
> * If you need to filter just the records indexed _on_ that date (instead of all the records indexed _by_ that date), then add the following fragment to the query (either before the first or after the last parenthesis): `(2020/09/09:2020/09/09[crdt] OR 2020/09/09:2020/09/09[dcom] OR 2020/09/09:2020/09/09[mhda])`, where the date is your required date (should be the same as the upper limit date).
> * If everything done correctly & the query itself still works, you will get a consistent set of records each time on whatever date you run the query.

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
