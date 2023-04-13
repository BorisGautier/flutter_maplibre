import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'maplibre_gl_platform_interface.dart';

/// An implementation of [MaplibreGlPlatform] that uses method channels.
class MethodChannelMaplibreGl extends MaplibreGlPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('maplibre_gl');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
