// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'furnitures_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FurnituresRecord> _$furnituresRecordSerializer =
    new _$FurnituresRecordSerializer();

class _$FurnituresRecordSerializer
    implements StructuredSerializer<FurnituresRecord> {
  @override
  final Iterable<Type> types = const [FurnituresRecord, _$FurnituresRecord];
  @override
  final String wireName = 'FurnituresRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, FurnituresRecord object,
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
    value = object.image;
    if (value != null) {
      result
        ..add('image')
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
  FurnituresRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FurnituresRecordBuilder();

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
        case 'image':
          result.image = serializers.deserialize(value,
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

class _$FurnituresRecord extends FurnituresRecord {
  @override
  final String? name;
  @override
  final String? image;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$FurnituresRecord(
          [void Function(FurnituresRecordBuilder)? updates]) =>
      (new FurnituresRecordBuilder()..update(updates))._build();

  _$FurnituresRecord._({this.name, this.image, this.ffRef}) : super._();

  @override
  FurnituresRecord rebuild(void Function(FurnituresRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FurnituresRecordBuilder toBuilder() =>
      new FurnituresRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FurnituresRecord &&
        name == other.name &&
        image == other.image &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, name.hashCode), image.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FurnituresRecord')
          ..add('name', name)
          ..add('image', image)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class FurnituresRecordBuilder
    implements Builder<FurnituresRecord, FurnituresRecordBuilder> {
  _$FurnituresRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  FurnituresRecordBuilder() {
    FurnituresRecord._initializeBuilder(this);
  }

  FurnituresRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _image = $v.image;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FurnituresRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FurnituresRecord;
  }

  @override
  void update(void Function(FurnituresRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FurnituresRecord build() => _build();

  _$FurnituresRecord _build() {
    final _$result =
        _$v ?? new _$FurnituresRecord._(name: name, image: image, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
