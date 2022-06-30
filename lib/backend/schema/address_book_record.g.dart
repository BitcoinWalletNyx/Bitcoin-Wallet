// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_book_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AddressBookRecord> _$addressBookRecordSerializer =
    new _$AddressBookRecordSerializer();

class _$AddressBookRecordSerializer
    implements StructuredSerializer<AddressBookRecord> {
  @override
  final Iterable<Type> types = const [AddressBookRecord, _$AddressBookRecord];
  @override
  final String wireName = 'AddressBookRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, AddressBookRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.addressLabel;
    if (value != null) {
      result
        ..add('addressLabel')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.address;
    if (value != null) {
      result
        ..add('address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.addressWlabel;
    if (value != null) {
      result
        ..add('addressWlabel')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('createdAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.addressLogo;
    if (value != null) {
      result
        ..add('addressLogo')
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
  AddressBookRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AddressBookRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'addressLabel':
          result.addressLabel = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'addressWlabel':
          result.addressWlabel = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'addressLogo':
          result.addressLogo = serializers.deserialize(value,
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

class _$AddressBookRecord extends AddressBookRecord {
  @override
  final String addressLabel;
  @override
  final String address;
  @override
  final String addressWlabel;
  @override
  final String createdAt;
  @override
  final String addressLogo;
  @override
  final DocumentReference<Object> reference;

  factory _$AddressBookRecord(
          [void Function(AddressBookRecordBuilder) updates]) =>
      (new AddressBookRecordBuilder()..update(updates)).build();

  _$AddressBookRecord._(
      {this.addressLabel,
      this.address,
      this.addressWlabel,
      this.createdAt,
      this.addressLogo,
      this.reference})
      : super._();

  @override
  AddressBookRecord rebuild(void Function(AddressBookRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddressBookRecordBuilder toBuilder() =>
      new AddressBookRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddressBookRecord &&
        addressLabel == other.addressLabel &&
        address == other.address &&
        addressWlabel == other.addressWlabel &&
        createdAt == other.createdAt &&
        addressLogo == other.addressLogo &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, addressLabel.hashCode), address.hashCode),
                    addressWlabel.hashCode),
                createdAt.hashCode),
            addressLogo.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AddressBookRecord')
          ..add('addressLabel', addressLabel)
          ..add('address', address)
          ..add('addressWlabel', addressWlabel)
          ..add('createdAt', createdAt)
          ..add('addressLogo', addressLogo)
          ..add('reference', reference))
        .toString();
  }
}

class AddressBookRecordBuilder
    implements Builder<AddressBookRecord, AddressBookRecordBuilder> {
  _$AddressBookRecord _$v;

  String _addressLabel;
  String get addressLabel => _$this._addressLabel;
  set addressLabel(String addressLabel) => _$this._addressLabel = addressLabel;

  String _address;
  String get address => _$this._address;
  set address(String address) => _$this._address = address;

  String _addressWlabel;
  String get addressWlabel => _$this._addressWlabel;
  set addressWlabel(String addressWlabel) =>
      _$this._addressWlabel = addressWlabel;

  String _createdAt;
  String get createdAt => _$this._createdAt;
  set createdAt(String createdAt) => _$this._createdAt = createdAt;

  String _addressLogo;
  String get addressLogo => _$this._addressLogo;
  set addressLogo(String addressLogo) => _$this._addressLogo = addressLogo;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  AddressBookRecordBuilder() {
    AddressBookRecord._initializeBuilder(this);
  }

  AddressBookRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _addressLabel = $v.addressLabel;
      _address = $v.address;
      _addressWlabel = $v.addressWlabel;
      _createdAt = $v.createdAt;
      _addressLogo = $v.addressLogo;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddressBookRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AddressBookRecord;
  }

  @override
  void update(void Function(AddressBookRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AddressBookRecord build() {
    final _$result = _$v ??
        new _$AddressBookRecord._(
            addressLabel: addressLabel,
            address: address,
            addressWlabel: addressWlabel,
            createdAt: createdAt,
            addressLogo: addressLogo,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
