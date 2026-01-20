import 'api_schema.dart';
import 'api_result.dart';

ApiResult validateApiResponse({
  required Map<String, dynamic> response,
  required ApiSchema successSchema,
}) {
  for (final entry in successSchema.required.entries) {
    final key = entry.key;
    final expectedType = entry.value;

    if (!response.containsKey(key)) {
      return const ApiFailure(
        message: 'Invalid API response format',
      );
    }

    if (response[key].runtimeType != expectedType) {
      return const ApiFailure(
        message: 'Invalid API response format',
      );
    }
  }

  return ApiSuccess(response);
}
