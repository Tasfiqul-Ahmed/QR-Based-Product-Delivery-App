import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'womensbagsdetails_record.g.dart';

abstract class WomensbagsdetailsRecord
    implements Built<WomensbagsdetailsRecord, WomensbagsdetailsRecordBuilder> {
  static Serializer<WomensbagsdetailsRecord> get serializer =>
      _$womensbagsdetailsRecordSerializer;

  String? get name;

  String? get description;

  String? get image;

  double? get price;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(WomensbagsdetailsRecordBuilder builder) =>
      builder
        ..name = ''
        ..description = ''
        ..image = ''
        ..price = 0.0;

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('womensbagsdetails')
          : FirebaseFirestore.instance.collectionGroup('womensbagsdetails');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('womensbagsdetails').doc();

  static Stream<WomensbagsdetailsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<WomensbagsdetailsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  WomensbagsdetailsRecord._();
  factory WomensbagsdetailsRecord(
          [void Function(WomensbagsdetailsRecordBuilder) updates]) =
      _$WomensbagsdetailsRecord;

  static WomensbagsdetailsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createWomensbagsdetailsRecordData({
  String? name,
  String? description,
  String? image,
  double? price,
}) {
  final firestoreData = serializers.toFirestore(
    WomensbagsdetailsRecord.serializer,
    WomensbagsdetailsRecord(
      (w) => w
        ..name = name
        ..description = description
        ..image = image
        ..price = price,
    ),
  );

  return firestoreData;
}
