// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kira_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<KiraRecord> _$kiraRecordSerializer = new _$KiraRecordSerializer();

class _$KiraRecordSerializer implements StructuredSerializer<KiraRecord> {
  @override
  final Iterable<Type> types = const [KiraRecord, _$KiraRecord];
  @override
  final String wireName = 'KiraRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, KiraRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.likeToggle;
    if (value != null) {
      result
        ..add('like_toggle')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.commentToggle;
    if (value != null) {
      result
        ..add('comment_toggle')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  KiraRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new KiraRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'like_toggle':
          result.likeToggle = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'comment_toggle':
          result.commentToggle = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$KiraRecord extends KiraRecord {
  @override
  final bool likeToggle;
  @override
  final bool commentToggle;
  @override
  final DocumentReference<Object> reference;

  factory _$KiraRecord([void Function(KiraRecordBuilder) updates]) =>
      (new KiraRecordBuilder()..update(updates)).build();

  _$KiraRecord._({this.likeToggle, this.commentToggle, this.reference})
      : super._();

  @override
  KiraRecord rebuild(void Function(KiraRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  KiraRecordBuilder toBuilder() => new KiraRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is KiraRecord &&
        likeToggle == other.likeToggle &&
        commentToggle == other.commentToggle &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, likeToggle.hashCode), commentToggle.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('KiraRecord')
          ..add('likeToggle', likeToggle)
          ..add('commentToggle', commentToggle)
          ..add('reference', reference))
        .toString();
  }
}

class KiraRecordBuilder implements Builder<KiraRecord, KiraRecordBuilder> {
  _$KiraRecord _$v;

  bool _likeToggle;
  bool get likeToggle => _$this._likeToggle;
  set likeToggle(bool likeToggle) => _$this._likeToggle = likeToggle;

  bool _commentToggle;
  bool get commentToggle => _$this._commentToggle;
  set commentToggle(bool commentToggle) =>
      _$this._commentToggle = commentToggle;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  KiraRecordBuilder() {
    KiraRecord._initializeBuilder(this);
  }

  KiraRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _likeToggle = $v.likeToggle;
      _commentToggle = $v.commentToggle;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(KiraRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$KiraRecord;
  }

  @override
  void update(void Function(KiraRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$KiraRecord build() {
    final _$result = _$v ??
        new _$KiraRecord._(
            likeToggle: likeToggle,
            commentToggle: commentToggle,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
