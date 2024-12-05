```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);

      if (data.isNotEmpty) {
        if(data[0] is Map && data[0].containsKey('name')){
          print(data[0]['name']);
        }else{
          print("data[0] is not a map or does not contain 'name'");
        }
        if(data.length > 1 && data[1] is Map && data[1].containsKey('address')){
          print(data[1]['address']);
        }else{
          print("data[1] does not exist or is not a map containing 'address'");
        }
      } else {
        print('Data is empty');
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```