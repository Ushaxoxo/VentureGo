import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BusinessRecord extends FirestoreRecord {
  BusinessRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "about" field.
  String? _about;
  String get about => _about ?? '';
  bool hasAbout() => _about != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "shortabout" field.
  String? _shortabout;
  String get shortabout => _shortabout ?? '';
  bool hasShortabout() => _shortabout != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "businesseval" field.
  double? _businesseval;
  double get businesseval => _businesseval ?? 0.0;
  bool hasBusinesseval() => _businesseval != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "smallbusiness" field.
  String? _smallbusiness;
  String get smallbusiness => _smallbusiness ?? '';
  bool hasSmallbusiness() => _smallbusiness != null;

  // "businesstype" field.
  String? _businesstype;
  String get businesstype => _businesstype ?? '';
  bool hasBusinesstype() => _businesstype != null;

  // "fundrequired" field.
  double? _fundrequired;
  double get fundrequired => _fundrequired ?? 0.0;
  bool hasFundrequired() => _fundrequired != null;

  // "fundraised" field.
  double? _fundraised;
  double get fundraised => _fundraised ?? 0.0;
  bool hasFundraised() => _fundraised != null;

  // "bid" field.
  String? _bid;
  String get bid => _bid ?? '';
  bool hasBid() => _bid != null;

  void _initializeFields() {
    _about = snapshotData['about'] as String?;
    _image = snapshotData['image'] as String?;
    _name = snapshotData['name'] as String?;
    _shortabout = snapshotData['shortabout'] as String?;
    _type = snapshotData['type'] as String?;
    _location = snapshotData['location'] as String?;
    _businesseval = castToType<double>(snapshotData['businesseval']);
    _user = snapshotData['user'] as DocumentReference?;
    _smallbusiness = snapshotData['smallbusiness'] as String?;
    _businesstype = snapshotData['businesstype'] as String?;
    _fundrequired = castToType<double>(snapshotData['fundrequired']);
    _fundraised = castToType<double>(snapshotData['fundraised']);
    _bid = snapshotData['bid'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('business');

  static Stream<BusinessRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BusinessRecord.fromSnapshot(s));

  static Future<BusinessRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BusinessRecord.fromSnapshot(s));

  static BusinessRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BusinessRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BusinessRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BusinessRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BusinessRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BusinessRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBusinessRecordData({
  String? about,
  String? image,
  String? name,
  String? shortabout,
  String? type,
  String? location,
  double? businesseval,
  DocumentReference? user,
  String? smallbusiness,
  String? businesstype,
  double? fundrequired,
  double? fundraised,
  String? bid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'about': about,
      'image': image,
      'name': name,
      'shortabout': shortabout,
      'type': type,
      'location': location,
      'businesseval': businesseval,
      'user': user,
      'smallbusiness': smallbusiness,
      'businesstype': businesstype,
      'fundrequired': fundrequired,
      'fundraised': fundraised,
      'bid': bid,
    }.withoutNulls,
  );

  return firestoreData;
}

class BusinessRecordDocumentEquality implements Equality<BusinessRecord> {
  const BusinessRecordDocumentEquality();

  @override
  bool equals(BusinessRecord? e1, BusinessRecord? e2) {
    return e1?.about == e2?.about &&
        e1?.image == e2?.image &&
        e1?.name == e2?.name &&
        e1?.shortabout == e2?.shortabout &&
        e1?.type == e2?.type &&
        e1?.location == e2?.location &&
        e1?.businesseval == e2?.businesseval &&
        e1?.user == e2?.user &&
        e1?.smallbusiness == e2?.smallbusiness &&
        e1?.businesstype == e2?.businesstype &&
        e1?.fundrequired == e2?.fundrequired &&
        e1?.fundraised == e2?.fundraised &&
        e1?.bid == e2?.bid;
  }

  @override
  int hash(BusinessRecord? e) => const ListEquality().hash([
        e?.about,
        e?.image,
        e?.name,
        e?.shortabout,
        e?.type,
        e?.location,
        e?.businesseval,
        e?.user,
        e?.smallbusiness,
        e?.businesstype,
        e?.fundrequired,
        e?.fundraised,
        e?.bid
      ]);

  @override
  bool isValidKey(Object? o) => o is BusinessRecord;
}
