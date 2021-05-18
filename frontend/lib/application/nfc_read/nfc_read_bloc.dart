import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'nfc_read_event.dart';
part 'nfc_read_state.dart';
part 'nfc_read_bloc.freezed.dart';

class NfcReadBloc extends Bloc<NfcReadEvent, NfcReadState> {
  NfcReadBloc() : super(_Initial());

  @override
  Stream<NfcReadState> mapEventToState(
    NfcReadEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
