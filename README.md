# Dart: Handling Unexpected JSON Responses

This repository demonstrates a common error in Dart when handling JSON responses from APIs: attempting to access list elements or map entries without checking for their existence. This can lead to runtime exceptions if the response data is not as expected.

The `bug.dart` file contains the erroneous code. The `bugSolution.dart` provides a corrected version that handles potential errors gracefully.

## How to Run

1. Clone the repository.
2. Run the `bug.dart` and `bugSolution.dart` files using a Dart compiler (e.g., `dart run bug.dart`).