import 'package:bloc/bloc.dart';
import 'package:gve_opening/src/domain/domain.dart';
import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'online_pay_event.dart';
part 'online_pay_state.dart';
part 'online_pay_bloc.freezed.dart';

@injectable
class OnlinePayBloc extends Bloc<OnlinePayEvent, OnlinePayState> {
  final IPaymentFacade  _paymentFacade;
  OnlinePayBloc({required IPaymentFacade paymentFacade}) : _paymentFacade = paymentFacade, super(const OnlinePayState.initial()) {
    on<_VerifyPayment>((event, emit) async{
      emit(const OnlinePayState.loadInProgress());
      final data = await _paymentFacade.verifyPayment(event.referenceId);
      emit(data.fold((f) => OnlinePayState.loadFailure(f), (r) {
        return OnlinePayState.loadSuccess(r);
      }));
    });
  }
}
