import 'dart:async';
import 'dart:math';

Future<String> fetchRandomQuote() async {
  await Future.delayed(Duration(seconds: 2));

  final quotes = [
    "Life is what happens when you're busy making other plans.",
    "In three words I can sum up everything I've learned about life: it goes on.",
    "The only way to do great work is to love what you do.",
  ];
  final randomIndex = Random().nextInt(quotes.length);
  return quotes[randomIndex];
}

Future<void> main() async {
  try {
    final quote = await fetchRandomQuote();
    print("Random Quote: $quote");
  } catch (error) {
    print("Error fetching quote: $error");
  }
}
