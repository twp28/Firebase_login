# Firebase Login with userState Mgmt

Simple and easy to use Firebase Login with Riverpod State Management for detecting the current user State
- Login via email/pw; screens for e.g. buying products
- Different screens for admin (eg. upload products)
- 3 options for Sign In Screens (FlutterfireUI / FlutterfireUI Custom / Own UI)

## Getting Started

- Clone Repository
- run >flutterfire configure to connect to your firebase project


## Fresh Setup - no packages:

- add firebase_core in your pubspec.yaml
- Install Firebase CLI via
  curl -sL https://firebase.tools | bash
- login via >firebase login
- Install CLI via:
  dart pub global activate flutterfire_cli
- run >flutterfire configure
  create a new project or select one
- keep going until "firebase_options.dart" has been generated
- log in into firebase console (web) and activate
  - login via email/pw
  - Firestore (optional) for storing users
- add following packages to the pubspec.yaml
  - firebase_core
  - firebase_auth
  - cloud firestore
  - firebase_storage
  - flutterfire_ui (optional for easy signin forms)
- for iOS -> under ios/podfile uncomment the "platform" line
  - open xcode and open the Xcode Project file inside the ios folder
  - maintain iOS Deployment Target (e.g. 12) in Projects-> Runner and Targets->Runner

