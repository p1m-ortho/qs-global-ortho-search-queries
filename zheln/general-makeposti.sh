#!/bin/bash
v='3.1.1'
edit=true
date='2020-12-06'
count=132

coreutils=false
rm_record_set=true

summary_set='summary-systematic-set'
summary_set="${summary_set}/${summary_set}_${date}_${count}.txt"
record_set='record-set.txt'
rnd='rnd'
posts='posts'
posts_edit='posts-edit'
tmp='tmp'
specialty_tags='zheln_ama_specialty_tags.lst'
references=''
level5127=''
level1313=''
appraisal=''
footer_prefix='footer'
header_prefix='header'
default_last_step_i='1'
default_last_step_b=true
last_step_i="$default_last_step_i"
last_step_b="$default_last_step_b"
if [ "$edit" = 'true' ]; then
  header="$header_prefix-edit.txt"
  footer="$footer_prefix-edit.txt"
  posts="$posts_edit"
else
  header="$header_prefix.txt"
  footer="$footer_prefix-$last_step_i-$last_step_b.txt"
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
status_true[1]="${status[0]}"
status_false[2]="${status[0]}"
status_true[2]="${status[1]}"
status_false[3]="${status[1]}"
status_true[3]="${status[2]}"
status_false[4]="${status[2]}"
status_true[4]="${status[2]}"
status_false[5]="${status[2]}"
status_true[5]="${status[2]}"
status_false[6]="${status[2]}"
status_true[6]="${status[2]}"
status_false[7]="${status[2]}"
status_true[7]="${status[2]}"
status_false[8]="${status[2]}"
status_true[8]="${status[2]}"
status_true[9]="${status[2]}"
status_true[10]="${status[3]}"
specialty=()
while read line; do
   specialty+=("$line")
done < "$specialty_tags"
fail='❌'
pass='✅'
dislike='👎'
like='👍'
digits='^[0-9]+$'
proceed='> Proceed to execution…'
terminate='> Terminate.'

echo "> Hello there.
General Makeposti!
Ha-ha-ha-ha-ha-ha…
You are a by-Zheln one.
> v$v
> Date: $date.
> Edit mode?
$edit"
if [ "$edit" = 'true' ]
then echo "> Expect $count records.
> Want coreutils?
$coreutils
> Remove $record_set?
$rm_record_set"; fi

summary_date="$date"
record_year='0'
record_month='0'
record_day='0'
vi='0'; ip='0'
if [ "$coreutils" = 'true' ]; then
  record_year=$(gdate -d "$date" +'%Y')
  record_month=$(gdate -d "$date" +'%m')
  record_day=$(gdate -d "$date" +'%d')
  record_weekday=$(gdate -d "$date" +'%-w')
  case $record_weekday in
    0)
      summary_date=$(gdate +'%Y-%m-%d' -d "$date + 3 day")
    ;;
    1)
      summary_date=$(gdate +'%Y-%m-%d' -d "$date + 2 day")
    ;;
    2)
      summary_date=$(gdate +'%Y-%m-%d' -d "$date + 4 day")
    ;;
    3)
      summary_date=$(gdate +'%Y-%m-%d' -d "$date + 3 day")
    ;;
    4)
      summary_date=$(gdate +'%Y-%m-%d' -d "$date + 2 day")
    ;;
    5)
      summary_date=$(gdate +'%Y-%m-%d' -d "$date + 5 day")
    ;;
    6)
      summary_date=$(gdate +'%Y-%m-%d' -d "$date + 4 day")
    ;;
  esac
  vi=$(($(gdate -d "$summary_date" +'%-U') + 1))
  summary_weekday=$(($(gdate -d "$summary_date" +'%-w') + 0))
  if [ $summary_weekday -lt 4 ]; then ip='1'
  else ip='2'; fi
  dp=$(gdate -d "$summary_date" +'%Y %b %-d')
  pg_postfix="d$(gdate -d "$date" +'%-d')"
