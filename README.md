# Writing Platform-Native Code

➤ How to use platform channels to send and receive messages from the Flutter app to iOS and Android to access specific API functionality

➤ How to write native platform code in iOS Swift and Android Kotlin to access device information

➤ How to use MethodChannel to send messages from the Flutter app (on the client side)

➤ How to use FlutterMethodChannel on iOS and MethodChannel on Android to receive calls and send back results (on the host side)


## Adding custom functionality to your apps by using platform channels and writing the API code yourself.

To access platform-specific APIs for iOS and Android, you use platform channels to send and receive messages.
git
The Flutter app is the client and the platform-native code for iOS and Android is the host.

If needed, it is also possible to have the platform-native code to act as a client to call methods written in the Flutter app dart code.

The messages between the client and host are asynchronous, making sure that the UI remains responsive and not blocked.

For the client side (Flutter app), you use the MethodChannel from an async method to send messages that contain the method call to be executed by the host side (iOS and Android).

Once the host sends the response back, you can update the UI to display the information received.

For the host side, you use the FlutterMethodChannel on iOS and the MethodChannel on Android.

Once the client call is received by the host, the native platform code executes the called method and then sends back the result

## IMPLEMENTING THE CLIENT PLATFORM CHANNEL APP

A MethodChannel uses asynchronous method calls and the channel requires a unique name.

The channel name needs to be the same for the client as for the iOS and Android host.

Unique name for the channel use app name, a domain prefix and a descriptive name for the task.

To implement a channel, you create the MethodChannel through the default constructor by passing the unique channel name.

The default constructor takes two arguments: -the first is the channel name -the second declares the default MethodCodec.

The MethodCodec is the StandardMethodCodec, which uses Flutter’s standard binary encoding; this means the serialization of data sent between the client and the host is automatically handled.

	static const platform = const
	MethodChannel('platformchannel.companyname.com/deviceinfo');

## StandardMessageCodec-Supported Value Types

This project involves:

1. Creating the client-side request.

2. Building the iOS Host Platform Channel and in the third exercise

3. Building the Android Host Platform Channel

## Supported value types for iOS and Android

