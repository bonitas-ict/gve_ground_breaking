import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:gve_opening/src/domain/domain.dart';
import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'offline_pay_event.dart';
part 'offline_pay_state.dart';
part 'offline_pay_bloc.freezed.dart';

@injectable
class OfflinePayBloc extends Bloc<OfflinePayEvent, OfflinePayState> {
  final IPaymentFacade  _paymentFacade;
  
  OfflinePayBloc({required IPaymentFacade paymentFacade}) : _paymentFacade = paymentFacade, super(OfflinePayState.initial()) {
    on<_SubmitEvidence>((event, emit) async{
      Either<NetworkFailure, BaseResponse>? failureOrSuccess;
      if(!state.isSubmitting && event.evidence!=null){
        emit(state.copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
        ));
        failureOrSuccess = await _paymentFacade.submitOfflinePaymentInfo({"name": event.evidence?['name'], "base64Document": event.evidence?['base64Document'], "plotId": state.plotId, "referenceId": state.referenceId });
        emit(state.copyWith(
          isSubmitting: false,
          authFailureOrSuccessOption:optionOf(failureOrSuccess),
        ));
      }
    });

    on<_SetPlotId>((event, emit){
      emit(state.copyWith(plotId: event.plotId, referenceId: event.referenceId));
    });
  }
}
