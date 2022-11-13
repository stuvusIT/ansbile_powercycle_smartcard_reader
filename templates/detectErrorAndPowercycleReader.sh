#!/usr/bin/env bash
# {{ ansible_managed }}

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

journalctl -fn 0 |  grep -E --line-buffered '{{powercycle_smartcard_reader_log_message_pattern}}' |  while read ; do powercycleReader ;done
