import 'package:bloc/bloc.dart';
import 'package:gve_opening/src/domain/domain.dart';
import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_init_event.dart';
part 'payment_init_state.dart';
part 'payment_init_bloc.freezed.dart';

@injectable
class PaymentInitBloc extends Bloc<PaymentInitEvent, PaymentInitState> {
  final IPaymentFacade  _paymentFacade;
  PaymentInitBloc({required IPaymentFacade paymentFacade}) : _paymentFacade = paymentFacade, super(const PaymentInitState.initial()) {
    on<_InitPayment>((event, emit) async{
      emit(const PaymentInitState.loadInProgress());
      final data = await _paymentFacade.initializeLandPayment(event.plotId);
      emit(data.fold((f) => PaymentInitState.loadFailure(f), (r) {
        return PaymentInitState.loadSuccess(r);
      }));
    });
  }
}
