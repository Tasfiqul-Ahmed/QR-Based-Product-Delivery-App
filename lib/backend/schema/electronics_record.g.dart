// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'electronics_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ElectronicsRecord> _$electronicsRecordSerializer =
    new _$ElectronicsRecordSerializer();

class _$ElectronicsRecordSerializer
    implements StructuredSerializer<ElectronicsRecord> {
  @override
  final Iterable<Type> types = const [ElectronicsRecord, _$ElectronicsRecord];
  @override
  final String wireName = 'ElectronicsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ElectronicsRecord object,
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
  ElectronicsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ElectronicsRecordBuilder();

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

class _$ElectronicsRecord extends ElectronicsRecord {
  @override
  final String? name;
  @override
  final String? image;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ElectronicsRecord(
          [void Function(ElectronicsRecordBuilder)? updates]) =>
      (new ElectronicsRecordBuilder()..update(updates))._build();

  _$ElectronicsRecord._({this.name, this.image, this.ffRef}) : super._();

  @override
  ElectronicsRecord rebuild(void Function(ElectronicsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ElectronicsRecordBuilder toBuilder() =>
      new ElectronicsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ElectronicsRecord &&
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
    return (newBuiltValueToStringHelper(r'ElectronicsRecord')
          ..add('name', name)
          ..add('image', image)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ElectronicsRecordBuilder
    implements Builder<ElectronicsRecord, ElectronicsRecordBuilder> {
  _$ElectronicsRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ElectronicsRecordBuilder() {
    ElectronicsRecord._initializeBuilder(this);
  }

  ElectronicsRecordBuilder get _$this {
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
  void replace(ElectronicsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ElectronicsRecord;
  }

  @override
  void update(void Function(ElectronicsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ElectronicsRecord build() => _build();

  _$ElectronicsRecord _build() {
    final _$result = _$v ??
        new _$ElectronicsRecord._(name: name, image: image, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
