import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'friend_list_record.g.dart';

abstract class FriendListRecord
    implements Built<FriendListRecord, FriendListRecordBuilder> {
  static Serializer<FriendListRecord> get serializer =>
      _$friendListRecordSerializer;

  @nullable
  String get uid;

  @nullable
  BuiltList<String> get name;

  @nullable
  @BuiltValueField(wireName: 'bill_splitted')
  String get billSplitted;

  @nullable
  bool get isSplit;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(FriendListRecordBuilder builder) => builder
    ..uid = ''
    ..name = ListBuilder()
    ..billSplitted = ''
    ..isSplit = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('friendList');

  static Stream<FriendListRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<FriendListRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  FriendListRecord._();
  factory FriendListRecord([void Function(FriendListRecordBuilder) updates]) =
      _$FriendListRecord;

  static FriendListRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createFriendListRecordData({
  String uid,
  String billSplitted,
  bool isSplit,
}) =>
    serializers.toFirestore(
        FriendListRecord.serializer,
        FriendListRecord((f) => f
          ..uid = uid
          ..name = null
          ..billSplitted = billSplitted
          ..isSplit = isSplit));
