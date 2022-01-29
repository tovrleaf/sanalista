#!/usr/bin/env bash

cd "$(dirname $0)/.."

cat kotus-sanalista_v1/kotus-sanalista_v1.xml \
  | grep '^<st>' \
  | sed 's|^.*<s>\(.*\)</s>.*$|\1|' \
  > data/sanalista.txt

 grep '^[a-zåäö]\+$' data/sanalista.txt > data/sanalista_ascii.txt

sed -rn '/^.{5}$/p' data/sanalista_ascii.txt > data/sanalista5.txt
sed -rn '/^.{6}$/p' data/sanalista_ascii.txt > data/sanalista6.txt
