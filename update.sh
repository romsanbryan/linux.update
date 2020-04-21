#!/bin/bash

# Password root
export PASS= 

_now=$(date +"%Y-%m-%d")
_time=$(date +"%T")

# Ruta para guardar
STR=""

echo  "$_time [update.sh] Inicio" | tee $STR"UPDATE-SYSTEM.log$_now"

echo  "$_time [update.sh] Listado aplicaciones" | tee -a $STR"UPDATE-SYSTEM.log$_now"
echo $PASS | sudo -S apt list --upgradable | tee -a $STR"UPDATE-SYSTEM.log$_now"

echo  "$_time [update.sh] UPDATE" | tee -a $STR"UPDATE-SYSTEM.log$_now"
echo $PASS | sudo -S apt-get update | tee -a $STR"UPDATE-SYSTEM.log$_now"

echo  "$_time [update.sh] UPGRADE" | tee -a $STR"UPDATE-SYSTEM.log$_now"
echo $PASS | sudo -S apt-get -y upgrade | tee -a $STR"UPDATE-SYSTEM.log$_now"

echo  "$_time [update.sh] DIST-UPGRADE" | tee -a $STR"UPDATE-SYSTEM.log$_now"
echo $PASS | sudo -S apt-get -y dist-upgrade | tee -a $STR"UPDATE-SYSTEM.log$_now"

echo  "$_time [update.sh] AUTOCLEAN" | tee -a $STR"UPDATE-SYSTEM.log$_now"
echo $PASS | sudo -S apt-get autoclean | tee -a $STR"UPDATE-SYSTEM.log$_now"

echo  "$_time [update.sh] CLEAN" | tee -a $STR"UPDATE-SYSTEM.log$_now"
echo $PASS | sudo -S apt-get clean | tee -a $STR"UPDATE-SYSTEM.log$_now"

echo  "$_time [update.sh] AUTOREMOVE" | tee -a $STR"UPDATE-SYSTEM.log$_now"
echo $PASS | sudo -S apt-get -y autoremove | tee -a $STR"UPDATE-SYSTEM.log$_now"

echo  "$_time [update.sh] Fin" | tee -a $STR"UPDATE-SYSTEM.log$_now"

# Descomentar para hacerlo manual
#read -p "\\\\\\\\\\\\\\\ ACTUALIZADO EL SISTEMA. Presione una tecla para continuar"
