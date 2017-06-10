#!/bin/bash
cd ../../../..
cd external/tinycompress
git apply -v ../../device/gionee/v4s/patches/external_tinycompress/external_tinycompress.patch
cd ../..
cd frameworks/av
git apply -v ../../device/gionee/v4s/patches/frameworks_av/frameworks_av.patch
cd ../..
cd frameworks/base
git apply -v ../../device/gionee/v4s/patches/frameworks_base/frameworks_base.patch
cd ../..
cd frameworks/opt/telephony
git apply -v ../../../device/gionee/v4s/patches/frameworks_opt_telephony/frameworks_opt_telephony.patch
cd ../../..
cd hardware/libhardware
git apply -v ../../device/gionee/v4s/patches/hardware_libhardware/hardware_libhardware.patch
cd ../..
cd packages/services/Telecomm
git apply -v ../../../device/gionee/v4s/patches/packages_services_Telecomm/services_Telecomm.patch
cd ../../..
cd packages/services/Telephony
git apply -v ../../../device/gionee/v4s/patches/packages_services_Telephony/services_Telephony.patch
cd ../../..
cd system/core
git apply -v ../../device/gionee/v4s/patches/system_core/system_core.patch
cd ../..
cd system/netd
git apply -v ../../device/gionee/v4s/patches/system_netd/system_netd.patch
cd ../..
echo Patches Applied Successfully!
