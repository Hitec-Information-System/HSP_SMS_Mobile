import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:web_front/core/network/network_info.dart';

import 'network_info_test.mocks.dart';

@GenerateMocks([Connectivity])
void main() {
  late NetworkInfo networkInfo;
  late MockConnectivity mockConnectivity;

  setUp(
    () {
      mockConnectivity = MockConnectivity();
      networkInfo = NetworkInfoImpl(mockConnectivity);
    },
  );
  group(
    "isConnected",
    () {
      test(
        'should forward the call to Connectivity.checkConnectivity',
        () async {
          // arrange
          const tHasConnection = true;
          when(mockConnectivity.checkConnectivity())
              .thenAnswer((realInvocation) async => ConnectivityResult.mobile);
          // act
          final result = await networkInfo.isConnected;
          // assert
          verify(mockConnectivity.checkConnectivity());
          expect(result, tHasConnection);
        },
      );
    },
  );
}
