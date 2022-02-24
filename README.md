# NS Flutter Examples

Includes the example code from flutter documentation and from  various libraries in pubs.dev.

## Building

- get your keys in  lib/keys.dart file. See sample file in lib/keys_sample.dart file
- git clone {repo}
- cd repo
- flutter pub get


## Flutter commands

- flutter devices
- flutter run -d chrome --web-renderer html
- flutter run -d {device}
- flutter run -d c7d8c7f807133535 --release
- flutter run -d all

## Pubnub

flutter pub add pubnub

## Ably sample

--dart-define ABLY_API_KEY="{Your key here}"

## provider

flutter pub add provider

## flutter_widget_from_html_code

flutter pub add flutter_widget_from_html_core

## image picker and video player

flutter pub add image_picker

See <https://pub.dev/packages/image_picker>

## camera

- flutter pub add camera

- See Issue below - required SDK 21 or higher

## get_it

flutter  pub add get_it

## package info plus

- flutter pub add package_info_plus

## device info plus

- flutter pub add device_info_plus

## device info plus - web

- flutter pub add device_info_plus_web

## connectivity_plus

flutter pub add connectivity_plus

## network info

flutter pub add network_info_plus

## video player

flutter pub add video_player

See <https://pub.dev/packages/video_player>

## google_fonts

flutter pub add google_fonts
See https://pub.dev/packages/google_fonts/example

## url launcher

flutter pub add url_launcher

## launcher icon

- flutter pub add flutter_launcher_icons
- see <https://pub.dev/packages/flutter_launcher_icons>
- create flutter_launcher_icons.yaml
- flutter pub run flutter_launcher_icons:main

## ably_flutter

- See <https://pub.dev/packages/ably_flutter>
- flutter pub add ably_flutter
- Download https://github.com/ably/ably-flutter.git

import 'package:fluttertoast/fluttertoast_web.dart';

## flutter native splash

- flutter pub add flutter_native_splash
- create a file flutter_native_splash.yaml
- add color or bg image
- flutter pub run flutter_native_splash:create

- see <https://pub.dev/packages/flutter_native_splash>

- See Issue 'App requires Multidex support' below

## path provider - file system paths

Supports: iOS, Android, Windows. Web not supported.

- flutter pub add path_provider

## Issues

## Android main thread

D/ViewRootImpl(26372): ViewPostImeInputStage ACTION_DOWN
I/Choreographer(26372): Skipped 248 frames!  The application may be doing too much work on its main thread.

### Android release build

