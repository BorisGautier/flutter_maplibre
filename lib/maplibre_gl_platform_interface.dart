import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'maplibre_gl_method_channel.dart';

abstract class MaplibreGlPlatform extends PlatformInterface {
  /// Constructs a MaplibreGlPlatform.
  MaplibreGlPlatform() : super(token: _token);

  static final Object _token = Object();

  static MaplibreGlPlatform _instance = MethodChannelMaplibreGl();

  /// The default instance of [MaplibreGlPlatform] to use.
  ///
  /// Defaults to [MethodChannelMaplibreGl].
  static MaplibreGlPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [MaplibreGlPlatform] when
  /// they register themselves.
  static set instance(MaplibreGlPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
