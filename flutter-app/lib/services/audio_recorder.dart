import 'package:flutter_sound/flutter_sound.dart';

FlutterSoundRecorder _recorder = FlutterSoundRecorder();

void startRecording() async {
  await _recorder.openAudioSession();
  await _recorder.startRecorder(toFile: 'recorded.wav');
}

void stopRecording() async {
  await _recorder.stopRecorder();
}
