```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response body is a JSON array
      final List<dynamic> data = jsonDecode(response.body);
      // Accessing elements that might not exist
      print(data[0]['name']); //Error if data is empty or data[0] lacks 'name'
      print(data[1]['address']); // Error if data only has one element
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```