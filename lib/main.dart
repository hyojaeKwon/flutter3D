import 'dart:html';
import 'dart:io';
import 'package:three_dart/three_dart.dart' as three;
import 'package:flutter/material.dart';
import 'package:flutter_gl/flutter_gl.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'flutter 3D demo',
      theme: ThemeData(
        primarySwatch: Colors.blue 
      ),
      home: const MyPage(title: 'Flutter 3D demo'),
    );

  }
}

class MyPage extends StatefulWidget {
  const MyPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {

  late FlutterGlPlugin three3dRender;
  three.WebGLRenderer? renderer;

  int? fboId;
  late double width;
  late double height;

  Size? screenSize;

  late three.Scene scene;
  late three.Camera camera;
  late three.Mesh mesh;

  late three.Camera cameraPerspective;
  late three.Camera cameraOrtho;

  late three.Camera activeCamera;

  late three.Group cameraRig;

  late three.CameraHelper activeHelper;
  late three.CameraHelper cameraOrthoHelper;
  late three.CameraHelper cameraPerspectiveHelper;

  int frustumSize = 00;

  double dpr = 1.0;

  num aspect = 1.0;

  var AMOUNT = 4;
  // part of declartion CAMERA
  

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter 3d example'),
      ),
      body: Stack(
        alignment: Alignment.center,
        children:[
          // 3D Scene


        ]
      ),
    )
  }
}