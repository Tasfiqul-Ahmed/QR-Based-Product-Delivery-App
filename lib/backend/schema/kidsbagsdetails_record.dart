import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'kidsbagsdetails_record.g.dart';

abstract class KidsbagsdetailsRecord
    implements Built<KidsbagsdetailsRecord, KidsbagsdetailsRecordBuilder> {
  static Serializer<KidsbagsdetailsRecord> get serializer =>
      _$kidsbagsdetailsRecordSerializer;

  String? get name;

  String? get description;

  String? get image;

  double? get price;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(KidsbagsdetailsRecordBuilder builder) =>
      builder
        ..name = ''
        ..description = ''
        ..image = ''
        ..price = 0.0;

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('kidsbagsdetails')
          : FirebaseFirestore.instance.collectionGroup('kidsbagsdetails');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('kidsbagsdetails').doc();

  static Stream<KidsbagsdetailsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<KidsbagsdetailsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  KidsbagsdetailsRecord._();
  factory KidsbagsdetailsRecord(
          [void Function(KidsbagsdetailsRecordBuilder) updates]) =
      _$KidsbagsdetailsRecord;

  static KidsbagsdetailsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createKidsbagsdetailsRecordData({
  String? name,
  String? description,
  String? image,
  double? price,
}) {
  final firestoreData = serializers.toFirestore(
    KidsbagsdetailsRecord.serializer,
    KidsbagsdetailsRecord(
      (k) => k
        ..name = name
        ..description = description
        ..image = image
        ..price = price,
    ),
  );

  return firestoreData;
}
