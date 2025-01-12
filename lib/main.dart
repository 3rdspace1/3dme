import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '3D Avatar Viewer',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const AvatarViewer(),
    );
  }
}

class AvatarViewer extends StatelessWidget {
  const AvatarViewer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("3D Avatar Viewer"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: ModelViewer(
          src: 'https://3rdspace1.github.io/3dme/assets/avatar.glb',
          alt: "A 3D avatar",
          autoRotate: true,
          cameraControls: true,
          interactionPrompt: InteractionPrompt.whenFocused,
        ),
      ),
    );
  }
}
