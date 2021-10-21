import 'package:freezed_annotation/freezed_annotation.dart';

part 'pay_history.freezed.dart';
part 'pay_history.g.dart';

@freezed
class PayHistory with _$PayHistory{
  const factory PayHistory({
    required String plotId,
    required String date,
    required String amount,
    required bool stauts,
  }) = _PayHistory;

  factory PayHistory.fromJson(Map<String, dynamic> json) => _$PayHistoryFromJson(json);
}