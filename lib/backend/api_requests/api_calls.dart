import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class GetCategoriesCall {
  static Future<ApiCallResponse> call({
    int count = 4,
    int offset = 0,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getCategories',
      apiUrl: 'https://jservice.io/api/categories',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'count': count,
        'offset': offset,
      },
      returnBody: true,
    );
  }
}

class CategoryCall {
  static Future<ApiCallResponse> call({
    int id,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'category',
      apiUrl: 'https://jservice.io/api/category',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'id': id,
      },
      returnBody: true,
    );
  }
}

class QuestionCall {
  static Future<ApiCallResponse> call({
    int category,
    int value,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'question',
      apiUrl: 'https://api.jsonbin.io/b/628584e8019db46796a52886',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'category': category,
        'value': value,
      },
      returnBody: true,
    );
  }
}

class AllQuestionsCall {
  static Future<ApiCallResponse> call({
    int category,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'allQuestions',
      apiUrl: 'https://api.jsonbin.io/b/628584e8019db46796a52886',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'category': category,
      },
      returnBody: true,
    );
  }
}