C:\NouriSolutions\trunk2022\flutter\ns_flutter_examples>flutter run -d c7d8c7f807133535 --release
Launching lib\main.dart on SM T330NU in release mode...
Building with Flutter multidex support enabled.
I/flutter (26372): {style: div, fontName: sans-serif, fontSize: 3, font: [false, false, false], miscFont: [false, false, false], color: [rgb(0, 0, 0), ], paragraph: [false, false], align: [true, false, false, false], lineHeight: normal, direction: ltr}
I/flutter (26372): {style: div, fontName: sans-serif, fontSize: 3, font: [false, false, false], miscFont: [false, false, false], color: [rgb(0, 0, 0), ], paragraph: [false, false], align: [true, false, false, false], lineHeight: normal, direction: ltr}
I/flutter (26372): {style: div, fontName: sans-serif, fontSize: 3, font: [false, false, false], miscFont: [false, false, false], color: [rgb(0, 0, 0), ], paragraph: [false, false], align: [true, false, false, false], lineHeight: normal, direction: ltr}
I/flutter (26372): {style: div, fontName: sans-serif, fontSize: 3, font: [false, false, false], miscFont: [false, false, false], color: [rgb(0, 0, 0), ], paragraph: [false, false], align: [true, false, false, false], lineHeight: normal, direction: ltr}
I/flutter (26372): {style: div, fontName: sans-serif, fontSize: 3, font: [false, false, false], miscFont: [false, false, false], color: [rgb(0, 0, 0), ], paragraph: [false, false], align: [true, false, false, false], lineHeight: normal, direction: ltr}
I/flutter (26372): {style: div, fontName: sans-serif, fontSize: 3, font: [false, false, false], miscFont: [false, false, false], color: [rgb(0, 0, 0), ], paragraph: [false, false], align: [true, false, false, false], lineHeight: normal, direction: ltr}
I/flutter (26372): {style: div, fontName: sans-serif, fontSize: 3, font: [false, false, false], miscFont: [false, false, false], color: [rgb(0, 0, 0), ], paragraph: [false, false], align: [true, false, false, false], lineHeight: normal, direction: ltr}
I/flutter (26372): {style: div, fontName: sans-serif, fontSize: 3, font: [false, false, false], miscFont: [false, false, false], color: [rgb(0, 0, 0), ], paragraph: [false, false], align: [true, false, false, false], lineHeight: normal, direction: ltr}
I/flutter (26372): {style: div, fontName: sans-serif, fontSize: 3, font: [false, false, false], miscFont: [false, false, false], color: [rgb(0, 0, 0), ], paragraph: [false, false], align: [true, false, false, false], lineHeight: normal, direction: ltr}
I/flutter (26372): {style: div, fontName: sans-serif, fontSize: 3, font: [false, false, false], miscFont: [false, false, false], color: [rgb(0, 0, 0), ], paragraph: [false, false], align: [true, false, false, false], lineHeight: normal, direction: ltr}
I/flutter (26372): {style: div, fontName: sans-serif, fontSize: 3, font: [false, false, false], miscFont: [false, false, false], color: [rgb(0, 0, 0), ], paragraph: [false, false], align: [true, false, false, false], lineHeight: normal, direction: ltr}
I/flutter (26372): {style: div, fontName: sans-serif, fontSize: 3, font: [false, false, false], miscFont: [false, false, false], color: [rgb(0, 0, 0), ], paragraph: [false, false], align: [true, false, false, false], lineHeight: normal, direction: ltr}
I/flutter (26372): {style: div, fontName: sans-serif, fontSize: 3, font: [false, false, false], miscFont: [false, false, false], color: [rgb(0, 0, 0), ], paragraph: [false, false], align: [true, false, false, false], lineHeight: normal, direction: ltr}
I/flutter (26372): {style: div, fontName: sans-serif, fontSize: 3, font: [false, false, false], miscFont: [false, false, false], color: [rgb(0, 0, 0), ], paragraph: [false, false], align: [true, false, false, false], lineHeight: normal, direction: ltr}
I/flutter (26372): {style: div, fontName: sans-serif, fontSize: 3, font: [false, false, false], miscFont: [false, false, false], color: [rgb(0, 0, 0), ], paragraph: [false, false], align: [true, false, false, false], lineHeight: normal, direction: ltr}
I/flutter (26372): {style: div, fontName: sans-serif, fontSize: 3, font: [false, false, false], miscFont: [false, false, false], color: [rgb(0, 0, 0), ], paragraph: [false, false], align: [true, false, false, false], lineHeight: normal, direction: ltr}
I/flutter (26372): {style: div, fontName: sans-serif, fontSize: 3, font: [false, false, false], miscFont: [false, false, false], color: [rgb(0, 0, 0), ], paragraph: [false, false], align: [true, false, false, false], lineHeight: normal, direction: ltr}
I/flutter (26372): {style: div, fontName: sans-serif, fontSize: 3, font: [false, false, false], miscFont: [false, false, false], color: [rgb(0, 0, 0), ], paragraph: [false, false], align: [true, false, false, false], lineHeight: normal, direction: ltr}
I/flutter (26372): {style: div, fontName: sans-serif, fontSize: 3, font: [false, false, false], miscFont: [false, false, false], color: [rgb(0, 0, 0), ], paragraph: [false, false], align: [true, false, false, false], lineHeight: normal, direction: ltr}
I/flutter (26372): {style: div, fontName: sans-serif, fontSize: 3, font: [false, false, false], miscFont: [false, false, false], color: [rgb(0, 0, 0), ], paragraph: [false, false], align: [true, false, false, false], lineHeight: normal, direction: ltr}
I/flutter (26372): {style: div, fontName: sans-serif, fontSize: 3, font: [false, false, false], miscFont: [false, false, false], color: [rgb(0, 0, 0), ], paragraph: [false, false], align: [true, false, false, false], lineHeight: normal, direction: ltr}
I/flutter (26372): {style: , fontName: Menlo, Monaco, monospace, sans-serif, fontSize: 2, font: [false, false, false], miscFont: [false, false, false], color: [rgb(204, 204, 204), ], paragraph: [false, false], align: [true, false, false, false], lineHeight: normal, direction: ltr}
I/flutter (26372): {style: , fontName: Menlo, Monaco, monospace, sans-serif, fontSize: 2, font: [false, false, false], miscFont: [false, false, false], color: [rgb(204, 204, 204), ], paragraph: [false, false], align: [true, false, false, false], lineHeight: normal, direction: ltr}
I/flutter (26372): {style: , fontName: Menlo, Monaco, monospace, sans-serif, fontSize: 2, font: [false, false, false], miscFont: [false, false, false], color: [rgb(204, 204, 204), ], paragraph: [false, false], align: [true, false, false, false], lineHeight: normal, direction: ltr}
I/flutter (26372): {style: , fontName: Menlo, Monaco, monospace, sans-serif, fontSize: 2, font: [false, false, false], miscFont: [false, false, false], color: [rgb(204, 204, 204), ], paragraph: [false, false], align: [true, false, false, false], lineHeight: normal, direction: ltr}
I/flutter (26372): {style: , fontName: Menlo, Monaco, monospace, sans-serif, fontSize: 2, font: [false, false, false], miscFont: [false, false, false], color: [rgb(204, 204, 204), ], paragraph: [false, false], align: [true, false, false, false], lineHeight: normal, direction: ltr}
I/flutter (26372): {style: , fontName: Menlo, Monaco, monospace, sans-serif, fontSize: 2, font: [false, false, false], miscFont: [false, false, false], color: [rgb(204, 204, 204), ], paragraph: [false, false], align: [true, false, false, false], lineHeight: normal, direction: ltr}
I/flutter (26372): {style: , fontName: Menlo, Monaco, monospace, sans-serif, fontSize: 2, font: [false, false, false], miscFont: [false, false, false], color: [rgb(204, 204, 204), ], paragraph: [false, false], align: [true, false, false, false], lineHeight: normal, direction: ltr}
I/flutter (26372): {style: , fontName: Menlo, Monaco, monospace, sans-serif, fontSize: 2, font: [false, false, false], miscFont: [false, false, false], color: [rgb(204, 204, 204), ], paragraph: [false, false], align: [true, false, false, false], lineHeight: normal, direction: ltr}
I/flutter (26372): {style: , fontName: Menlo, Monaco, monospace, sans-serif, fontSize: 2, font: [false, false, false], miscFont: [false, false, false], color: [rgb(204, 204, 204), ], paragraph: [false, false], align: [true, false, false, false], lineHeight: normal, direction: ltr}
I/flutter (26372): {style: , fontName: Menlo, Monaco, monospace, sans-serif, fontSize: 2, font: [false, false, false], miscFont: [false, false, false], color: [rgb(204, 204, 204), ], paragraph: [false, false], align: [true, false, false, false], lineHeight: normal, direction: ltr}
I/flutter (26372): {style: , fontName: Menlo, Monaco, monospace, sans-serif, fontSize: 2, font: [false, false, false], miscFont: [false, false, false], color: [rgb(204, 204, 204), ], paragraph: [false, false], align: [true, false, false, false], lineHeight: normal, direction: ltr}
I/flutter (26372): {style: , fontName: Menlo, Monaco, monospace, sans-serif, fontSize: 2, font: [false, false, false], miscFont: [false, false, false], color: [rgb(204, 204, 204), ], paragraph: [false, false], align: [true, false, false, false], lineHeight: normal, direction: ltr}
I/flutter (26372): {style: , fontName: Menlo, Monaco, monospace, sans-serif, fontSize: 2, font: [false, false, false], miscFont: [false, false, false], color: [rgb(204, 204, 204), ], paragraph: [false, false], align: [true, false, false, false], lineHeight: normal, direction: ltr}
I/flutter (26372): {style: , fontName: Menlo, Monaco, monospace, sans-serif, fontSize: 2, font: [false, false, false], miscFont: [false, false, false], color: [rgb(204, 204, 204), ], paragraph: [false, false], align: [true, false, false, false], lineHeight: normal, direction: ltr}
I/flutter (26372): {style: , fontName: Menlo, Monaco, monospace, sans-serif, fontSize: 2, font: [false, false, false], miscFont: [false, false, false], color: [rgb(204, 204, 204), ], paragraph: [false, false], align: [true, false, false, false], lineHeight: normal, direction: ltr}
I/flutter (26372): {style: , fontName: Menlo, Monaco, monospace, sans-serif, fontSize: 2, font: [false, false, false], miscFont: [false, false, false], color: [rgb(204, 204, 204), ], paragraph: [false, false], align: [true, false, false, false], lineHeight: normal, direction: ltr}
I/flutter (26372): {style: , fontName: Menlo, Monaco, monospace, sans-serif, fontSize: 2, font: [false, false, false], miscFont: [false, false, false], color: [rgb(204, 204, 204), ], paragraph: [false, false], align: [true, false, false, false], lineHeight: normal, direction: ltr}
I/flutter (26372): {style: , fontName: Menlo, Monaco, monospace, sans-serif, fontSize: 2, font: [false, false, false], miscFont: [false, false, false], color: [rgb(204, 204, 204), ], paragraph: [false, false], align: [true, false, false, false], lineHeight: normal, direction: ltr}
I/flutter (26372): {style: , fontName: Menlo, Monaco, monospace, sans-serif, fontSize: 2, font: [false, false, false], miscFont: [false, false, false], color: [rgb(204, 204, 204), ], paragraph: [false, false], align: [true, false, false, false], lineHeight: normal, direction: ltr}
I/flutter (26372): {style: , fontName: Menlo, Monaco, monospace, sans-serif, fontSize: 2, font: [false, false, false], miscFont: [false, false, false], color: [rgb(204, 204, 204), ], paragraph: [false, false], align: [true, false, false, false], lineHeight: normal, direction: ltr}
I/flutter (26372): {style: , fontName: Menlo, Monaco, monospace, sans-serif, fontSize: 2, font: [false, false, false], miscFont: [false, false, false], color: [rgb(204, 204, 204), ], paragraph: [false, false], align: [true, false, false, false], lineHeight: normal, direction: ltr}
I/flutter (26372): {style: , fontName: Menlo, Monaco, monospace, sans-serif, fontSize: 2, font: [false, false, false], miscFont: [false, false, false], color: [rgb(204, 204, 204), ], paragraph: [false, false], align: [true, false, false, false], lineHeight: normal, direction: ltr}
I/flutter (26372): {style: , fontName: Menlo, Monaco, monospace, sans-serif, fontSize: 2, font: [false, false, false], miscFont: [false, false, false], color: [rgb(204, 204, 204), ], paragraph: [false, false], align: [true, false, false, false], lineHeight: normal, direction: ltr}
I/flutter (26372): {style: , fontName: Menlo, Monaco, monospace, sans-serif, fontSize: 2, font: [false, false, false], miscFont: [false, false, false], color: [rgb(204, 204, 204), ], paragraph: [false, false], align: [true, false, false, false], lineHeight: normal, direction: ltr}
I/flutter (26372): {style: , fontName: Menlo, Monaco, monospace, sans-serif, fontSize: 2, font: [false, false, false], miscFont: [false, false, false], color: [rgb(204, 204, 204), ], paragraph: [false, false], align: [true, false, false, false], lineHeight: normal, direction: ltr}
I/flutter (26372): {style: , fontName: Menlo, Monaco, monospace, sans-serif, fontSize: 2, font: [false, false, false], miscFont: [false, false, false], color: [rgb(204, 204, 204), ], paragraph: [false, false], align: [true, false, false, false], lineHeight: normal, direction: ltr}
I/flutter (26372): {style: , fontName: Menlo, Monaco, monospace, sans-serif, fontSize: 2, font: [false, false, false], miscFont: [false, false, false], color: [rgb(204, 204, 204), ], paragraph: [false, false], align: [true, false, false, false], lineHeight: normal, direction: ltr}
I/flutter (26372): {style: , fontName: Menlo, Monaco, monospace, sans-serif, fontSize: 2, font: [false, false, false], miscFont: [false, false, false], color: [rgb(204, 204, 204), ], paragraph: [false, false], align: [true, false, false, false], lineHeight: normal, direction: ltr}
I/flutter (26372): {style: , fontName: Menlo, Monaco, monospace, sans-serif, fontSize: 2, font: [false, false, false], miscFont: [false, false, false], color: [rgb(204, 204, 204), ], paragraph: [false, false], align: [true, false, false, false], lineHeight: normal, direction: ltr}
I/flutter (26372): {style: , fontName: Menlo, Monaco, monospace, sans-serif, fontSize: 2, font: [false, false, false], miscFont: [false, false, false], color: [rgb(204, 204, 204), ], paragraph: [false, false], align: [true, false, false, false], lineHeight: normal, direction: ltr}
I/flutter (26372): {style: , fontName: Menlo, Monaco, monospace, sans-serif, fontSize: 2, font: [false, false, false], miscFont: [false, false, false], color: [rgb(204, 204, 204), ], paragraph: [false, false], align: [true, false, false, false], lineHeight: normal, direction: ltr}
I/flutter (26372): {style: , fontName: Menlo, Monaco, monospace, sans-serif, fontSize: 2, font: [false, false, false], miscFont: [false, false, false], color: [rgb(204, 204, 204), ], paragraph: [false, false], align: [true, false, false, false], lineHeight: normal, direction: ltr}
C:\flutter\2.10.0\flutter\.pub-cache\hosted\pub.dartlang.org\camera-0.9.4+11\android\src\main\java\io\flutter\plugins\camera\features\resolution\ResolutionFeature.java:154: warning: [deprecation] get(int,int) in CamcorderProfile has been deprecated
          return CamcorderProfile.get(cameraId, CamcorderProfile.QUALITY_HIGH);
                                 ^
