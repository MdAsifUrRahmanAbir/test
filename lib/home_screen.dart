import 'package:flutter/material.dart';
import 'basic_widget/unity_ad.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await AdManager.loadUnityIntAd();
      await AdManager.loadUnityRewardedAd();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                await AdManager.showIntAd();
              },
              child: const Text("Int Ad"),
            ),
            ElevatedButton(
              onPressed: () async {
                await AdManager.showRewardedAd();
              },
              child: const Text("Rewarded Ad"),
            ),

          ],
        ),
      ),
    );
  }
}
