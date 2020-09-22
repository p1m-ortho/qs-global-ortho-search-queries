#!/bin/bash
coreutils=false
files='zheln_ama_specialty_page_filenames.ls'
html='unspecified.html'
tags='zheln_ama_specialty_tags.ls'
codes='zheln_ama_specialty_codes.ls'
titles='zheln_ama_specialty_titles.ls'
unspecified_tag='unspecified'
unspecified_code='US'
unspecified_title='Unspecified'
echo "> ’kay, want coreutils?
$coreutils
> Page filenames list: $files.
> Template HTML: $html.
> Tags list: $tags.
> Title codes list: $codes.
> Titles list: $titles"

if
[ ! -f "$files" ] ||
[ ! -f "$html" ] ||
[ ! -f "$tags" ] ||
[ ! -f "$codes" ] ||
[ ! -f "$titles" ]; then
  echo '> Text files missing. Collect them first.'
  exit 1
else echo '> Text files in place.'
fi

if [ -d "pages" ]; then
  echo '> Leftovers present. Check with them first.'
  exit 1
else echo '> No leftovers detected.'; echo '> Proceed to execution…'
fi

mkdir pages; cd pages
i=0; k=0
while read file; do
  cp "../$html" "$file"
  content=$(< $file); while read title; do
    if [ "$k" = "$i" ]; then echo "${content/title: $unspecified_title/title: $title}" > "$file"; fi
    k=$((k + 1))
  done < "../$titles"; k=0
  content=$(< $file); while read tag; do
    if [ "$k" = "$i" ]; then echo "${content/$unspecified_tag/$tag}" > "$file"; fi
    k=$((k + 1))
  done < "../$tags"; k=0
  content=$(< $file); while read code; do
    if [ "$k" = "$i" ]; then echo "${content/site.$unspecified_code/site.$code}" > "$file"; fi
    k=$((k + 1))
  done < "../$codes"; k=0
  i=$((i + 1))
done < "../$files"

echo '> Mission accomplished.'; exit 0
