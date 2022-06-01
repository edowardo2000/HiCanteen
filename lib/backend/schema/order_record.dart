import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'order_record.g.dart';

abstract class OrderRecord implements Built<OrderRecord, OrderRecordBuilder> {
  static Serializer<OrderRecord> get serializer => _$orderRecordSerializer;

  @nullable
  String get uid;

  @nullable
  @BuiltValueField(wireName: 'customer_name')
  String get customerName;

  @nullable
  @BuiltValueField(wireName: 'order_time')
  DateTime get orderTime;

  @nullable
  @BuiltValueField(wireName: 'order_status')
  String get orderStatus;

  @nullable
  @BuiltValueField(wireName: 'food_name')
  String get foodName;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(OrderRecordBuilder builder) => builder
    ..uid = ''
    ..customerName = ''
    ..orderStatus = ''
    ..foodName = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('order');

  static Stream<OrderRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<OrderRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  OrderRecord._();
  factory OrderRecord([void Function(OrderRecordBuilder) updates]) =
      _$OrderRecord;

  static OrderRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createOrderRecordData({
  String uid,
  String customerName,
  DateTime orderTime,
  String orderStatus,
  String foodName,
}) =>
    serializers.toFirestore(
        OrderRecord.serializer,
        OrderRecord((o) => o
          ..uid = uid
          ..customerName = customerName
          ..orderTime = orderTime
          ..orderStatus = orderStatus
          ..foodName = foodName));
