// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OrderRecord> _$orderRecordSerializer = new _$OrderRecordSerializer();

class _$OrderRecordSerializer implements StructuredSerializer<OrderRecord> {
  @override
  final Iterable<Type> types = const [OrderRecord, _$OrderRecord];
  @override
  final String wireName = 'OrderRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, OrderRecord object,
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
    value = object.customerName;
    if (value != null) {
      result
        ..add('customer_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.orderTime;
    if (value != null) {
      result
        ..add('order_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.orderStatus;
    if (value != null) {
      result
        ..add('order_status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.foodName;
    if (value != null) {
      result
        ..add('food_name')
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
  OrderRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrderRecordBuilder();

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
        case 'customer_name':
          result.customerName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'order_time':
          result.orderTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'order_status':
          result.orderStatus = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'food_name':
          result.foodName = serializers.deserialize(value,
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

class _$OrderRecord extends OrderRecord {
  @override
  final String uid;
  @override
  final String customerName;
  @override
  final DateTime orderTime;
  @override
  final String orderStatus;
  @override
  final String foodName;
  @override
  final DocumentReference<Object> reference;

  factory _$OrderRecord([void Function(OrderRecordBuilder) updates]) =>
      (new OrderRecordBuilder()..update(updates)).build();

  _$OrderRecord._(
      {this.uid,
      this.customerName,
      this.orderTime,
      this.orderStatus,
      this.foodName,
      this.reference})
      : super._();

  @override
  OrderRecord rebuild(void Function(OrderRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderRecordBuilder toBuilder() => new OrderRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderRecord &&
        uid == other.uid &&
        customerName == other.customerName &&
        orderTime == other.orderTime &&
        orderStatus == other.orderStatus &&
        foodName == other.foodName &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, uid.hashCode), customerName.hashCode),
                    orderTime.hashCode),
                orderStatus.hashCode),
            foodName.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OrderRecord')
          ..add('uid', uid)
          ..add('customerName', customerName)
          ..add('orderTime', orderTime)
          ..add('orderStatus', orderStatus)
          ..add('foodName', foodName)
          ..add('reference', reference))
        .toString();
  }
}

class OrderRecordBuilder implements Builder<OrderRecord, OrderRecordBuilder> {
  _$OrderRecord _$v;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  String _customerName;
  String get customerName => _$this._customerName;
  set customerName(String customerName) => _$this._customerName = customerName;

  DateTime _orderTime;
  DateTime get orderTime => _$this._orderTime;
  set orderTime(DateTime orderTime) => _$this._orderTime = orderTime;

  String _orderStatus;
  String get orderStatus => _$this._orderStatus;
  set orderStatus(String orderStatus) => _$this._orderStatus = orderStatus;

  String _foodName;
  String get foodName => _$this._foodName;
  set foodName(String foodName) => _$this._foodName = foodName;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  OrderRecordBuilder() {
    OrderRecord._initializeBuilder(this);
  }

  OrderRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uid = $v.uid;
      _customerName = $v.customerName;
      _orderTime = $v.orderTime;
      _orderStatus = $v.orderStatus;
      _foodName = $v.foodName;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OrderRecord;
  }

  @override
  void update(void Function(OrderRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OrderRecord build() {
    final _$result = _$v ??
        new _$OrderRecord._(
            uid: uid,
            customerName: customerName,
            orderTime: orderTime,
            orderStatus: orderStatus,
            foodName: foodName,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
