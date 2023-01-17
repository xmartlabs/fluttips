# Xmartlabs' Flutter template

## Arch Overview 

The project is divided into two main folders:
- The UI contains all app screens.
- The Core contains the models and the data layer.

### UI section

[Flutter Bloc][bloc] is used for state management, specifically, we use Cubit to manage the screen state.
Each app section is added in a project folder which contains three components, the Screen (a `StatelessWidget`, the UI), the Cubit and the state.

The `MainScreen` is the Widget containing all screens. It defines the `MaterialApp` and provides the app router.
The router has two subgraphs, the `UnauthenticatedRouter` used for unauthenticated users and the `AuthenticatedRouter` used for authenticated users.

The [app router][app_router] is provided by [auto_route][auto_route], and contains the previous sections with some nested screens.

The [theme folder][theme] contains the theme definitions, for example colors, styles and dimensions. 
Another key plugin related to the UI is [flutter_screenutil][flutter_screenutil], used for adapting screen and font size.

### Core section

The models are defined in the [models folder][models]. If you need to use different models for database or networking, you can create them in `db` and `service` folders respectively.

The repository pattern is used to manage the data layer.
A [repository][repository_folder] uses different [data sources][data_source_folder] (for example a local cache or a REST API).
These components are injected in the Cubits using [get_it][get_it].

## Project Setup

## Environment setup
The environment variables are defined in the `default.env` file located in `/environments/` folder.
You can define different environments for different environments, for example, you can have a `dev.env` for development and a `prod.env` for production.
If you need to add a privete environment variable, you can create a `${env}.private.env` file in the environments folder and it will be ignored by git.

## Firebase Setup
To run this project, you need to config the Firebase project. 
You can do it by executing the following command:

```sh
./scripts/setup_firebase.sh path_to_config_folder
```

The config folder should contain the `google-services.json`, `GoogleService-Info-prod.plist` and `GoogleService-Info-dev.plist` files.


[flavorizr]: https://pub.dev/packages/flutter_flavorizr
[flutter_launcher_icons]: https://pub.dev/packages/flutter_launcher_icons
[flutter_native_splash]: https://pub.dev/packages/flutter_native_splash
[pubspec]: ./pubspec.yaml
[app_router]: https://github.com/xmartlabs/flutter-template/blob/main/lib/ui/app_router.dart
[bloc]: https://bloclibrary.dev
[auto_route]: https://pub.dev/packages/auto_route
[theme]: https://github.com/xmartlabs/flutter-template/tree/main/lib/ui/theme
[flutter_screenutil]: https://pub.dev/packages/flutter_screenutil
[models]: https://github.com/xmartlabs/flutter-template/tree/main/lib/core/model
[repository_folder]: https://github.com/xmartlabs/flutter-template/tree/main/lib/core/repository
[data_source_folder]: https://github.com/xmartlabs/flutter-template/tree/main/lib/core/source
[get_it]: https://pub.dev/packages/get_it
