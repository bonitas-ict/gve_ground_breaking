import 'package:bloc/bloc.dart';
import 'package:gve_opening/src/domain/domain.dart';
import 'package:gve_opening/src/domain/payment/model/pay_history.dart';
import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pay_history_event.dart';
part 'pay_history_state.dart';
part 'pay_history_bloc.freezed.dart';

@injectable
class PayHistoryBloc extends Bloc<PayHistoryEvent, PayHistoryState> {
  final IPaymentFacade  _paymentFacade;
  PayHistoryBloc({required IPaymentFacade paymentFacade}) :_paymentFacade = paymentFacade, super(const PayHistoryState.initial()) {
    on<_LoadHistory>((event, emit) async{
      emit(const PayHistoryState.loadInProgress());
      final data = await _paymentFacade.retrievePaymentLogs();
      emit(data.fold((f) => PayHistoryState.loadFailure(f), (r) {
        final pp = (r.data as List<dynamic>).map((e) => PayHistory.fromJson(e as Map<String,dynamic>)).toList();
        return PayHistoryState.loadSuccess(pp);
      }));
    });
  }
}
