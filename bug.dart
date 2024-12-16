```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Use the response data here
    } else {
      // Handle error response
      throw Exception('Failed to load data');
    }
  } catch (e) {
    // Handle exceptions during network request
    print('Error fetching data: $e');
    // Rethrow the error to be handled at a higher level
    rethrow; //This line is crucial for debugging
  }
}

void main() async {
  try {
    await fetchData();
    print('Data fetched successfully');
  } catch (e) {
    print('An error occurred: $e');
  }
}
```