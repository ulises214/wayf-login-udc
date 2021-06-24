part of screens;

class WayfWebViewScreen extends StatefulWidget {
  const WayfWebViewScreen({Key? key}) : super(key: key);

  @override
  _WayfWebViewScreenState createState() => _WayfWebViewScreenState();
}

class _WayfWebViewScreenState extends State<WayfWebViewScreen> {
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: UdcColors.green,
        title: const Text('Inicio de sesión'),
      ),
    );
  }
}

JavascriptChannel _createChannel() {
  return JavascriptChannel(
    name: 'Login',
    onMessageReceived: (message) => print(message.message),
  );
}
