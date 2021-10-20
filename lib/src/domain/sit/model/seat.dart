import 'package:freezed_annotation/freezed_annotation.dart';

part 'seat.freezed.dart';
part 'seat.g.dart';

@freezed
class Seat with _$Seat{
  const factory Seat({
    required int? id,
    required int? pin,
    required int? seatNumber,
    required int? tableNumber,
  }) = _Seat;

  factory Seat.fromJson(Map<String, dynamic> json) => _$SeatFromJson(json);
}