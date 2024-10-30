// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'womensbagsdetails_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WomensbagsdetailsRecord> _$womensbagsdetailsRecordSerializer =
    new _$WomensbagsdetailsRecordSerializer();

class _$WomensbagsdetailsRecordSerializer
    implements StructuredSerializer<WomensbagsdetailsRecord> {
  @override
  final Iterable<Type> types = const [
    WomensbagsdetailsRecord,
    _$WomensbagsdetailsRecord
  ];
  @override
  final String wireName = 'WomensbagsdetailsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, WomensbagsdetailsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
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
  WomensbagsdetailsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WomensbagsdetailsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
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

class _$WomensbagsdetailsRecord extends WomensbagsdetailsRecord {
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? image;
  @override
  final double? price;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$WomensbagsdetailsRecord(
          [void Function(WomensbagsdetailsRecordBuilder)? updates]) =>
      (new WomensbagsdetailsRecordBuilder()..update(updates))._build();

  _$WomensbagsdetailsRecord._(
      {this.name, this.description, this.image, this.price, this.ffRef})
      : super._();

  @override
  WomensbagsdetailsRecord rebuild(
          void Function(WomensbagsdetailsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WomensbagsdetailsRecordBuilder toBuilder() =>
      new WomensbagsdetailsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WomensbagsdetailsRecord &&
        name == other.name &&
        description == other.description &&
        image == other.image &&
        price == other.price &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, name.hashCode), description.hashCode),
                image.hashCode),
            price.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WomensbagsdetailsRecord')
          ..add('name', name)
          ..add('description', description)
          ..add('image', image)
          ..add('price', price)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class WomensbagsdetailsRecordBuilder
    implements
        Builder<WomensbagsdetailsRecord, WomensbagsdetailsRecordBuilder> {
  _$WomensbagsdetailsRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  WomensbagsdetailsRecordBuilder() {
    WomensbagsdetailsRecord._initializeBuilder(this);
  }

  WomensbagsdetailsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _image = $v.image;
      _price = $v.price;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WomensbagsdetailsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WomensbagsdetailsRecord;
  }

  @override
  void update(void Function(WomensbagsdetailsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WomensbagsdetailsRecord build() => _build();

  _$WomensbagsdetailsRecord _build() {
    final _$result = _$v ??
        new _$WomensbagsdetailsRecord._(
            name: name,
            description: description,
            image: image,
            price: price,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
