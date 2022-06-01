import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'food_record.g.dart';

abstract class FoodRecord implements Built<FoodRecord, FoodRecordBuilder> {
  static Serializer<FoodRecord> get serializer => _$foodRecordSerializer;

  @nullable
  String get uid;

  @nullable
  @BuiltValueField(wireName: 'food_name')
  String get foodName;

  @nullable
  @BuiltValueField(wireName: 'food_price')
  String get foodPrice;

  @nullable
  String get photo;

  @nullable
  String get description;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(FoodRecordBuilder builder) => builder
    ..uid = ''
    ..foodName = ''
    ..foodPrice = ''
    ..photo = ''
    ..description = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('food');

  static Stream<FoodRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<FoodRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  FoodRecord._();
  factory FoodRecord([void Function(FoodRecordBuilder) updates]) = _$FoodRecord;

  static FoodRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createFoodRecordData({
  String uid,
  String foodName,
  String foodPrice,
  String photo,
  String description,
}) =>
    serializers.toFirestore(
        FoodRecord.serializer,
        FoodRecord((f) => f
          ..uid = uid
          ..foodName = foodName
          ..foodPrice = foodPrice
          ..photo = photo
          ..description = description));
