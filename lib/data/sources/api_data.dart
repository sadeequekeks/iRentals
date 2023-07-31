// import 'dart:convert';
// import 'dart:io';

// import 'package:http/http.dart' as http;

// import '../models/models.dart';

class ApiData {
// Future<Either<ApiResponseModel?, ErrorModel>> getRequest(String url) async {
//     ApiResponseModel? apiResponse;
//     try {
//     Uri uri = Uri.parse(url);
//     http.Response response = await http.get(
//         uri,
//     );
//     if (response.statusCode == 200) {
//         final data = jsonDecode(response.body);

//         Left(
//         apiResponse = ApiResponseModel(
//             status: data['status'],
//             data: data['data'],
//             message: data['message'],
//         ),
//         );
//     } else {
//         final data = jsonDecode(response.body);
//         apiResponse = ApiResponseModel(
//         status: data['status'],
//         data: data['data'],
//         message: data['message'],
//         );
//     }
//     } on SocketException catch (_) {
//     return Right(ErrorModel('Please check your internet connection'));
//     }
//     return Left(apiResponse);
// }

// Future<Either<ApiResponseModel?, ErrorModel>> postRequest(String url, {Object? body}) async {
//     ApiResponseModel? apiResponse;
//     try {
//     Uri uri = Uri.parse(url);
//     http.Response response = await http.post(
//         uri,
//         body: jsonEncode(body),
//     );
//     if (response.statusCode == 200) {
//         final data = jsonDecode(response.body);
//         Left(
//         apiResponse = ApiResponseModel(
//             status: data['status'],
//             data: data['data'],
//             message: data['message'],
//         ),
//         );
//     } else {
//         final data = jsonDecode(response.body);
//         apiResponse = ApiResponseModel(
//         status: data['status'],
//         data: data['data'],
//         message: data['message'],
//         );
//     }
//     } on SocketException catch (_) {
//     return Right(ErrorModel('Please check your internet connection'));
//     }
//     return Left(apiResponse);
// }
}

ApiData api = ApiData();
