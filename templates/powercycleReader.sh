#!/usr/bin/env bash
# {{ ansible_managed }}

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

hubpower {{powercycle_smartcard_reader_busnum | string}}:{{powercycle_smartcard_reader_devnum | string}} power {{powercycle_smartcard_reader_portnum | string}} off
hubpower {{powercycle_smartcard_reader_busnum | string}}:{{powercycle_smartcard_reader_devnum | string}} power {{powercycle_smartcard_reader_portnum | string}} on
systemctl restart pcscd
