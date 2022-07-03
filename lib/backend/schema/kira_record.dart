import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'kira_record.g.dart';

abstract class KiraRecord implements Built<KiraRecord, KiraRecordBuilder> {
  static Serializer<KiraRecord> get serializer => _$kiraRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'like_toggle')
  bool get likeToggle;

  @nullable
  @BuiltValueField(wireName: 'comment_toggle')
  bool get commentToggle;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(KiraRecordBuilder builder) => builder
    ..likeToggle = false
    ..commentToggle = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('kira');

  static Stream<KiraRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<KiraRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  KiraRecord._();
  factory KiraRecord([void Function(KiraRecordBuilder) updates]) = _$KiraRecord;

  static KiraRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createKiraRecordData({
  bool likeToggle,
  bool commentToggle,
}) =>
    serializers.toFirestore(
        KiraRecord.serializer,
        KiraRecord((k) => k
          ..likeToggle = likeToggle
          ..commentToggle = commentToggle));
