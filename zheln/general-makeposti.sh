#!/bin/bash
v='2.1.1'
edit=false
date='2020-09-02' 
vi='36–38'
ip='1'

coreutils=true
rm_record_set=true
rm_summary_set=false

summary_set='summary-systematic-set.txt'
record_set='record-set.txt'
posts='posts'
posts_edit='posts-edit'
tmp='tmp'
specialty_tags='zheln_ama_specialty_tags.ls'
references=''
level5127=''
level1313=''
appraisal=''
if [ "$edit" = 'true' ]; then
  header="header-edit.txt"
  footer='footer-edit.txt'
  posts="$posts_edit"
else
  header="header.txt"
  footer='footer.txt'
fi

layout='layout: post'
hidden='hidden: true'
categories='categories: record'
step1='1. ✅ Downloaded from the [PubMed Systematic Subset](https://github.com/p1m-ortho/qs-global-ortho-search-queries/blob/global-sr-query/README.md) Daily Updates'
step2='2. 🔄 Meets [Shojania & Bero 2001](https://www.researchgate.net/publication/11820967_Taking_Advantage_of_the_Explosion_of_Systematic_Reviews_An_Efficient_MEDLINE_Search_Strategy) True Positive Criteria for Systematic Reviews by Either Title or Abstract?'
step3='3. 🔄 Full Text or Other Reports Collected by **Zheln**'
step4='4. 🔄 Generates Pragmatic Evidence Directly Relevant to Evidence-Based Practice?'
step5='5. 🔄 Is Duplicate?'
step6='6. 🔄 Passed or Failed Replication?'
step7='7. 🔄 Has Critical Conduct Flaws?'
step8='8. 🔄 Liked or Disliked by **Zheln**?'
step9='9. 🔄 Practical Implications Summarized by **Zheln**'
step10='10. 🔄 Appraisal Published & Call for Crowdfunding'
step=(
  "$step1"
  "$step2"
  "$step3"
  "$step4"
  "$step5"
  "$step6"
  "$step7"
  "$step8"
  "$step9"
  "$step10"
)
steps='**Zheln Review Appraisal in 10 Steps:**'
yaml='---'
status[0]='awaiting appraisal'
status[1]='awaiting crowdfunding'
status[2]='appraisal in progress'
status[3]='appraisal complete'
specialty=()
while read line; do
   specialty+=("$line")
done < "$specialty_tags"

echo "> Hello there.
General Makeposti!
Ha-ha-ha-ha-ha-ha…
You are a by-Zheln one.
> v$v
> Date: $date.
> Vol. $vi.
> Issue $ip.
> Edit mode?
$edit"
if [ "$edit" = 'true' ]
then echo "> Want coreutils?
$coreutils
> Remove $record_set?
$rm_record_set
> Remove $summary_set?
$rm_summary_set"; fi

if [ "$coreutils" = 'true' ]; then
  dp=$(gdate -d "$date" +'%Y %b %-d')
  pg_postfix="d$(gdate -d "$date" +'%-d')"
else
  dp=$(date -d "$date" +'%Y %b %-d')
  pg_postfix="d$(date -d "$date" +'%-d')"
fi

prepend='<small id="citation">Zhelnov P. A critical appraisal of _‘'
append="’._ Zheln. $dp;$vi($ip):r\$1$pg_postfix. URI: {{ page.url | absolute_url }}.<\/small>"

if
([ "$edit" = 'true' ] && [ ! -f "$summary_set" ]) ||
[ ! -f "$header" ] ||
[ ! -f "$footer" ] ||
([ "$edit" = 'false' ] && [ ! -d "$posts_edit" ]) ||
([ "$edit" = 'false' ] && [ ! -f "$specialty_tags" ]); then
  echo '> Text files missing. Collect them first.'
  exit 1
else echo '> Text files in place.'
fi

if
[ -d "tmp" ] ||
[ -f "$record_set" ] ||
[ -d "$posts" ]; then
  echo '> Leftovers present. Check with them first.'
  exit 1
else echo '> No leftovers detected.'; echo '> Proceed to execution…'
fi

