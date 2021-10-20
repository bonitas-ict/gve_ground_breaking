part of 'offline_pay_bloc.dart';

@freezed
class OfflinePayEvent with _$OfflinePayEvent {
  const factory OfflinePayEvent.submitEvidence(Map<String, dynamic>? evidence) = _SubmitEvidence;
  const factory OfflinePayEvent.setPlotId(String plotId) = _SetPlotId;
}
