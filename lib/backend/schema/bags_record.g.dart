// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bags_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BagsRecord> _$bagsRecordSerializer = new _$BagsRecordSerializer();

class _$BagsRecordSerializer implements StructuredSerializer<BagsRecord> {
  @override
  final Iterable<Type> types = const [BagsRecord, _$BagsRecord];
  @override
  final String wireName = 'BagsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, BagsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  BagsRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BagsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$BagsRecord extends BagsRecord {
  @override
  final String? type;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$BagsRecord([void Function(BagsRecordBuilder)? updates]) =>
      (new BagsRecordBuilder()..update(updates))._build();

  _$BagsRecord._({this.type, this.ffRef}) : super._();

  @override
  BagsRecord rebuild(void Function(BagsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BagsRecordBuilder toBuilder() => new BagsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BagsRecord && type == other.type && ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, type.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BagsRecord')
          ..add('type', type)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class BagsRecordBuilder implements Builder<BagsRecord, BagsRecordBuilder> {
  _$BagsRecord? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  BagsRecordBuilder() {
    BagsRecord._initializeBuilder(this);
  }

  BagsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BagsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BagsRecord;
  }

  @override
  void update(void Function(BagsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BagsRecord build() => _build();

  _$BagsRecord _build() {
    final _$result = _$v ?? new _$BagsRecord._(type: type, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