else
  record_year=$(date -d "$date" +'%Y')
  record_month=$(date -d "$date" +'%m')
  record_day=$(date -d "$date" +'%d')
  record_weekday=$(date -d "$date" +'%-w')
  case $record_weekday in
    0)
      summary_date=$(date +'%Y-%m-%d' -d "$date + 3 day")
    ;;
    1)
      summary_date=$(date +'%Y-%m-%d' -d "$date + 2 day")
    ;;
    2)
      summary_date=$(date +'%Y-%m-%d' -d "$date + 4 day")
    ;;
    3)
      summary_date=$(date +'%Y-%m-%d' -d "$date + 3 day")
    ;;
    4)
      summary_date=$(date +'%Y-%m-%d' -d "$date + 2 day")
    ;;
    5)
      summary_date=$(date +'%Y-%m-%d' -d "$date + 5 day")
    ;;
    6)
      summary_date=$(date +'%Y-%m-%d' -d "$date + 4 day")
    ;;
  esac
  vi=$(($(date -d "$summary_date" +'%-U') + 1))
  summary_weekday=$(($(date -d "$summary_date" +'%-w') + 0))
  if [ $summary_weekday -lt 4 ]; then ip='1'
  else ip='2'; fi
  dp=$(date -d "$summary_date" +'%Y %b %-d')
  pg_postfix="d$(date -d "$date" +'%-d')"
fi
posts="$posts/$record_year/$record_month/$record_day"
posts_edit="$posts_edit/$record_year/$record_month/$record_day"
tmp="$tmp/$record_year/$record_month/$record_day"
rnd_d="$rnd/$record_year/$record_month"
rnd_f="$rnd_d/${rnd}_${date}_$count.lst"
rnd_s=''
rnd_a=()

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
[ -d "$posts" ] ||
([ "$edit" = 'true' ] && [ -d "$posts_edit" ]); then
  echo '> Leftovers present. Check with them first.'
  exit 1
else
  echo '> No leftovers detected.'
  if [ "$edit" = 'false' ]
  then echo "$proceed"; fi
fi

if [ "$edit" = 'true' ]; then
  if [ ! -d "$rnd_d" ]; then mkdir -p "$rnd_d"; fi
  if [ ! -f "$rnd_f" ]; then
    touch "$rnd_f"
    echo '> Populate the random list first.'
    exit 1
  else
    echo '> Random list in place.'
    echo '> Check the random list…'
    rnd_s=$(perl -p00e 's/\r//g' "$rnd_f")
    if [ "$rnd_s" = '' ]; then
      echo '> Empty random list.'
      echo "$terminate"
      exit 1
    else
      IFS=$'\n' read -rd '' -a rnd_tmp <<< "$rnd_s"
      i=0
      for line in "${rnd_tmp[@]}"; do
        if [[ ! "$line" =~ $digits ]]; then
          echo '> Illegal random list.'
          echo "$terminate"
          exit 1
        else
          rnd_a["$(expr $line + 0)"]="$(printf '%04d' $((i+1)))"
        fi
        i="$((i+1))"
      done
      if [ ! "$i" = "$count" ]; then
        echo '> Random list miscount.'
        echo "$terminate"
        exit 1
      fi
      echo '> Random list OK.'
      echo "$proceed"
    fi
  fi

  perl -p00e 's/\r//g' "$summary_set" > "$record_set"
  perl -p00e 's/\n([^\n])/ $1/g' -i "$record_set"
  perl -p00e 's/\n+/\n/g' -i "$record_set"
  perl -p00e "s/^ ?(\d+): (.+)\.$/$prepend\$2$append/gm" -i "$record_set"
  perl -p00e "s/(doi: ([^ ]+))\. /[\$1](https:\/\/doi.org\/\$2). /g" -i "$record_set"
  perl -p00e "s/(PMID: (\d+))/[\$1](https:\/\/pubmed.gov\/\$2)/g" -i "$record_set"
  perl -p00e "s/(PMCID: (PMC\d+))/[\$1](https:\/\/ncbi.nlm.nih.gov\/pmc\/\$2)/g" -i "$record_set"

  mkdir -p "$tmp"; cd "$tmp"; if [ "$coreutils" = 'true' ]; then
    gsplit -a 4 -l 1 -d "../../../../$record_set" "record"
  else
    split -a 4 -l 1 -d "../../../../$record_set" "record"
  fi

  if [ ! "$count" = "$(($(ls -1 | wc -l) + 0))" ]
  then echo '> Record generation failed: Incorrect count.'; exit 1; fi
  
  for old_file in *; do
      old_int="${old_file//[^0-9]/}"
      new_int="$(expr $old_int + 0)"
      new_int="$((new_int + 1))"
      new_file="${old_file/$old_int/$new_int}"
      mv "${old_file}" "${new_file//record/${rnd_a[$new_int]}-$date-}.md"
  done; cd ../../../..
