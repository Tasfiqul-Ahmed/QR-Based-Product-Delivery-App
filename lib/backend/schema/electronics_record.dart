import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'electronics_record.g.dart';

abstract class ElectronicsRecord
    implements Built<ElectronicsRecord, ElectronicsRecordBuilder> {
  static Serializer<ElectronicsRecord> get serializer =>
      _$electronicsRecordSerializer;

  String? get name;

  String? get image;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ElectronicsRecordBuilder builder) => builder
    ..name = ''
    ..image = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('electronics');

  static Stream<ElectronicsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ElectronicsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ElectronicsRecord._();
  factory ElectronicsRecord([void Function(ElectronicsRecordBuilder) updates]) =
      _$ElectronicsRecord;

  static ElectronicsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createElectronicsRecordData({
  String? name,
  String? image,
}) {
  final firestoreData = serializers.toFirestore(
    ElectronicsRecord.serializer,
    ElectronicsRecord(
      (e) => e
        ..name = name
        ..image = image,
    ),
  );

  return firestoreData;
}