C:\flutter\2.10.0\flutter\.pub-cache\hosted\pub.dartlang.org\camera-0.9.4+11\android\src\main\java\io\flutter\plugins\camera\features\resolution\ResolutionFeature.java:158: warning: [deprecation] get(int,int) in CamcorderProfile has been deprecated
          return CamcorderProfile.get(cameraId, CamcorderProfile.QUALITY_2160P);
                                 ^
C:\flutter\2.10.0\flutter\.pub-cache\hosted\pub.dartlang.org\camera-0.9.4+11\android\src\main\java\io\flutter\plugins\camera\features\resolution\ResolutionFeature.java:162: warning: [deprecation] get(int,int) in CamcorderProfile has been deprecated
          return CamcorderProfile.get(cameraId, CamcorderProfile.QUALITY_1080P);
                                 ^
C:\flutter\2.10.0\flutter\.pub-cache\hosted\pub.dartlang.org\camera-0.9.4+11\android\src\main\java\io\flutter\plugins\camera\features\resolution\ResolutionFeature.java:166: warning: [deprecation] get(int,int) in CamcorderProfile has been deprecated
          return CamcorderProfile.get(cameraId, CamcorderProfile.QUALITY_720P);
                                 ^
C:\flutter\2.10.0\flutter\.pub-cache\hosted\pub.dartlang.org\camera-0.9.4+11\android\src\main\java\io\flutter\plugins\camera\features\resolution\ResolutionFeature.java:170: warning: [deprecation] get(int,int) in CamcorderProfile has been deprecated
          return CamcorderProfile.get(cameraId, CamcorderProfile.QUALITY_480P);
                                 ^
