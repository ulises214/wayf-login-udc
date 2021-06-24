part of screens;

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const UdcLogo(),
            const SizedBox(height: 24),
            BlueButton(onPressed: () => _toLogin(context)),
          ],
        ),
      ),
    );
  }

  void _toLogin(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const WayfWebViewScreen();
        },
      ),
    );
  }
}
