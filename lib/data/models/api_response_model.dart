class ApiResponseModel {
  final dynamic data;
  final String status;
  final String message;

  ApiResponseModel(
      {required this.data, required this.status, required this.message});

  factory ApiResponseModel.fromJson(Map<String, dynamic> data) =>
      ApiResponseModel(
        data: data,
        message: data['message'] as String,
        status: data['status'] as String,
      );

  Map<String, dynamic> toJson() => {
    status: status,
    data: data,
    message: message,
  };
}

