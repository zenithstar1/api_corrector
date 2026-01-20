abstract class ApiResult {
  const ApiResult();
}

class ApiSuccess extends ApiResult {
  final Map<String, dynamic> data;

  const ApiSuccess(this.data);
}

class ApiFailure extends ApiResult {
  final String message;

  const ApiFailure({required this.message});
}
