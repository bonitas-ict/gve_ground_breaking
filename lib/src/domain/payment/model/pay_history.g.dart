// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pay_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PayHistory _$_$_PayHistoryFromJson(Map<String, dynamic> json) {
  return _$_PayHistory(
    plotId: json['plotId'] as String,
    date: json['date'] as num,
    amount: json['amount'] as String,
    status: json['status'] as String,
  );
}

Map<String, dynamic> _$_$_PayHistoryToJson(_$_PayHistory instance) =>
    <String, dynamic>{
      'plotId': instance.plotId,
      'date': instance.date,
      'amount': instance.amount,
      'status': instance.status,
    };