C:\flutter\2.10.0\flutter\.pub-cache\hosted\pub.dartlang.org\camera-0.9.4+11\android\src\main\java\io\flutter\plugins\camera\features\resolution\ResolutionFeature.java:174: warning: [deprecation] get(int,int) in CamcorderProfile has been deprecated
          return CamcorderProfile.get(cameraId, CamcorderProfile.QUALITY_QVGA);
                                 ^
C:\flutter\2.10.0\flutter\.pub-cache\hosted\pub.dartlang.org\camera-0.9.4+11\android\src\main\java\io\flutter\plugins\camera\features\resolution\ResolutionFeature.java:178: warning: [deprecation] get(int,int) in CamcorderProfile has been deprecated
          return CamcorderProfile.get(cameraId, CamcorderProfile.QUALITY_LOW);
                                 ^
7 warnings
Note: Some input files use or override a deprecated API.
Note: Recompile with -Xlint:deprecation for details.
Note: Some input files use unchecked or unsafe operations.
Note: Recompile with -Xlint:unchecked for details.
Note: C:\flutter\2.10.0\flutter\.pub-cache\hosted\pub.dartlang.org\network_info_plus-2.1.2\android\src\main\java\dev\fluttercommunity\plus\network_info\NetworkInfo.java uses or overrides a deprecated API.
Note: Recompile with -Xlint:deprecation for details.
Note: C:\flutter\2.10.0\flutter\.pub-cache\hosted\pub.dartlang.org\path_provider_android-2.0.11\android\src\main\java\io\flutter\plugins\pathprovider\PathProviderPlugin.java uses unchecked or unsafe operations.
Note: Recompile with -Xlint:unchecked for details.
Note: Some input files use or override a deprecated API.
Note: Recompile with -Xlint:deprecation for details.
WARNING: [Processor] Library 'C:\Users\mounir\.gradle\caches\modules-2\files-2.1\org.robolectric\shadows-framework\4.3.1\da048a93951f4d9e46519749c53b0f868dfdf425\shadows-framework-4.3.1.jar' contains references to both AndroidX and old support library. This seems like the library is partially migrated. Jetifier will try to rewrite the library 
anyway.
 Example of androidX reference: 'androidx/test/runner/lifecycle/Stage'
 Example of support library reference: 'android/support/annotation/NonNull'
WARNING: [Processor] Library 'C:\Users\mounir\.gradle\caches\modules-2\files-2.1\org.robolectric\shadows-framework\4.3\150103d5732c432906f6130b734e7452855dd67b\shadows-framework-4.3.jar' contains references to both AndroidX and old support library. This seems like the library is partially migrated. Jetifier will try to rewrite the library anyway.
 Example of androidX reference: 'androidx/test/runner/lifecycle/Stage'
 Example of support library reference: 'android/support/annotation/NonNull'
Running Gradle task 'assembleRelease'...                         

### Android Build- Deprecated API for some java impl. files

c:\NouriSolutions\trunk2022\flutter\ns_flutter_examples>flutter run -d c7d8c7f807133535
Launching lib\main.dart on SM T330NU in debug mode...
Building with Flutter multidex support enabled.
WARNING: [Processor] Library 'C:\Users\mounir\.gradle\caches\modules-2\files-2.1\androidx.media2\media2-session\1.1.3\27a17d921a5d48327be3c4d25bcea79def4d1f9d\media2-session-1.1.3.aar' contains references to both AndroidX and old 
support library. This seems like the library is partially migrated. Jetifier will try to rewrite the library anyway.
 Example of androidX reference: 'androidx/media2/session/MediaBrowser$Builder'
 Example of support library reference: 'android/support/v4/media/session/MediaSessionCompat$Token'
C:\flutter\2.10.0\flutter\.pub-cache\hosted\pub.dartlang.org\camera-0.9.4+11\android\src\main\java\io\flutter\plugins\camera\features\resolution\ResolutionFeature.java:154: warning: [deprecation] get(int,int) in CamcorderProfile has been deprecated
          return CamcorderProfile.get(cameraId, CamcorderProfile.QUALITY_HIGH);
                                 ^
C:\flutter\2.10.0\flutter\.pub-cache\hosted\pub.dartlang.org\camera-0.9.4+11\android\src\main\java\io\flutter\plugins\camera\features\resolution\ResolutionFeature.java:158: warning: [deprecation] get(int,int) in CamcorderProfile has been deprecated
          return CamcorderProfile.get(cameraId, CamcorderProfile.QUALITY_2160P);
                                 ^
C:\flutter\2.10.0\flutter\.pub-cache\hosted\pub.dartlang.org\camera-0.9.4+11\android\src\main\java\io\flutter\plugins\camera\features\resolution\ResolutionFeature.java:162: warning: [deprecation] get(int,int) in CamcorderProfile has been deprecated
          return CamcorderProfile.get(cameraId, CamcorderProfile.QUALITY_1080P);
                                 ^
C:\flutter\2.10.0\flutter\.pub-cache\hosted\pub.dartlang.org\camera-0.9.4+11\android\src\main\java\io\flutter\plugins\camera\features\resolution\ResolutionFeature.java:166: warning: [deprecation] get(int,int) in CamcorderProfile has been deprecated
          return CamcorderProfile.get(cameraId, CamcorderProfile.QUALITY_720P);
                                 ^
C:\flutter\2.10.0\flutter\.pub-cache\hosted\pub.dartlang.org\camera-0.9.4+11\android\src\main\java\io\flutter\plugins\camera\features\resolution\ResolutionFeature.java:170: warning: [deprecation] get(int,int) in CamcorderProfile has been deprecated
          return CamcorderProfile.get(cameraId, CamcorderProfile.QUALITY_480P);
                                 ^
