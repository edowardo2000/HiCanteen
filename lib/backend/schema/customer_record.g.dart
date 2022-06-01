// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CustomerRecord> _$customerRecordSerializer =
    new _$CustomerRecordSerializer();

class _$CustomerRecordSerializer
    implements StructuredSerializer<CustomerRecord> {
  @override
  final Iterable<Type> types = const [CustomerRecord, _$CustomerRecord];
  @override
  final String wireName = 'CustomerRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, CustomerRecord object,
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
    value = object.customerLocation;
    if (value != null) {
      result
        ..add('customer_location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.customerBalance;
    if (value != null) {
      result
        ..add('customer_balance')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.custUniv;
    if (value != null) {
      result
        ..add('cust_univ')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  CustomerRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CustomerRecordBuilder();

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
        case 'customer_location':
          result.customerLocation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'customer_balance':
          result.customerBalance = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cust_univ':
          result.custUniv = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$CustomerRecord extends CustomerRecord {
  @override
  final String uid;
  @override
  final String customerLocation;
  @override
  final String customerBalance;
  @override
  final String custUniv;
  @override
  final DocumentReference<Object> reference;

  factory _$CustomerRecord([void Function(CustomerRecordBuilder) updates]) =>
      (new CustomerRecordBuilder()..update(updates)).build();

  _$CustomerRecord._(
      {this.uid,
      this.customerLocation,
      this.customerBalance,
      this.custUniv,
      this.reference})
      : super._();

  @override
  CustomerRecord rebuild(void Function(CustomerRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomerRecordBuilder toBuilder() =>
      new CustomerRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomerRecord &&
        uid == other.uid &&
        customerLocation == other.customerLocation &&
        customerBalance == other.customerBalance &&
        custUniv == other.custUniv &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, uid.hashCode), customerLocation.hashCode),
                customerBalance.hashCode),
            custUniv.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CustomerRecord')
          ..add('uid', uid)
          ..add('customerLocation', customerLocation)
          ..add('customerBalance', customerBalance)
          ..add('custUniv', custUniv)
          ..add('reference', reference))
        .toString();
  }
}

class CustomerRecordBuilder
    implements Builder<CustomerRecord, CustomerRecordBuilder> {
  _$CustomerRecord _$v;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  String _customerLocation;
  String get customerLocation => _$this._customerLocation;
  set customerLocation(String customerLocation) =>
      _$this._customerLocation = customerLocation;

  String _customerBalance;
  String get customerBalance => _$this._customerBalance;
  set customerBalance(String customerBalance) =>
      _$this._customerBalance = customerBalance;

  String _custUniv;
  String get custUniv => _$this._custUniv;
  set custUniv(String custUniv) => _$this._custUniv = custUniv;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  CustomerRecordBuilder() {
    CustomerRecord._initializeBuilder(this);
  }

  CustomerRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uid = $v.uid;
      _customerLocation = $v.customerLocation;
      _customerBalance = $v.customerBalance;
      _custUniv = $v.custUniv;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomerRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CustomerRecord;
  }

  @override
  void update(void Function(CustomerRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CustomerRecord build() {
    final _$result = _$v ??
        new _$CustomerRecord._(
            uid: uid,
            customerLocation: customerLocation,
            customerBalance: customerBalance,
            custUniv: custUniv,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
