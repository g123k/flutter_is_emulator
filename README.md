# Flutter Is Emulator plugin

Plugin to detect whether the current device is an emulator or simulator

## Getting Started

First, you just have to import the package in your dart files with:
```dart
import 'package:flutter_is_emulator/flutter_is_emulator.dart';
```

Then you just have to request if the device is an emulator (Android) or a simulator (iOS) with:
```dart
bool isAnEmulator = await FlutterIsEmulator.isDeviceAnEmulatorOrASimulator;
```