package com.jetbrains.kmm.shared

import platform.UIKit.UIDevice
import kotlin.system.*
actual class Platform actual constructor() {
    actual val platform: String = UIDevice.currentDevice.systemName() + " " + UIDevice.currentDevice.systemVersion
    actual fun profile()
   {
       print(getTimeMillis());
       //return 7;
    }
}
