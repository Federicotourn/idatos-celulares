import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';
import 'package:idatos_celulares/utils/app_theme.dart';
import 'package:idatos_celulares/utils/bottom.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/fing_video.mov')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
    _controller.play();
    _controller.setVolume(0.0);
    _controller.setLooping(true);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: WelcomeAppBar(),
      //resizeToAvoidBottomInset: false,
      backgroundColor: AppTheme.background,
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40))),
              width: Get.width,
              child: Stack(children: [
                _controller.value.isInitialized
                    ? ClipRRect(
                        borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40)),
                        child: SizedBox(
                          width: Get.width,
                          height: Get.height,
                          child: FittedBox(
                            fit: BoxFit.cover,
                            child: SizedBox(
                              width: _controller.value.size.width,
                              height: _controller.value.size.height,
                              child: Opacity(opacity: 0.5, child: VideoPlayer(_controller)),
                            ),
                          ),
                        ),
                      )
                    : Container(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'Bienvenido/a'.toUpperCase(),
                                style: AppTheme.title,
                              ),
                              const Divider(color: AppTheme.nearlyWhite, thickness: 1.0),
                              Text(
                                'Proyecto integración de datos',
                                style: AppTheme.containText,
                              ),
                              const SizedBox(height: 30),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ),
          GestureDetector(
            onTap: () async {
              await _controller.dispose();
              Get.offAllNamed('/index_screen');
              // Get.put(RecomendationController());
            },
            child: Bottom(
              text: 'Empezar',
              bottomColor: AppTheme.bluePrimary,
              letterColor: AppTheme.nearlyWhite,
            ),
          ),
        ],
      ),
    );
  }
}