C:\flutter\2.10.0\flutter\.pub-cache\hosted\pub.dartlang.org\camera-0.9.4+11\android\src\main\java\io\flutter\plugins\camera\features\resolution\ResolutionFeature.java:174: warning: [deprecation] get(int,int) in CamcorderProfile has been deprecated
          return CamcorderProfile.get(cameraId, CamcorderProfile.QUALITY_QVGA);
                                 ^
C:\flutter\2.10.0\flutter\.pub-cache\hosted\pub.dartlang.org\camera-0.9.4+11\android\src\main\java\io\flutter\plugins\camera\features\resolution\ResolutionFeature.java:178: warning: [deprecation] get(int,int) in CamcorderProfile has been deprecated
          return CamcorderProfile.get(cameraId, CamcorderProfile.QUALITY_LOW);
                                 ^
7 warnings
Note: Some input files use or override a deprecated API.
Note: Recompile with -Xlint:deprecation for details.
Note: Some input files use unchecked or unsafe operations.
Note: Recompile with -Xlint:unchecked for details.
Note: C:\flutter\2.10.0\flutter\.pub-cache\hosted\pub.dartlang.org\network_info_plus-2.1.2\android\src\main\java\dev\fluttercommunity\plus\network_info\NetworkInfo.java uses or overrides a deprecated API.
Note: Recompile with -Xlint:deprecation for details.
Note: C:\flutter\2.10.0\flutter\.pub-cache\hosted\pub.dartlang.org\path_provider_android-2.0.11\android\src\main\java\io\flutter\plugins\pathprovider\PathProviderPlugin.java uses unchecked or unsafe operations.
Note: Recompile with -Xlint:unchecked for details.
Note: Some input files use or override a deprecated API.
Note: Recompile with -Xlint:deprecation for details.

### Android camera issue (after upgrade to SDK 21)

C:\NouriSolutions\trunk2022\flutter\test_html_editor>flutter run -d c7d8c7f807133535 
Launching lib\main.dart on SM T330NU in debug mode...
Building with Flutter multidex support enabled.
C:\flutter\2.10.0\flutter\.pub-cache\hosted\pub.dartlang.org\camera-0.9.4+11\android\src\main\java\io\flutter\plugins\camera\features\resolution\ResolutionFeature.java:154: warning: [deprecation] get(int,int) in CamcorderProfile has been deprecated
          return CamcorderProfile.get(cameraId, CamcorderProfile.QUALITY_HIGH);
                                 ^
C:\flutter\2.10.0\flutter\.pub-cache\hosted\pub.dartlang.org\camera-0.9.4+11\android\src\main\java\io\flutter\plugins\camera\features\resolution\ResolutionFeature.java:158: warning: [deprecation] get(int,int) in CamcorderProfile has been deprecated
          return CamcorderProfile.get(cameraId, CamcorderProfile.QUALITY_2160P);
                                 ^
C:\flutter\2.10.0\flutter\.pub-cache\hosted\pub.dartlang.org\camera-0.9.4+11\android\src\main\java\io\flutter\plugins\camera\features\resolution\ResolutionFeature.java:162: warning: [deprecation] get(int,int) in CamcorderProfile has been deprecated
          return CamcorderProfile.get(cameraId, CamcorderProfile.QUALITY_1080P);
                                 ^
C:\flutter\2.10.0\flutter\.pub-cache\hosted\pub.dartlang.org\camera-0.9.4+11\android\src\main\java\io\flutter\plugins\camera\features\resolution\ResolutionFeature.java:166: warning: [deprecation] get(int,int) in CamcorderProfile has been deprecated
          return CamcorderProfile.get(cameraId, CamcorderProfile.QUALITY_720P);
                                 ^
C:\flutter\2.10.0\flutter\.pub-cache\hosted\pub.dartlang.org\camera-0.9.4+11\android\src\main\java\io\flutter\plugins\camera\features\resolution\ResolutionFeature.java:170: warning: [deprecation] get(int,int) in CamcorderProfile has been deprecated
          return CamcorderProfile.get(cameraId, CamcorderProfile.QUALITY_480P);
                                 ^
C:\flutter\2.10.0\flutter\.pub-cache\hosted\pub.dartlang.org\camera-0.9.4+11\android\src\main\java\io\flutter\plugins\camera\features\resolution\ResolutionFeature.java:174: warning: [deprecation] get(int,int) in CamcorderProfile has been deprecated
          return CamcorderProfile.get(cameraId, CamcorderProfile.QUALITY_QVGA);
                                 ^
C:\flutter\2.10.0\flutter\.pub-cache\hosted\pub.dartlang.org\camera-0.9.4+11\android\src\main\java\io\flutter\plugins\camera\features\resolution\ResolutionFeature.java:178: warning: [deprecation] get(int,int) in CamcorderProfile has been deprecated
          return CamcorderProfile.get(cameraId, CamcorderProfile.QUALITY_LOW);
                                 ^
7 warnings
Running Gradle task 'assembleDebug'...                            109.0s
√  Built build\app\outputs\flutter-apk\app-debug.apk.
Installing build\app\outputs\flutter-apk\app.apk...               105.7s
Syncing files to device SM T330NU...                               337ms

Flutter run key commands.
r Hot reload.
R Hot restart.
h List all available interactive commands.
d Detach (terminate "flutter run" but leave application running).
c Clear the screen
q Quit (terminate the application on the device).

 Running with sound null safety 

An Observatory debugger and profiler on SM T330NU is available at:
http://127.0.0.1:5248/sKlbJcrrnNU=/
I/CameraManagerGlobal(27812): getCameraService: Reconnecting to camera service
The Flutter DevTools debugger and profiler on SM T330NU is available at:
http://127.0.0.1:9100?uri=http://127.0.0.1:5248/sKlbJcrrnNU=/
I/Choreographer(27812): Skipped 90 frames!  The application may be doing too much work on its main thread.

### uses-sdk:minSdkVersion 19 cannot be smaller than version 21 declared in library [:camera]

C:\NouriSolutions\trunk2022\flutter\test_html_editor>flutter run -d c7d8c7f807133535
Launching lib\main.dart on SM T330NU in debug mode...
Running Gradle task 'assembleDebug'...
Building with Flutter multidex support enabled.
Running Gradle task 'assembleDebug'...
Note: C:\flutter\2.10.0\flutter\.pub-cache\hosted\pub.dartlang.org\path_provider_android-2.0.11\android\src\main\java\io\flutter\plugins\pathprovider\PathProviderPlugin.java uses unchecked or unsafe operations.
Running Gradle task 'assembleDebug'...
http://127.0.0.1:2758/wKqT7dGU4js=/

