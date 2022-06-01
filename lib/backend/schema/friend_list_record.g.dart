// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'friend_list_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FriendListRecord> _$friendListRecordSerializer =
    new _$FriendListRecordSerializer();

class _$FriendListRecordSerializer
    implements StructuredSerializer<FriendListRecord> {
  @override
  final Iterable<Type> types = const [FriendListRecord, _$FriendListRecord];
  @override
  final String wireName = 'FriendListRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, FriendListRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.billSplitted;
    if (value != null) {
      result
        ..add('bill_splitted')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isSplit;
    if (value != null) {
      result
        ..add('isSplit')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  FriendListRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FriendListRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'bill_splitted':
          result.billSplitted = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'isSplit':
          result.isSplit = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$FriendListRecord extends FriendListRecord {
  @override
  final String uid;
  @override
  final BuiltList<String> name;
  @override
  final String billSplitted;
  @override
  final bool isSplit;
  @override
  final DocumentReference<Object> reference;

  factory _$FriendListRecord(
          [void Function(FriendListRecordBuilder) updates]) =>
      (new FriendListRecordBuilder()..update(updates)).build();

  _$FriendListRecord._(
      {this.uid, this.name, this.billSplitted, this.isSplit, this.reference})
      : super._();

  @override
  FriendListRecord rebuild(void Function(FriendListRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FriendListRecordBuilder toBuilder() =>
      new FriendListRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FriendListRecord &&
        uid == other.uid &&
        name == other.name &&
        billSplitted == other.billSplitted &&
        isSplit == other.isSplit &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, uid.hashCode), name.hashCode),
                billSplitted.hashCode),
            isSplit.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FriendListRecord')
          ..add('uid', uid)
          ..add('name', name)
          ..add('billSplitted', billSplitted)
          ..add('isSplit', isSplit)
          ..add('reference', reference))
        .toString();
  }
}

class FriendListRecordBuilder
    implements Builder<FriendListRecord, FriendListRecordBuilder> {
  _$FriendListRecord _$v;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  ListBuilder<String> _name;
  ListBuilder<String> get name => _$this._name ??= new ListBuilder<String>();
  set name(ListBuilder<String> name) => _$this._name = name;

  String _billSplitted;
  String get billSplitted => _$this._billSplitted;
  set billSplitted(String billSplitted) => _$this._billSplitted = billSplitted;

  bool _isSplit;
  bool get isSplit => _$this._isSplit;
  set isSplit(bool isSplit) => _$this._isSplit = isSplit;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  FriendListRecordBuilder() {
    FriendListRecord._initializeBuilder(this);
  }

  FriendListRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uid = $v.uid;
      _name = $v.name?.toBuilder();
      _billSplitted = $v.billSplitted;
      _isSplit = $v.isSplit;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FriendListRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FriendListRecord;
  }

  @override
  void update(void Function(FriendListRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FriendListRecord build() {
    _$FriendListRecord _$result;
    try {
      _$result = _$v ??
          new _$FriendListRecord._(
              uid: uid,
              name: _name?.build(),
              billSplitted: billSplitted,
              isSplit: isSplit,
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'name';
        _name?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'FriendListRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
