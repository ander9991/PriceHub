// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorites_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FavoritesRecord> _$favoritesRecordSerializer =
    new _$FavoritesRecordSerializer();

class _$FavoritesRecordSerializer
    implements StructuredSerializer<FavoritesRecord> {
  @override
  final Iterable<Type> types = const [FavoritesRecord, _$FavoritesRecord];
  @override
  final String wireName = 'FavoritesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, FavoritesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.url;
    if (value != null) {
      result
        ..add('url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isFavorite;
    if (value != null) {
      result
        ..add('isFavorite')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  FavoritesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FavoritesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isFavorite':
          result.isFavorite = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$FavoritesRecord extends FavoritesRecord {
  @override
  final String? name;
  @override
  final String? image;
  @override
  final String? url;
  @override
  final bool? isFavorite;
  @override
  final String? price;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$FavoritesRecord([void Function(FavoritesRecordBuilder)? updates]) =>
      (new FavoritesRecordBuilder()..update(updates))._build();

  _$FavoritesRecord._(
      {this.name,
      this.image,
      this.url,
      this.isFavorite,
      this.price,
      this.ffRef})
      : super._();

  @override
  FavoritesRecord rebuild(void Function(FavoritesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FavoritesRecordBuilder toBuilder() =>
      new FavoritesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FavoritesRecord &&
        name == other.name &&
        image == other.image &&
        url == other.url &&
        isFavorite == other.isFavorite &&
        price == other.price &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, name.hashCode), image.hashCode), url.hashCode),
                isFavorite.hashCode),
            price.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FavoritesRecord')
          ..add('name', name)
          ..add('image', image)
          ..add('url', url)
          ..add('isFavorite', isFavorite)
          ..add('price', price)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class FavoritesRecordBuilder
    implements Builder<FavoritesRecord, FavoritesRecordBuilder> {
  _$FavoritesRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  bool? _isFavorite;
  bool? get isFavorite => _$this._isFavorite;
  set isFavorite(bool? isFavorite) => _$this._isFavorite = isFavorite;

  String? _price;
  String? get price => _$this._price;
  set price(String? price) => _$this._price = price;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  FavoritesRecordBuilder() {
    FavoritesRecord._initializeBuilder(this);
  }

  FavoritesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _image = $v.image;
      _url = $v.url;
      _isFavorite = $v.isFavorite;
      _price = $v.price;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FavoritesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FavoritesRecord;
  }

  @override
  void update(void Function(FavoritesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FavoritesRecord build() => _build();

  _$FavoritesRecord _build() {
    final _$result = _$v ??
        new _$FavoritesRecord._(
            name: name,
            image: image,
            url: url,
            isFavorite: isFavorite,
            price: price,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
