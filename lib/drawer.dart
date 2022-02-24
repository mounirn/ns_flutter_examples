import 'package:flutter/material.dart';
import 'samples/home_example.dart';

import 'samples/camera.dart';
import 'samples/device_info.dart';
import 'samples/get_it.dart';
import 'samples/html_editor.dart';
import 'samples/html_widgets.dart';
import 'samples/image_picker.dart';
import 'samples/network_info.dart';
import 'samples/pacakge_info.dart';
import 'samples/path_provider.dart';
import 'samples/url_launcher.dart';
import 'samples/video_player.dart';

const cSampleHome = '/home';
const cSampleImagePicker = '/image/picker';
const cSampleHtmlEditor = '/html/editor';
const cSampleUriLauncher = '/uri/launcher';
const cSamplePathProvider = '/path/provider';
const cSampleVideoPlayer = '/video/player';
const cSampleHtmlWidgets = '/html/widgets';
const cSampleHtmlWidgetsFromEditor = '/html/widgets/editor';
const cSampleCamera = '/camera';
const cSampleGetIt = '/get/it';
const cSamplePackageInfo = '/package/info';
const cSampleDeviceInfo = '/device/info';
const cSampleNetworkInfo = '/network/info';

// Provides helper function to build an app drawer 
Drawer buildAppDrawer(BuildContext context)  {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        ListTile(
          leading: const Icon(Icons.home),
          title: const Text('Home'),
          onTap: () {
             Navigator.pushNamed(
              context,cSampleHome
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.model_training),
          title: const Text('Get It '),
          onTap: () {
            Navigator.pushNamed(
              context,cSampleGetIt
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.model_training),
          title: const Text('Package Info '),
          onTap: () {
            Navigator.pushNamed(
              context, cSamplePackageInfo
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.device_hub),
          title: const Text('Device Info '),
          onTap: () {
            Navigator.pushNamed(
              context, cSampleDeviceInfo
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.network_check),
          title: const Text('Network Info '),
          onTap: () {
            Navigator.pushNamed(
              context, cSampleNetworkInfo
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.edit),
          title: const Text('HTML Editor '),
          onTap: () {
            Navigator.pushNamed(
              context, cSampleHtmlEditor
            );
          },
        ),
       ListTile(
          leading: const Icon(Icons.image),
          title: const Text('Image Picker'),
          onTap: () {
            Navigator.pushNamed(
              context, cSampleImagePicker
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.web_asset),
          title: const Text('URI Launcher'),
          onTap: () {
            Navigator.pushNamed(
              context,cSampleUriLauncher,
            );
          },
         ),
        ListTile(
          leading: const Icon(Icons.file_present_sharp),
          title: const Text('Path Provider'),
          onTap: () {
            Navigator.pushNamed(
              context, cSamplePathProvider
            );
          },
        ),
    /*   
        Consumer<NsUserModel>(
          builder: (context, model, child) => Container(
            child: model.isLoggedIn() ? ListTile(
              leading: Icon(Icons.lock),
              title: Text('Logout'),
              onTap: () {
                model.logout();
              }
            )
            : ListTile(
              leading: Icon(Icons.lock),
              title: Text('Login'),
              onTap: () {
                Navigator.pushNamed(
                  context,
                    '/account/login',
                );
              }
            )
          )
        ),
  */
        ListTile(
          leading: const Icon(Icons.video_collection),
          title: const Text('Video Player'),
          onTap: () {
            Navigator.pushNamed(
              context,cSampleVideoPlayer
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.info_outline),
          title: const Text('Widgets From Html'),
          onTap: () {
            Navigator.pushNamed(
              context, cSampleHtmlWidgets,
            );
          },
        ), 
        ListTile(
          leading: const Icon(Icons.info_outline),
          title: const Text('Widgets From Html - Edited using editor'),
          onTap: () {
            Navigator.pushNamed(
              context, cSampleHtmlWidgetsFromEditor,
            );
          },
        ), 
        ListTile(
          leading: const Icon(Icons.info_outline),
          title: const Text('Camera'),
          onTap: () {
            Navigator.pushNamed(
              context, cSampleCamera,
            );
          },
        )
     ],
    ),
  );
}



getAppRoutes(BuildContext context) { 
  var ret = {
        cSampleHome: (context) => const MyHomePage(title: 'Welcome',),
        cSampleHtmlEditor: (context) => const HtmlEditorExample(title: 'HTML Editor - https://pub.dev/packages/html_editor_enhanced'),
        cSampleImagePicker : (context) => const ImagePickerExample(title:'Image Picker - '),
        cSampleUriLauncher :(context) => const UrlLauncherExample(title: 'URL Launcher Sample'),
        cSamplePathProvider :(context) => const PathProviderExample(title: 'Path Provider - https://pub.dev/packages/path_provider'),
        cSampleVideoPlayer :(context) => const VideoPlayerExample(),
        cSampleCamera :(context) => const CameraExample(),
        cSampleGetIt :(context) => const GetItExample(title: "Get It - https://pub.dev/packages/get_it"),
        cSamplePackageInfo :(context) => const PackageInfoExample(title: "Package Info Plus - "),
        cSampleDeviceInfo :(context) => const DeviceInfoExample(),
        cSampleNetworkInfo :(context) => const NetworkInfoExample(),
        cSampleHtmlWidgets :(context) => const WidgetFromHtmlExample(false),
        cSampleHtmlWidgetsFromEditor :(context) => const WidgetFromHtmlExample(true),

  };
  return ret;
}


