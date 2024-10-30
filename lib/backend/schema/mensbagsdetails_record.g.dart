// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mensbagsdetails_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MensbagsdetailsRecord> _$mensbagsdetailsRecordSerializer =
    new _$MensbagsdetailsRecordSerializer();

class _$MensbagsdetailsRecordSerializer
    implements StructuredSerializer<MensbagsdetailsRecord> {
  @override
  final Iterable<Type> types = const [
    MensbagsdetailsRecord,
    _$MensbagsdetailsRecord
  ];
  @override
  final String wireName = 'MensbagsdetailsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, MensbagsdetailsRecord object,
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
  MensbagsdetailsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MensbagsdetailsRecordBuilder();

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

class _$MensbagsdetailsRecord extends MensbagsdetailsRecord {
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

  factory _$MensbagsdetailsRecord(
          [void Function(MensbagsdetailsRecordBuilder)? updates]) =>
      (new MensbagsdetailsRecordBuilder()..update(updates))._build();

  _$MensbagsdetailsRecord._(
      {this.name, this.description, this.image, this.price, this.ffRef})
      : super._();

  @override
  MensbagsdetailsRecord rebuild(
          void Function(MensbagsdetailsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MensbagsdetailsRecordBuilder toBuilder() =>
      new MensbagsdetailsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MensbagsdetailsRecord &&
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
    return (newBuiltValueToStringHelper(r'MensbagsdetailsRecord')
          ..add('name', name)
          ..add('description', description)
          ..add('image', image)
          ..add('price', price)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MensbagsdetailsRecordBuilder
    implements Builder<MensbagsdetailsRecord, MensbagsdetailsRecordBuilder> {
  _$MensbagsdetailsRecord? _$v;

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

  MensbagsdetailsRecordBuilder() {
    MensbagsdetailsRecord._initializeBuilder(this);
  }

  MensbagsdetailsRecordBuilder get _$this {
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
  void replace(MensbagsdetailsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MensbagsdetailsRecord;
  }

  @override
  void update(void Function(MensbagsdetailsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MensbagsdetailsRecord build() => _build();

  _$MensbagsdetailsRecord _build() {
    final _$result = _$v ??
        new _$MensbagsdetailsRecord._(
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
