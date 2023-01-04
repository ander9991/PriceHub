import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'favorites_record.g.dart';

abstract class FavoritesRecord
    implements Built<FavoritesRecord, FavoritesRecordBuilder> {
  static Serializer<FavoritesRecord> get serializer =>
      _$favoritesRecordSerializer;

  String? get name;

  String? get image;

  String? get url;

  bool? get isFavorite;

  String? get price;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(FavoritesRecordBuilder builder) => builder
    ..name = ''
    ..image = ''
    ..url = ''
    ..isFavorite = false
    ..price = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('favorites');

  static Stream<FavoritesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<FavoritesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  FavoritesRecord._();
  factory FavoritesRecord([void Function(FavoritesRecordBuilder) updates]) =
      _$FavoritesRecord;

  static FavoritesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createFavoritesRecordData({
  String? name,
  String? image,
  String? url,
  bool? isFavorite,
  String? price,
}) {
  final firestoreData = serializers.toFirestore(
    FavoritesRecord.serializer,
    FavoritesRecord(
      (f) => f
        ..name = name
        ..image = image
        ..url = url
        ..isFavorite = isFavorite
        ..price = price,
    ),
  );

  return firestoreData;
}
