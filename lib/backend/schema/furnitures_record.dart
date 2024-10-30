import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'furnitures_record.g.dart';

abstract class FurnituresRecord
    implements Built<FurnituresRecord, FurnituresRecordBuilder> {
  static Serializer<FurnituresRecord> get serializer =>
      _$furnituresRecordSerializer;

  String? get name;

  String? get image;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(FurnituresRecordBuilder builder) => builder
    ..name = ''
    ..image = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('furnitures');

  static Stream<FurnituresRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<FurnituresRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  FurnituresRecord._();
  factory FurnituresRecord([void Function(FurnituresRecordBuilder) updates]) =
      _$FurnituresRecord;

  static FurnituresRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createFurnituresRecordData({
  String? name,
  String? image,
}) {
  final firestoreData = serializers.toFirestore(
    FurnituresRecord.serializer,
    FurnituresRecord(
      (f) => f
        ..name = name
        ..image = image,
    ),
  );

  return firestoreData;
}
