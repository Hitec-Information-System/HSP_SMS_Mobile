import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:http/http.dart' as http;
import 'package:web_front/core/network/network_info.dart';

final httpClientProvider = Provider<http.Client>(
  (ref) => http.Client(),
);

final connectivityProvider = Provider<Connectivity>(
  (ref) => Connectivity(),
);

final networkInfoProvider = Provider<NetworkInfoImpl>(
  (ref) => NetworkInfoImpl(
    ref.watch(connectivityProvider),
  ),
);
