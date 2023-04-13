import 'package:flutter_test/flutter_test.dart';
import 'package:maplibre_gl/maplibre_gl.dart';
import 'package:maplibre_gl/maplibre_gl_platform_interface.dart';
import 'package:maplibre_gl/maplibre_gl_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockMaplibreGlPlatform
    with MockPlatformInterfaceMixin
    implements MaplibreGlPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final MaplibreGlPlatform initialPlatform = MaplibreGlPlatform.instance;

  test('$MethodChannelMaplibreGl is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelMaplibreGl>());
  });

  test('getPlatformVersion', () async {
    MaplibreGl maplibreGlPlugin = MaplibreGl();
    MockMaplibreGlPlatform fakePlatform = MockMaplibreGlPlatform();
    MaplibreGlPlatform.instance = fakePlatform;

    expect(await maplibreGlPlugin.getPlatformVersion(), '42');
  });
}
