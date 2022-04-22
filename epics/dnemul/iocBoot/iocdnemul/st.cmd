#!../../bin/linux-x86_64/dnemul

#- You may have to change dnemul to something else
#- everywhere it appears in this file

< envPaths

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/dnemul.dbd"
dnemul_registerRecordDeviceDriver pdbbase

## Load record instances
dbLoadRecords("db/dnemul.db")

cd "${TOP}/iocBoot/${IOC}"
iocInit

## Start any sequence programs
#seq sncxxx,"user=kkpr"
