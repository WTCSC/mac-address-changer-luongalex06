#!/usr/bin/env bash
set -e

number="08:00:27:0e:19:12"

function mac_add_delta() {
  local mac="0x${1//\:/}"
  local delta="$2"
  local new_mac="$(printf "%x" $((mac + delta)))"  # no 0x
  echo "${new_mac:0:2}:${new_mac:2:2}:${new_mac:4:2}:${new_mac:6:2}:${new_mac:8:2}:${new_mac:10:2}"
}