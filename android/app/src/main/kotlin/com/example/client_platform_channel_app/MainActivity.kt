package com.example.client_platform_channel_app

import io.flutter.embedding.android.FlutterActivity
import io.flutter.plugin.common.MethodChannel
import android.os.Build 

class MainActivity: FlutterActivity() {
    override fun onCreate(SavedInstanceState: Bundle?) {
        super.OnCreate(SavedInstanceState)
        GeneratedPluginRegistrant.registerWith( registry: this)

        //platform channel
        val deviceInfoChannel = MethodChannel(flutterView, "platformchannel.companyname.com/deviceinfo")

        deviceInfoChannel.setMethodCallHandler { call, result ->
            if (call.method == "getDeviceInfo") {
                val deviceInfo = getDeviceInfo()
                result.success(deviceInfo)
            } else {
                result.notImplemented()
            }
        }
    }
    private fun getDeviceInfo(): String {
        return ("\nDevice: " + Build.DEVICE
            + "\nManufacturer: " + Build.MANUFACTURER
            + "\nModel: " + Build.MODEL
            + "\nProduct: " + Build.PRODUCT
            + "\nVersion Release: " + Build.VERSION.RELEASE
            + "\nVersion SDK: " + Build.VERSION.SDK_INT
            + "\nFingerprint : " + Build.FINGERPRINT)
    }
}

