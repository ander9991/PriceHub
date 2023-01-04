import 'dart:convert';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class SearchCall {
  static Future<ApiCallResponse> call({
    String? search = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Search',
      apiUrl: 'https://amazon24.p.rapidapi.com/api/product',
      callType: ApiCallType.GET,
      headers: {
        'X-RapidAPI-Key': '***********************',
        'X-RapidAPI-Host': 'amazon24.p.rapidapi.com',
      },
      params: {
        'keyword': search,
        'categoryID': "aps",
        'country': "US",
      },
      returnBody: true,
      cache: false,
    );
  }

  static dynamic results(dynamic response) => getJsonField(
        response,
        r'''$..docs''',
        true,
      );
  static dynamic image(dynamic response) => getJsonField(
        response,
        r'''$.docs[:].product_main_image_url''',
        true,
      );
  static dynamic name(dynamic response) => getJsonField(
        response,
        r'''$.docs[:].product_title''',
        true,
      );
  static dynamic price(dynamic response) => getJsonField(
        response,
        r'''$.docs[:].app_sale_price''',
        true,
      );
  static dynamic url(dynamic response) => getJsonField(
        response,
        r'''$.docs[:].product_detail_url''',
        true,
      );
  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.docs[:].product_id''',
        true,
      );
}

class WalmartCall {
  static Future<ApiCallResponse> call({
    String? walmartSearch = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Walmart',
      apiUrl: 'https://walmart.p.rapidapi.com/products/v2/list',
      callType: ApiCallType.GET,
      headers: {
        'X-RapidAPI-Key': 'f3d6f7c398msh331b7d869a0f500p1ab56bjsn4427be166bb5',
        'X-RapidAPI-Host': 'walmart.p.rapidapi.com',
      },
      params: {
        'cat_id': 0,
        'sort': "best_seller",
        'query': walmartSearch,
      },
      returnBody: true,
      cache: false,
    );
  }

  static dynamic url(dynamic response) => getJsonField(
        response,
        r'''$.data.search.searchResult.itemStacks[:].items[:].canonicalUrl''',
      );
  static dynamic price(dynamic response) => getJsonField(
        response,
        r'''$.data.search.searchResult.itemStacks[:].items[:].priceInfo.subscriptionPrice.priceString''',
      );
  static dynamic price2(dynamic response) => getJsonField(
        response,
        r'''$..items[3]..currentPrice.priceString''',
      );
}

class TodaysDealsCall {
  static Future<ApiCallResponse> call({
    String? todaysResults = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'TodaysDeals',
      apiUrl: 'https://amazon24.p.rapidapi.com/api/todaydeals',
      callType: ApiCallType.GET,
      headers: {
        'X-RapidAPI-Key': 'f3d6f7c398msh331b7d869a0f500p1ab56bjsn4427be166bb5',
        'X-RapidAPI-Host': 'amazon24.p.rapidapi.com',
      },
      params: {},
      returnBody: true,
      cache: false,
    );
  }

  static dynamic dealImage(dynamic response) => getJsonField(
        response,
        r'''$.deal_docs[:].deal_main_image_url''',
        true,
      );
  static dynamic dealTitle(dynamic response) => getJsonField(
        response,
        r'''$.deal_docs[:].deal_title''',
        true,
      );
  static dynamic dealPriceMin(dynamic response) => getJsonField(
        response,
        r'''$.deal_docs[:].app_sale_range.min''',
        true,
      );
  static dynamic dealPriceMax(dynamic response) => getJsonField(
        response,
        r'''$.deal_docs[:].app_sale_range.max''',
        true,
      );
  static dynamic productTitle(dynamic response) => getJsonField(
        response,
        r'''$.products_docs[:].product_title''',
        true,
      );
  static dynamic productImage(dynamic response) => getJsonField(
        response,
        r'''$.products_docs[:].product_main_image_url''',
        true,
      );
  static dynamic productSaleRange(dynamic response) => getJsonField(
        response,
        r'''$.products_docs[:].app_sale_range''',
        true,
      );
  static dynamic todaysdealsResults(dynamic response) => getJsonField(
        response,
        r'''$..deal_docs''',
        true,
      );
  static dynamic title(dynamic response) => getJsonField(
        response,
        r'''$..deal_title''',
        true,
      );
  static dynamic dealURL(dynamic response) => getJsonField(
        response,
        r'''$.deal_docs[:].deal_details_url''',
        true,
      );
}

class EBayCall {
  static Future<ApiCallResponse> call({
    String? search = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'eBay',
      apiUrl: 'https://api.ebay.com/buy/browse/v1/item_summary/search?',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'X-EBAY-C-MARKETPLACE-ID': 'EBAY_US',
        'X-EBAY-C-ENDUSERCTX':
            'affiliateCampaignId=<ePNCampaignId>,affiliateReferenceId=<referenceId>',
        'Authorization':
            'Bearer v^1.1#i^1#r^0#f^0#p^3#I^3#t^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',
      },
      params: {
        'q': search,
      },
      returnBody: true,
      cache: false,
    );
  }

  static dynamic price(dynamic response) => getJsonField(
        response,
        r'''$.itemSummaries[:].price.value''',
        true,
      );
  static dynamic image(dynamic response) => getJsonField(
        response,
        r'''$.itemSummaries[:].image.imageUrl''',
        true,
      );
  static dynamic title(dynamic response) => getJsonField(
        response,
        r'''$.itemSummaries[:].title''',
        true,
      );
  static dynamic url(dynamic response) => getJsonField(
        response,
        r'''$.itemSummaries[:].itemAffiliateWebUrl''',
        true,
      );
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
