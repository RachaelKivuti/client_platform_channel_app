import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _deviceInfo = '';
  static const _methodChannel =
      MethodChannel('platformchannel.companyname.com/deviceinfo');

  Future<void> _getDeviceInfo() async {
    String deviceInfo;

    try {
      deviceInfo = await _methodChannel.invokeMethod('getDeviceInfo');
    } on PlatformException catch (e) {
      deviceInfo = "Failed to get device info: '${e.message}'.";
    }

    setState(() {
      _deviceInfo = deviceInfo;
    });
  }

  @override
  void initState() {
    super.initState();
    _getDeviceInfo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Platform channel',
          style: TextStyle(
            fontFamily: 'open sans',
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListTile(
          title: const Text(
            'data',
            style: TextStyle(
              fontFamily: 'open sans',
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            _deviceInfo,
            style: const TextStyle(
              fontFamily: 'open sans',
              fontSize: 20.0,
            ),
          ),
          contentPadding: const EdgeInsets.all(16.0),
        ),
      ),
    );
  }
}