C:\NouriSolutions\trunk2022\flutter\test_html_editor>flutter run -d c7d8c7f807133535 
Launching lib\main.dart on SM T330NU in debug mode...
Building with Flutter multidex support enabled.
C:\NouriSolutions\trunk2022\flutter\test_html_editor\android\app\src\debug\AndroidManifest.xml 
Error:
        uses-sdk:minSdkVersion 19 cannot be smaller than version 21 declared in library [:camera] C:\NouriSolutions\trunk2022\flutter\test_html_editor\build\camera\intermediates\library_manifest\debug\AndroidManifest.xml as the library might be using APIs not available in 19
        Suggestion: use a compatible library with a minSdk of at most 19,
                or increase this project's minSdk version to at least 21,
                or use tools:overrideLibrary="io.flutter.plugins.camera" to force usage (may lead to runtime failures)

FAILURE: Build failed with an exception.

* What went wrong:
Execution failed for task ':app:processDebugMainManifest'.
> Manifest merger failed : uses-sdk:minSdkVersion 19 cannot be smaller than version 21 declared in library [:camera] C:\NouriSolutions\trunk2022\flutter\test_html_editor\build\camera\intermediates\library_manifest\debug\AndroidManifest.xml as the library might be using APIs not available in 19
        Suggestion: use a compatible library with a minSdk of at most 19,
                or increase this project's minSdk version to at least 21,
                or use tools:overrideLibrary="io.flutter.plugins.camera" to force usage (may lead to runtime failures)

* Try:
Run with --stacktrace option to get the stack trace. Run with --info or --debug option to get more log output. Run with --scan to get full insights.

* Get more help at https://help.gradle.org

BUILD FAILED in 2m 36s
Running Gradle task 'assembleDebug'...                            159.1s

┌─ Flutter Fix ─────────────────────────────────────────────────────────────────────────────┐
│ The plugin camera requires a higher Android SDK version.                                  │
│ Fix this issue by adding the following to the file                                        │  
│ C:\NouriSolutions\trunk2022\flutter\test_html_editor\android\app\build.gradle:            │  
│ android {                                                                                 │  
│   defaultConfig {                                                                         │  
│     minSdkVersion 21                                                                      │  
│   }                                                                                       │  
│ }                                                                                         │  
│                                                                                           │  
│                                                                                           │
│ Note that your app won't be available to users running Android SDKs below 21.             │  
│ Alternatively, try to find a version of this plugin that supports these lower versions of │  
│ the Android SDK.                                                                          │  
└───────────────────────────────────────────────────────────────────────────────────────────┘  
Exception: Gradle task assembleDebug failed with exit code 1


### App requires Multidex support

C:\NouriSolutions\trunk2022\flutter\test_html_editor>flutter pub add flutter_native_splash
Resolving dependencies...
+ archive 3.1.11
+ args 2.3.0
+ crypto 3.0.1
+ flutter_native_splash 2.0.2
+ image 3.1.1
  js 0.6.3 (0.6.4 available)
  material_color_utilities 0.1.3 (0.1.4 available)
  path 1.8.0 (1.8.1 available)
+ petitparser 4.4.0
  source_span 1.8.1 (1.8.2 available)
  test_api 0.4.8 (0.4.9 available)
+ universal_io 2.0.4
  vector_math 2.1.1 (2.1.2 available)
+ xml 5.3.1
+ yaml 3.1.0
Downloading flutter_native_splash 2.0.2...
Downloading image 3.1.1...
Downloading archive 3.1.11...
Changed 9 dependencies!

C:\NouriSolutions\trunk2022\flutter\test_html_editor>flutter pub run flutter_native_splash:create
[Android] Updating launch background(s) with splash image path...
[Android]    - android/app/src/main/res/drawable/launch_background.xml
[Android]    - android/app/src/main/res/drawable-v21/launch_background.xml
[Android] Updating styles...
[Android]    - android/app/src/main/res/values/styles.xml
[iOS] Updating LaunchScreen.storyboard with width, and height
[iOS] Updating ios/Runner/Info.plist for status bar hidden/visible
[Web] Creating CSS
[Web] Updating index.html

Native splash complete. 👍
Now go finish building something awesome! 💪 You rock! 🤘🤩

===================================================================
**                         WHAT'S NEW:                           **
===================================================================
You can now keep the splash screen up while your app initializes!
No need for a secondary splash screen anymore. Just use the
removeAfter method to remove the splash screen after your
initialization is complete.  Check the docs for more info.

C:\NouriSolutions\trunk2022\flutter\test_html_editor>flutter pub run flutter_native_splash:create
[Android] Updating launch background(s) with splash image path...
[Android]    - android/app/src/main/res/drawable/launch_background.xml
[Android]    - android/app/src/main/res/drawable-v21/launch_background.xml
[Android] Updating styles...
[Android]    - android/app/src/main/res/values/styles.xml
[iOS] Updating LaunchScreen.storyboard with width, and height
[iOS] Updating ios/Runner/Info.plist for status bar hidden/visible
[Web] Creating CSS
[Web] Updating index.html

Native splash complete. 👍
Now go finish building something awesome! 💪 You rock! 🤘🤩


You can now keep the splash screen up while your app initializes!  
No need for a secondary splash screen anymore. Just use the        
removeAfter method to remove the splash screen after your
initialization is complete.  Check the docs for more info.

