import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:web/core/network/network_info.dart';

import 'network_info_test.mocks.dart';

@GenerateMocks([Connectivity])
void main() {
  late NetworkInfoConnectivityAdapter networkInfo;
  late MockConnectivity mockConnectivity;

  setUp(
    () {
      mockConnectivity = MockConnectivity();
      networkInfo = NetworkInfoConnectivityAdapter(mockConnectivity);
    },
  );
  group(
    "isConnected",
    () {
      test(
        "should forward the call to Connectivity.checkConnectivity",
        () async {
          const tHasConnection = true;

          // arrange
          when(mockConnectivity.checkConnectivity())
              .thenAnswer((_) async => ConnectivityResult.wifi);

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