if [ "$edit" = 'true' ]; then
  perl -p00e 's/\r//g' "$summary_set" > "$record_set"
  perl -p00e 's/\n([^\n])/ $1/g' -i "$record_set"
  perl -p00e 's/\n+/\n/g' -i "$record_set"
  perl -p00e "s/^ ?(\d+): (.+)\.$/$prepend\$2$append/gm" -i "$record_set"
  perl -p00e "s/(doi: ([^ ]+))\. /[\$1](https:\/\/doi.org\/\$2). /g" -i "$record_set"
  perl -p00e "s/(PMID: (\d+))/[\$1](https:\/\/pubmed.gov\/\$2)/g" -i "$record_set"
  perl -p00e "s/(PMCID: (PMC\d+))/[\$1](https:\/\/ncbi.nlm.nih.gov\/pmc\/\$2)/g" -i "$record_set"

  mkdir $tmp; cd $tmp; if [ "$coreutils" = 'true' ]; then
    gsplit -a 3 -l 1 -d "../$record_set" "record"
  else
    split -a 3 -l 1 -d "../$record_set" "record"
  fi

  count="$((($(ls -1 | wc -l))-1))"
  echo '' >> "record$count"

  for old_file in *; do
      old_int="${old_file//[^0-9]/}"
      new_int="$(expr $old_int + 0)"
      new_int="$((new_int + 1))"
      new_file="${old_file/$old_int/$new_int}"
      mv "${old_file}" "${new_file//record/$date-}.md"
  done; cd ..
fi

mkdir "$posts"
if [ "$edit" = 'true' ]; then cd "$tmp"
else cd "$posts_edit"; fi
for file in *; do
  step=(
    "$step1"
    "$step2"
    "$step3"
    "$step4"
    "$step5"
    "$step6"
    "$step7"
    "$step8"
    "$step9"
    "$step10"
  )
  post="../$posts/$file"
  echo "$yaml" > "$post"
  if [ "$edit" = 'false' ]; then
    post_edit="../$posts_edit/$file"
    level5127=$(perl -n0777e 'print "$1" if /<!-- Enter Level 5127 -->([\s\S]+)<!-- Exit Level 5127 -->/' "$post_edit")
    if [ ! "$level5127" = '' ]
    then echo "$level5127" >> "$post"
    else cat "../$header" >> "$post"; fi
    perl -ne 'print "$&\n" if /title:.+/' "$post_edit" >> "$post"
    perl -ne 'print "$&\n" if /summary:.+/' "$post_edit" >> "$post"
    perl -ne 'print "$&\n" if /thumbnail:.+/' "$post_edit" >> "$post"
    echo 'tags:' >> "$post"
    match=$(perl -ne 'print "$1\n" if /\[x\] (.+)/' "$post_edit")
    IFS=$'\n' read -rd '' -a checked <<< "$match"
    if [[ "${checked[@]}" =~ "${status[3]}" ]]; then echo " - ${status[3]}" >> "$post"
    else if [[ "${checked[@]}" =~ "${status[2]}" ]]; then echo " - ${status[2]}" >> "$post"
    else if [[ "${checked[@]}" =~ "${status[1]}" ]]; then echo " - ${status[1]}" >> "$post"
    else echo " - ${status[0]}" >> "$post"; fi; fi; fi
    for line in "${checked[@]}"; do
      if [[ "${specialty[@]}" =~ "$line" ]]
      then echo " - $line" >> "$post"
      else for i in {1..10}; do
          if [ "${line:0:1}" = "$i" ]
          then step[$((i-1))]="$line"; fi
      done; fi
    done
    echo "$yaml" >> "$post"
    echo '' >> "$post"
    perl -ne 'print "$&\n" if /<small id="citation">[^<]+<\/small>/' "$post_edit" >> "$post"
    echo '' >> "$post"
    echo "> $steps" >> "$post"
    echo '>' >> "$post"
    for i in {0..9}
    do echo "> ${step[$i]}" >> "$post"; done
    appraisal=$(perl -n0777e 'print "$1" if /<!-- This is where the fun begins -->([\s\S]+)<!-- It’s time for the Jedi to end -->/' "$post_edit")
    if [ ! "$appraisal" = '' ]
    then echo "$appraisal" >> "$post"; fi
    references=$(perl -n0777e 'print "$1" if /<!-- References -->([\s\S]+)<!-- EOF -->/' "$post_edit")
    level1313=$(perl -n0777e 'print "$1" if /<!-- Enter Level 1313 -->([\s\S]+)<!-- Exit Level 1313 -->/' "$post_edit")
  else
    cat "../$header" >> "$post"
    echo '' >> "$post"
    cat "$file" >> "$post"
  fi
  if [ ! "$level1313" = '' ]
  then echo "$level1313" >> "$post"
  else echo '' >> "$post"; cat "../$footer" >> "$post"; fi
  if [ ! "$references" = '' ]
  then echo "$references" >> "$post"; fi
done; cd ".."

if [ "$edit" = 'true' ]; then
  rm -r $tmp
  if [ "$rm_record_set" = 'true' ]; then rm "$record_set"; fi
  if [ "$rm_summary_set" = 'true' ]; then rm "$summary_set"; fi
fi

echo '> So uncivilized.'; exit 0
