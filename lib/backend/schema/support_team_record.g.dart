// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'support_team_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SupportTeamRecord> _$supportTeamRecordSerializer =
    new _$SupportTeamRecordSerializer();

class _$SupportTeamRecordSerializer
    implements StructuredSerializer<SupportTeamRecord> {
  @override
  final Iterable<Type> types = const [SupportTeamRecord, _$SupportTeamRecord];
  @override
  final String wireName = 'SupportTeamRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, SupportTeamRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.fullName;
    if (value != null) {
      result
        ..add('fullName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.emailAddress;
    if (value != null) {
      result
        ..add('emailAddress')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.subject;
    if (value != null) {
      result
        ..add('Subject')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('Description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.formType;
    if (value != null) {
      result
        ..add('formType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dateAndTime;
    if (value != null) {
      result
        ..add('dateAndTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  SupportTeamRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SupportTeamRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'fullName':
          result.fullName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'emailAddress':
          result.emailAddress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Subject':
          result.subject = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'formType':
          result.formType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'dateAndTime':
          result.dateAndTime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$SupportTeamRecord extends SupportTeamRecord {
  @override
  final String fullName;
  @override
  final String emailAddress;
  @override
  final String subject;
  @override
  final String description;
  @override
  final String formType;
  @override
  final String dateAndTime;
  @override
  final DocumentReference<Object> reference;

  factory _$SupportTeamRecord(
          [void Function(SupportTeamRecordBuilder) updates]) =>
      (new SupportTeamRecordBuilder()..update(updates)).build();

  _$SupportTeamRecord._(
      {this.fullName,
      this.emailAddress,
      this.subject,
      this.description,
      this.formType,
      this.dateAndTime,
      this.reference})
      : super._();

  @override
  SupportTeamRecord rebuild(void Function(SupportTeamRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SupportTeamRecordBuilder toBuilder() =>
      new SupportTeamRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SupportTeamRecord &&
        fullName == other.fullName &&
        emailAddress == other.emailAddress &&
        subject == other.subject &&
        description == other.description &&
        formType == other.formType &&
        dateAndTime == other.dateAndTime &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, fullName.hashCode), emailAddress.hashCode),
                        subject.hashCode),
                    description.hashCode),
                formType.hashCode),
            dateAndTime.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SupportTeamRecord')
          ..add('fullName', fullName)
          ..add('emailAddress', emailAddress)
          ..add('subject', subject)
          ..add('description', description)
          ..add('formType', formType)
          ..add('dateAndTime', dateAndTime)
          ..add('reference', reference))
        .toString();
  }
}

class SupportTeamRecordBuilder
    implements Builder<SupportTeamRecord, SupportTeamRecordBuilder> {
  _$SupportTeamRecord _$v;

  String _fullName;
  String get fullName => _$this._fullName;
  set fullName(String fullName) => _$this._fullName = fullName;

  String _emailAddress;
  String get emailAddress => _$this._emailAddress;
  set emailAddress(String emailAddress) => _$this._emailAddress = emailAddress;

  String _subject;
  String get subject => _$this._subject;
  set subject(String subject) => _$this._subject = subject;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _formType;
  String get formType => _$this._formType;
  set formType(String formType) => _$this._formType = formType;

  String _dateAndTime;
  String get dateAndTime => _$this._dateAndTime;
  set dateAndTime(String dateAndTime) => _$this._dateAndTime = dateAndTime;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  SupportTeamRecordBuilder() {
    SupportTeamRecord._initializeBuilder(this);
  }

  SupportTeamRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fullName = $v.fullName;
      _emailAddress = $v.emailAddress;
      _subject = $v.subject;
      _description = $v.description;
      _formType = $v.formType;
      _dateAndTime = $v.dateAndTime;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SupportTeamRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SupportTeamRecord;
  }

  @override
  void update(void Function(SupportTeamRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SupportTeamRecord build() {
    final _$result = _$v ??
        new _$SupportTeamRecord._(
            fullName: fullName,
            emailAddress: emailAddress,
            subject: subject,
            description: description,
            formType: formType,
            dateAndTime: dateAndTime,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
