TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = dnemul
# dnemul.dbd will be created and installed
DBD += dnemul.dbd

# dnemul.dbd will be made up from these files:
dnemul_DBD += base.dbd

# Include dbd files from all support applications:
#dnemul_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
#dnemul_LIBS += xxx

# dnemul_registerRecordDeviceDriver.cpp derives from dnemul.dbd
dnemul_SRCS += dnemul_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
dnemul_SRCS_DEFAULT += dnemulMain.cpp
dnemul_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#dnemul_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
dnemul_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

