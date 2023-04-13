
import 'maplibre_gl_platform_interface.dart';

class MaplibreGl {
  Future<String?> getPlatformVersion() {
    return MaplibreGlPlatform.instance.getPlatformVersion();
  }
}
