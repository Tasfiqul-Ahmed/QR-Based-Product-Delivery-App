import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'bags_record.g.dart';

abstract class BagsRecord implements Built<BagsRecord, BagsRecordBuilder> {
  static Serializer<BagsRecord> get serializer => _$bagsRecordSerializer;

  String? get type;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(BagsRecordBuilder builder) =>
      builder..type = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('bags');

  static Stream<BagsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<BagsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  BagsRecord._();
  factory BagsRecord([void Function(BagsRecordBuilder) updates]) = _$BagsRecord;

  static BagsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createBagsRecordData({
  String? type,
}) {
  final firestoreData = serializers.toFirestore(
    BagsRecord.serializer,
    BagsRecord(
      (b) => b..type = type,
    ),
  );

  return firestoreData;
}
