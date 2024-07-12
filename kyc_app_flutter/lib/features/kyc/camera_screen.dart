import 'dart:io';

import 'package:face_camera/face_camera.dart';
import 'package:flutter/material.dart';

import '../../ui/app_bar.dart';
import '../../ui/button.dart';
import '../../ui/theme.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({super.key});

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  File? _capturedImage;

  late FaceCameraController controller;

  @override
  void initState() {
    controller = FaceCameraController(
      autoCapture: false,
      defaultCameraLens: CameraLens.front,
      imageResolution: ImageResolution.low,
      onCapture: (image) async {
        setState(() => _capturedImage = image);
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) => CpTheme.black(
        child: Scaffold(
          appBar: const CpAppBar(
            title: Text('Capture Selfie'),
          ),
          body: Builder(
            builder: (context) {
              if (_capturedImage != null) {
                return Center(
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Image.file(
                        _capturedImage!,
                        width: double.maxFinite,
                        fit: BoxFit.fitWidth,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CpButton(
                              text: 'Recapture',
                              onPressed: () async {
                                await controller.startImageStream();
                                setState(() => _capturedImage = null);
                              },
                            ),
                            const SizedBox(width: 12),
                            CpButton(
                              text: 'Submit',
                              onPressed: () async {
                                Navigator.of(context).pop(_capturedImage);
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }
              return SmartFaceCamera(
                controller: controller,
                messageBuilder: (context, face) {
                  if (face == null) {
                    return _message('Place your face in the camera');
                  }
                  if (!face.wellPositioned) {
                    return _message('Center your face in the square');
                  }
                  return const SizedBox.shrink();
                },
              );
            },
          ),
        ),
      );

  Widget _message(String msg) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 55, vertical: 15),
        child: Text(
          msg,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 14,
            height: 1.5,
            fontWeight: FontWeight.w400,
          ),
        ),
      );

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
