import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'canteen_record.g.dart';

abstract class CanteenRecord
    implements Built<CanteenRecord, CanteenRecordBuilder> {
  static Serializer<CanteenRecord> get serializer => _$canteenRecordSerializer;

  @nullable
  String get uid;

  @nullable
  String get rating;

  @nullable
  String get review;

  @nullable
  @BuiltValueField(wireName: 'cant_location')
  String get cantLocation;

  @nullable
  @BuiltValueField(wireName: 'cant_name')
  String get cantName;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(CanteenRecordBuilder builder) => builder
    ..uid = ''
    ..rating = ''
    ..review = ''
    ..cantLocation = ''
    ..cantName = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('canteen');

  static Stream<CanteenRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<CanteenRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  CanteenRecord._();
  factory CanteenRecord([void Function(CanteenRecordBuilder) updates]) =
      _$CanteenRecord;

  static CanteenRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createCanteenRecordData({
  String uid,
  String rating,
  String review,
  String cantLocation,
  String cantName,
}) =>
    serializers.toFirestore(
        CanteenRecord.serializer,
        CanteenRecord((c) => c
          ..uid = uid
          ..rating = rating
          ..review = review
          ..cantLocation = cantLocation
          ..cantName = cantName));
