import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:http/http.dart' as http;
import 'package:web_front/core/constants/constants.dart';
import 'package:web_front/core/network/network_info.dart';

final httpClientProvider = Provider<http.Client>(
  (ref) => http.Client(),
);

final dioProvider = Provider<Dio>(
  (ref) => Dio(BaseOptions(
    baseUrl: Constants.baseApiUrl,
    connectTimeout: 5000,
    receiveTimeout: 5000,
    responseType: ResponseType.plain,
  )),
);

final connectivityProvider = Provider<Connectivity>(
  (ref) => Connectivity(),
);

final networkInfoProvider = Provider<NetworkInfoImpl>(
  (ref) => NetworkInfoImpl(
    ref.watch(connectivityProvider),
  ),
);
