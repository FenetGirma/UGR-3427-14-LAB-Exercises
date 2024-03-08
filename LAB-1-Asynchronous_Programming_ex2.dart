import 'dart:io';
import 'package:http/http.dart' as http;

Future<void> downloadFile(String url, String savePath) async {
  try {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final file = File(savePath);
      await file.writeAsBytes(response.bodyBytes);
      print('File downloaded successfully! Saved at: $savePath');
    } else {
      print('Error downloading file. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}

void main() async {
  final fileUrl =
      'https://example.com/somefile.txt'; // Replace with your file URL
  final localFilePath = 'downloaded_file.txt'; // Specify the local file path

  await downloadFile(fileUrl, localFilePath);
}
