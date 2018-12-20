Introduction

To setup the android car x86 project , you can follow these steps.

1. Get the android x86 project (based on the branch 'oreo-x86') from http://www.android-x86.org/getsourcecode .

2. Get the aosp (based on the 8.1.0_r48) code from Google. If you have one, please ignore it. Otherwise you have to do this due to the missing of car packages in the x86 project.

3. Merge this Device configuration to the device/generic/car_x86_64 in your android x86 code.

4. Merge these following directories from the aosp to your android x86 code.

   - packages/apps/Car/*
   - packages/services/Telecomm/*

5. Building the images refer to http://www.android-x86.org/getsourcecode .

   - source build/envsetup.sh
   - lunch car_x86_64-userdebug
   - make -jx iso_img
