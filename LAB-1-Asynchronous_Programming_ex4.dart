import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchWeatherData() async {
  final apiKey = 'YOUR_API_KEY';
  final city = 'London';

  final url = Uri.parse(
      'https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey');

  try {
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final temperature = data['main']['temp'];
      final description = data['weather'][0]['description'];

      print(
          'Current temperature in $city: ${temperature.toStringAsFixed(1)}°C');
      print('Weather conditions: $description');
    } else {
      print('Error fetching weather data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}

void main() {
  fetchWeatherData();
}
