import 'package:audioplayers/audioplayers.dart';

AudioPlayer _audioPlayer = AudioPlayer();

void playConvertedVoice(String audioUrl) async {
  await _audioPlayer.play(audioUrl, isLocal: false);
}
