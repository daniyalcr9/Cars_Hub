import 'dart:convert'; // For JSON decoding
import 'package:http/http.dart' as http;

class CarApiService {
  final String apiKey = 'YOUR_API_KEY_HERE'; // Replace with your actual API key
  final String baseUrl = 'https://api.api-ninjas.com/v1/cars';

  Future<List<dynamic>> fetchCars(
      {String? make, String? model, int? year}) async {
    // Build the query parameters
    final Map<String, String> queryParams = {};
    if (make != null) queryParams['make'] = make;
    if (model != null) queryParams['model'] = model;
    if (year != null) queryParams['year'] = year.toString();

    // Construct the URL with parameters
    final url = Uri.parse(baseUrl).replace(queryParameters: queryParams);

    try {
      // Send GET request
      final response = await http.get(
        url,
        headers: {
          'X-Api-Key': apiKey, // Authentication header
        },
      );

      if (response.statusCode == 200) {
        // Parse and return the data
        return json.decode(response.body);
      } else {
        print('Failed to fetch cars: ${response.statusCode}');
        return [];
      }
    } catch (e) {
      print('Error occurred: $e');
      return [];
    }
  }
}