C:\NouriSolutions\trunk2022\flutter\test_html_editor>flutter run -d c7d8c7f807133535 c7d8c7f807133535
Launching lib\main.dart on SM T330NU in debug mode...                  |
Running Gradle task 'assembleDebug'...
D8: Cannot fit requested classes in a single dex file (# methods: 73958 > 65536)
Running Gradle task 'assembleDebug'...
com.android.builder.dexing.DexArchiveMergerException: Error while merging dex archives:
Running Gradle task 'assembleDebug'...
The number of method references in a .dex file cannot exceed 64K.  
Running Gradle task 'assembleDebug'...
Learn how to resolve this issue at https://developer.android.com/tools/building/multidex.html
Running Gradle task 'assembleDebug'...
        at com.android.builder.dexing.D8DexArchiveMerger.getExceptionToRethrow(D8DexArchiveMerger.java:132)
Running Gradle task 'assembleDebug'...
        at com.android.builder.dexing.D8DexArchiveMerger.mergeDexArchives(D8DexArchiveMerger.java:119)
Running Gradle task 'assembleDebug'...
        at com.android.build.gradle.internal.transforms.DexMergerTransformCallable.call(DexMergerTransformCallable.java:102)
Running Gradle task 'assembleDebug'...
        at com.android.build.gradle.internal.tasks.DexMergingTaskRunnable.run(DexMergingTask.kt:432)
Running Gradle task 'assembleDebug'...
        at com.android.build.gradle.internal.tasks.Workers$ActionFacade.run(Workers.kt:242)
Running Gradle task 'assembleDebug'...
        at org.gradle.workers.internal.AdapterWorkAction.execute(AdapterWorkAction.java:57)
Running Gradle task 'assembleDebug'...
        at org.gradle.workers.internal.DefaultWorkerServer.execute(DefaultWorkerServer.java:63)
Running Gradle task 'assembleDebug'...
        at org.gradle.workers.internal.NoIsolationWorkerFactory$1$1.create(NoIsolationWorkerFactory.java:67)
Running Gradle task 'assembleDebug'...
        at org.gradle.workers.internal.NoIsolationWorkerFactory$1$1.create(NoIsolationWorkerFactory.java:63)
Running Gradle task 'assembleDebug'...
        at org.gradle.internal.classloader.ClassLoaderUtils.executeInClassloader(ClassLoaderUtils.java:97)
Running Gradle task 'assembleDebug'...
        at org.gradle.workers.internal.NoIsolationWorkerFactory$1.lambda$execute$0(NoIsolationWorkerFactory.java:63)
Running Gradle task 'assembleDebug'...
        at org.gradle.workers.internal.AbstractWorker$1.call(AbstractWorker.java:44)
Running Gradle task 'assembleDebug'...
        at org.gradle.workers.internal.AbstractWorker$1.call(AbstractWorker.java:41)
Running Gradle task 'assembleDebug'...
        at org.gradle.internal.operations.DefaultBuildOperationRunner$CallableBuildOperationWorker.execute(DefaultBuildOperationRunner.java:200)
Running Gradle task 'assembleDebug'...
        at org.gradle.internal.operations.DefaultBuildOperationRunner$CallableBuildOperationWorker.execute(DefaultBuildOperationRunner.java:195)
Running Gradle task 'assembleDebug'...
        at org.gradle.internal.operations.DefaultBuildOperationRunner$3.execute(DefaultBuildOperationRunner.java:75)
Running Gradle task 'assembleDebug'...
        at org.gradle.internal.operations.DefaultBuildOperationRunner$3.execute(DefaultBuildOperationRunner.java:68)
Running Gradle task 'assembleDebug'...
        at org.gradle.internal.operations.DefaultBuildOperationRunner.execute(DefaultBuildOperationRunner.java:153)
Running Gradle task 'assembleDebug'...
        at org.gradle.internal.operations.DefaultBuildOperationRunner.execute(DefaultBuildOperationRunner.java:68)
Running Gradle task 'assembleDebug'...
        at org.gradle.internal.operations.DefaultBuildOperationRunner.call(DefaultBuildOperationRunner.java:62)
Running Gradle task 'assembleDebug'...
        at org.gradle.internal.operations.DefaultBuildOperationExecutor.lambda$call$2(DefaultBuildOperationExecutor.java:76)
Running Gradle task 'assembleDebug'...
        at org.gradle.internal.operations.UnmanagedBuildOperationWrapper.callWithUnmanagedSupport(UnmanagedBuildOperationWrapper.java:54)
Running Gradle task 'assembleDebug'...
        at org.gradle.internal.operations.DefaultBuildOperationExecutor.call(DefaultBuildOperationExecutor.java:76)
Running Gradle task 'assembleDebug'...
        at org.gradle.workers.internal.AbstractWorker.executeWrappedInBuildOperation(AbstractWorker.java:41)
Running Gradle task 'assembleDebug'...
        at org.gradle.workers.internal.NoIsolationWorkerFactory$1.execute(NoIsolationWorkerFactory.java:60)
Running Gradle task 'assembleDebug'...
        at org.gradle.workers.internal.DefaultWorkerExecutor.lambda$submitWork$2(DefaultWorkerExecutor.java:200)
Running Gradle task 'assembleDebug'...
        at java.base/java.util.concurrent.FutureTask.run(FutureTask.java:264)
Running Gradle task 'assembleDebug'...
        at org.gradle.internal.work.DefaultConditionalExecutionQueue$ExecutionRunner.runExecution(DefaultConditionalExecutionQueue.java:215)
Running Gradle task 'assembleDebug'...
        at org.gradle.internal.work.DefaultConditionalExecutionQueue$ExecutionRunner.runBatch(DefaultConditionalExecutionQueue.java:164)
Running Gradle task 'assembleDebug'...
        at org.gradle.internal.work.DefaultConditionalExecutionQueue$ExecutionRunner.run(DefaultConditionalExecutionQueue.java:131)   
Running Gradle task 'assembleDebug'...
        at java.base/java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:515)
Running Gradle task 'assembleDebug'...
        at java.base/java.util.concurrent.FutureTask.run(FutureTask.java:264)
Running Gradle task 'assembleDebug'...
        at org.gradle.internal.concurrent.ExecutorPolicy$CatchAndRecordFailures.onExecute(ExecutorPolicy.java:64)
Running Gradle task 'assembleDebug'...
        at org.gradle.internal.concurrent.ManagedExecutorImpl$1.run(ManagedExecutorImpl.java:48)
Running Gradle task 'assembleDebug'...
        at java.base/java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1128)
Running Gradle task 'assembleDebug'...
        at java.base/java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:628)
Running Gradle task 'assembleDebug'...
        at org.gradle.internal.concurrent.ThreadFactoryImpl$ManagedThreadRunnable.run(ThreadFactoryImpl.java:56)
Running Gradle task 'assembleDebug'...
        at java.base/java.lang.Thread.run(Thread.java:834)
Running Gradle task 'assembleDebug'...
Caused by: com.android.tools.r8.CompilationFailedException: Compilation failed to complete, position: null
Running Gradle task 'assembleDebug'...
        at Version.fakeStackEntry(Version_2.1.62.java:0)
Running Gradle task 'assembleDebug'...
        at com.android.tools.r8.utils.Y.a(SourceFile:78)
