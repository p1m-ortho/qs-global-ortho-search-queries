# FAST Article Searches for Trauma: ветка-образец

Это ветка крупного репозитория, посвященного разработке запросов для поиска библиографических источников по ортопедии и не только по ней, посвященная хранению быстро написанных запросов по остро возникающим клиническим вопросам.

В режиме [git blame](https://github.com/p1m-ortho/qs-global-ortho-search-queries/blame/fast-sample/README.md) см. коммит, соответствующий запросу, и смотрите в этом коммите полные результаты выдачи, таблицу их скрининга и bib-файлы для избранных работ. В таблице скрининга: ⚡ — подозрение, что запись может быть полезной для ответа на рассматриваемый клинический вопрос, и для выяснения нужно поднимать, как минимум, аннотацию, а при необходимости — и полные тексты; 👍 — запись точно кое-чем может быть полезной для ответа на рассматриваемый клинический вопрос, что ясно либо сразу же из заголовка, либо после просмотра аннотации или даже полных текстов; 🏆 — работы-победители, посвященные в значительной степени ответу на рассматриваемый клинический вопрос, что стало понятно так или иначе.

## Клинический вопрос

Десмургия: скопинг.

## PubMed, live-версия на чувствительность

```
((cast[tiab] or casts[tiab] or casting[tiab] or splint*[tiab] or immobili*[tiab] or fixat*[tiab] or orthosis[tiab] or orthoses[tiab] or orthotic[tiab] or bandage*[tiab] or dress*[tiab] or plaster[tiab] or fiberglass[tiab]) or (immobilization[mh] or "external fixators"[mh])) systematic[sb]
```

## PubMed, live-версия на специфичность

```
((cast[tiab] or casts[tiab] or casting[tiab] or splint*[tiab] or immobili*[tiab] or orthosis[tiab] or orthoses[tiab] or orthotic[tiab] or plaster[tiab] or fiberglass[tiab]) or (immobilization[mh] or "external fixators"[mh])) systematic[sb]
```
