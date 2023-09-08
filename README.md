# first_zuri_task

First Zuri Mobile Intern Task.

## Getting Started

This project is a starting point for a Flutter application.
- Download the zip file of the source from the repo or you can clone the repo as well,
- Extract the downloaded zipped file and open it in your Android studio IDE or VS code,
- Go to the file named pubspec.yaml and click Pub get to get all the dependencies used or you can run the following command in your terminal "flutter pub get",
- Navigate to this folder "android/app/build.gradle" and confirm the following settings are correct

  ```android {
    //...

    defaultConfig {
        applicationId "com.example.webview_in_flutter"
        minSdkVersion 20                           //Check this line make sure its set to 20
        targetSdkVersion flutter.targetSdkVersion
        versionCode flutterVersionCode.toInteger()
        versionName flutterVersionName
    }```


- You can preview the app here https://appetize.io/app/rr7fshkt6uw52ikewyn3z4r3w4. Ensure to select andriod 12.0 to test the app

## For Better Understanding of Flutter 
Here are a few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
