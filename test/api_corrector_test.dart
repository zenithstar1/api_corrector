import 'package:flutter_test/flutter_test.dart';
import 'package:api_corrector/src/api_schema.dart';
import 'package:api_corrector/src/api_validator.dart';
import 'package:api_corrector/src/api_result.dart';

void main() {
  test('succeeds when type matches schema', () {
    final schema = ApiSchema(
      required: {
        'age': String, // 👈 expected field + type from your API
      },
    );

    final response = {
      'age': 'twenty two', // 👈 paste your actual API response here
    };

    final result = validateApiResponse(
      response: response, // 👈 decoded JSON map
      successSchema: schema, // 👈 schema your response must match
    );

    expect(result, isA<ApiSuccess>()); // 👈 success if schema matches
  });
}
