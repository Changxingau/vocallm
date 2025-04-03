import 'package:dio/dio.dart';

Future<String> uploadRecording(String filePath, String model) async {
  var formData = FormData.fromMap({
      "file": await MultipartFile.fromFile(filePath, filename: "recorded.wav"),
      "model": model
  });

  var response = await Dio().post("http://localhost:8080/convert-voice/", data: formData);
  return response.data["output_url"];
}
