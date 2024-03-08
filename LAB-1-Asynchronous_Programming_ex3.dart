import 'dart:async';

Future<List<String>> fetchDataFromDatabase() async {
  await Future.delayed(Duration(seconds: 2));

  return ['Feneye', 'Teme', 'Gene', 'Kiyu'];
}

Future<void> main() async {
  try {
    final dataList = await fetchDataFromDatabase();
    print("Data loaded successfully:");
    for (var item in dataList) {
      print(item);
    }
  } catch (error) {
    print("Error loading data: $error");
  }
}
