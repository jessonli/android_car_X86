#
# Device configuration for the Android car X86
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# includes the base of Android-x86 platform
$(call inherit-product,device/generic/common/x86_64.mk)

$(call inherit-product, packages/services/Car/car_product/build/car.mk)

# Overrides
PRODUCT_NAME := car_x86_64
PRODUCT_BRAND := Android-x86
PRODUCT_DEVICE := car_x86_64
PRODUCT_MODEL := Generic Android-x86_64

PRODUCT_COPY_FILES += \
    packages/services/Car/car_product/init/init.bootstat.rc:root/init.bootstat.rc \
    packages/services/Car/car_product/init/init.car.rc:root/init.car.rc


#Car apps
PRODUCT_PACKAGES += \
    car-apps-common \
    car-radio-service \
    car-stream-ui-lib \
    car-stream-lib \
    CarSettings \
    CarLensPickerApp \
    CarNotificationsApp \
    CarTrustAgentService \
    LocalMediaPlayer \
    SystemUpdater \
    OverviewApp \
    CarHvacApp \
    CarRadioApp \
    CarMediaApp \
    CarLatinIME \
    Stream \
    CarDialerApp 