Running Gradle task 'assembleDebug'...
        at com.android.tools.r8.D8.run(D8.java:11)
Running Gradle task 'assembleDebug'...
        at com.android.builder.dexing.D8DexArchiveMerger.mergeDexArchives(D8DexArchiveMerger.java:117)
Running Gradle task 'assembleDebug'...
        ... 36 more
Running Gradle task 'assembleDebug'...
Caused by: com.android.tools.r8.utils.b: Cannot fit requested classes in a single dex file (# methods: 73958 > 65536)
Running Gradle task 'assembleDebug'...
        at com.android.tools.r8.utils.T0.error(SourceFile:1)       
Running Gradle task 'assembleDebug'...
        at com.android.tools.r8.utils.T0.a(SourceFile:2)
Running Gradle task 'assembleDebug'...
        at com.android.tools.r8.dex.P.a(SourceFile:740)
Running Gradle task 'assembleDebug'...
        at com.android.tools.r8.dex.P$h.a(SourceFile:7)
Running Gradle task 'assembleDebug'...
        at com.android.tools.r8.dex.b.a(SourceFile:14)
Running Gradle task 'assembleDebug'...
        at com.android.tools.r8.dex.b.b(SourceFile:25)
Running Gradle task 'assembleDebug'...
        at com.android.tools.r8.D8.d(D8.java:133)
Running Gradle task 'assembleDebug'...
        at com.android.tools.r8.D8.b(D8.java:1)
Running Gradle task 'assembleDebug'...
        at com.android.tools.r8.utils.Y.a(SourceFile:36)
Running Gradle task 'assembleDebug'...
        ... 38 more
Running Gradle task 'assembleDebug'...

Running Gradle task 'assembleDebug'...

Running Gradle task 'assembleDebug'...
FAILURE: Build failed with an exception.
Running Gradle task 'assembleDebug'...

Running Gradle task 'assembleDebug'...
* What went wrong:
Running Gradle task 'assembleDebug'...
Execution failed for task ':app:mergeDexDebug'.
Running Gradle task 'assembleDebug'...
> A failure occurred while executing com.android.build.gradle.internal.tasks.Workers$ActionFacade
Running Gradle task 'assembleDebug'...
   > com.android.builder.dexing.DexArchiveMergerException: Error while merging dex archives:
Running Gradle task 'assembleDebug'...
     The number of method references in a .dex file cannot exceed 64K.
Running Gradle task 'assembleDebug'...
     Learn how to resolve this issue at https://developer.android.com/tools/building/multidex.html
Running Gradle task 'assembleDebug'...

Running Gradle task 'assembleDebug'...
* Try:
Running Gradle task 'assembleDebug'...
Run with --stacktrace option to get the stack trace. Run with --info or --debug option to get more log output. Run with --scan to get 
full insights.
Running Gradle task 'assembleDebug'...

Running Gradle task 'assembleDebug'...
* Get more help at https://help.gradle.org
Running Gradle task 'assembleDebug'...

Running Gradle task 'assembleDebug'...
BUILD FAILED in 1m 25s
Running Gradle task 'assembleDebug'...
   86.2s
[!] App requires Multidex support
    Multidex support is required for your android app to build     
    since the number of methods has exceeded 64k. You may pass the 
    --no-multidex flag to skip Flutter's multidex support to use a 
    manual solution.

    Flutter tool can add multidex support. The following file will
    be added by flutter:

        android/app/src/main/java/io/flutter/app/FlutterMultiDexApp        lication.java

Do you want to continue with adding multidex support for Android? [y|n]: y
Multidex enabled. Retrying build.

Running Gradle task 'assembleDebug'...
Building with Flutter multidex support enabled.
Running Gradle task 'assembleDebug'...
    -


### 
C:\NouriSolutions\trunk2022\flutter\test_html_editor>flutter run -d c7d8c7f807133535 
Launching lib\main.dart on SM T330NU in debug mode...
C:\NouriSolutions\trunk2022\flutter\test_html_editor\android\app\src\debug\AndroidManifest.xml 
Error:
        uses-sdk:minSdkVersion 16 cannot be smaller than version 17 declared in library [:flutter_inappwebview] C:\NouriSolutions\trunk2022\flutter\test_html_editor\build\flutter_inappwebview\intermediates\library_manifest\debug\AndroidManifest.xml as the library might be using APIs not available in 16
        Suggestion: use a compatible library with a minSdk of at most 16,
                or increase this project's minSdk version to at least 17,
                or use tools:overrideLibrary="com.pichillilorenzo.flutter_inappwebview" to force usage (may lead to runtime failures)

FAILURE: Build failed with an exception.

* What went wrong:
Execution failed for task ':app:processDebugMainManifest'.
> Manifest merger failed : uses-sdk:minSdkVersion 16 cannot be smaller than version 17 declared in library [:flutter_inappwebview] C:\NouriSolutions\trunk2022\flutter\test_html_editor\build\flutter_inappwebview\intermediates\library_manifest\debug\AndroidManifest.xml as the library might be using APIs not available in 16
        Suggestion: use a compatible library with a minSdk of at most 16,
                or increase this project's minSdk version to at least 17,
                or use tools:overrideLibrary="com.pichillilorenzo.flutter_inappwebview" to force usage (may lead to runtime failures)

* Try:
Run with --stacktrace option to get the stack trace. Run with --info or --debug option to get more log output. Run with --scan to get full insights.

* Get more help at https://help.gradle.org

BUILD FAILED in 5m 40s
Running Gradle task 'assembleDebug'...                            342.5s

┌─ Flutter Fix ─────────────────────────────────────────────────────────────────────────────┐  
│ The plugin flutter_inappwebview requires a higher Android SDK version.                    │  
│ Fix this issue by adding the following to the file                                        │  
│ C:\NouriSolutions\trunk2022\flutter\test_html_editor\android\app\build.gradle:            │  
│ android {                                                                                 │  
│   defaultConfig {                                                                         │  
│     minSdkVersion 17                                                                      │
droid SDKs below 17.             │                                                          │  
│ Alternatively, try to find a version of this plugin that                                  │  
supports these lower versions of │                                                          │  
│ the Android SDK.                                                                          │  
                                 │                         droid SDKs below 17.             │  
└──────────────────────────────────────────────────────────supports these lower versions of │  ─────────────────────────────────┘                                                          │  
Exception: Gradle task assembleDebug failed with exit code ─────────────────────────────────┘  
1                                                          1



## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