fi

mkdir -p "$posts"
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
  post="../../../../$posts/$file"
  if [ "$edit" = 'false' ]; then
    post="../../../../$posts/${file:5}"
    echo "$yaml" > "$post"
    post_edit="../../../../$posts_edit/$file"
    level5127=$(perl -n0777e 'print "$1" if /<!-- Enter Level 5127 -->([\s\S]+)<!-- Exit Level 5127 -->/' "$post_edit")
    if [ ! "$level5127" = '' ]
    then echo "$level5127" >> "$post"
    else cat "../../../../$header" >> "$post"; fi
    perl -ne 'print "$&\n" if /^title:.+/' "$post_edit" >> "$post"
    perl -ne 'print "$&\n" if /^summary:.+/' "$post_edit" >> "$post"
    perl -ne 'print "$&\n" if /^thumbnail:.+/' "$post_edit" >> "$post"
    echo 'tags:' >> "$post"
    match=$(perl -ne 'print "$1\n" if /\[x\] (.+)/' "$post_edit")
    IFS=$'\n' read -rd '' -a checked <<< "$match"
    for line in "${checked[@]}"; do
      if [[ "${specialty[@]}" =~ "$line" ]]
      then echo " - $line" >> "$post"
      else for i in {1..10}; do
          if [ "${line:0:1}" = "$i" ]; then
            step[$((i-1))]="$line"
            mark="${line:3:1}"
            if ([ "$mark" = "$fail" ] || [ "$mark" = "$dislike" ]) 
            then last_step_b='false'; last_step_i="$i"
            else if ([ "$mark" = "$pass" ] || [ "$mark" = "$like" ])
              then last_step_b='true'; last_step_i="$i"; fi
            fi
          fi
      done; fi
    done
    i=$(expr $last_step_i + 0)
    if [ "$last_step_b" = 'true' ]; then
      echo " - ${status_true[$i]}" >> "$post";
    else if [ "$last_step_b" = 'false' ]; then
      echo " - ${status_false[$i]}" >> "$post"; fi
    fi;
    echo "$yaml" >> "$post"
    echo '' >> "$post"
    perl -ne 'print "$&\n" if /<small id="citation">[\s\S]+?<\/small>/' "$post_edit" >> "$post"
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
    echo "<!-- Built with General Makeposti v$v -->" > "$post"
    cat "../../../../$header" >> "$post"
    echo '' >> "$post"
    cat "$file" >> "$post"
  fi
  if [ ! "$level1313" = '' ]
  then echo "$level1313" >> "$post"
  else
    echo '' >> "$post"
    custom_footer="../../../../$footer_prefix-$last_step_i-$last_step_b.txt"
    default_footer="../../../../$footer"
    if ([ "$edit" = 'false' ] && [ -f "$custom_footer" ]); then
      cat "$custom_footer" >> "$post" 
    else
      cat "$default_footer" >> "$post"
      if [ "$edit" = 'false' ]
      then echo "> Post $file: Used Step 1 footer, while Step $last_step_i is $last_step_b."; fi
    fi
  fi
  if [ ! "$references" = '' ]
  then echo "$references" >> "$post"; fi
  last_step_i=$default_last_step_i
  last_step_b=$default_last_step_b
done; cd ../../../..

if [ "$edit" = 'true' ]; then
  rm -r "${tmp//[0-9\/]/}"
  if [ "$rm_record_set" = 'true' ]; then rm "$record_set"; fi
fi

echo '> So uncivilized.'; exit 0