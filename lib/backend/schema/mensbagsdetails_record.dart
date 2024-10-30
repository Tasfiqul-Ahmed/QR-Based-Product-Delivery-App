import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'mensbagsdetails_record.g.dart';

abstract class MensbagsdetailsRecord
    implements Built<MensbagsdetailsRecord, MensbagsdetailsRecordBuilder> {
  static Serializer<MensbagsdetailsRecord> get serializer =>
      _$mensbagsdetailsRecordSerializer;

  String? get name;

  String? get description;

  String? get image;

  double? get price;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(MensbagsdetailsRecordBuilder builder) =>
      builder
        ..name = ''
        ..description = ''
        ..image = ''
        ..price = 0.0;

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('mensbagsdetails')
          : FirebaseFirestore.instance.collectionGroup('mensbagsdetails');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('mensbagsdetails').doc();

  static Stream<MensbagsdetailsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MensbagsdetailsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MensbagsdetailsRecord._();
  factory MensbagsdetailsRecord(
          [void Function(MensbagsdetailsRecordBuilder) updates]) =
      _$MensbagsdetailsRecord;

  static MensbagsdetailsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMensbagsdetailsRecordData({
  String? name,
  String? description,
  String? image,
  double? price,
}) {
  final firestoreData = serializers.toFirestore(
    MensbagsdetailsRecord.serializer,
    MensbagsdetailsRecord(
      (m) => m
        ..name = name
        ..description = description
        ..image = image
        ..price = price,
    ),
  );

  return firestoreData;
}
