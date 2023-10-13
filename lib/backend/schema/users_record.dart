import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "isInvestor" field.
  bool? _isInvestor;
  bool get isInvestor => _isInvestor ?? false;
  bool hasIsInvestor() => _isInvestor != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  // "isnewlocalbusiness" field.
  bool? _isnewlocalbusiness;
  bool get isnewlocalbusiness => _isnewlocalbusiness ?? false;
  bool hasIsnewlocalbusiness() => _isnewlocalbusiness != null;

  // "isexpandlocalbusiness" field.
  bool? _isexpandlocalbusiness;
  bool get isexpandlocalbusiness => _isexpandlocalbusiness ?? false;
  bool hasIsexpandlocalbusiness() => _isexpandlocalbusiness != null;

  // "isstartup" field.
  bool? _isstartup;
  bool get isstartup => _isstartup ?? false;
  bool hasIsstartup() => _isstartup != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _isInvestor = snapshotData['isInvestor'] as bool?;
    _city = snapshotData['city'] as String?;
    _bio = snapshotData['bio'] as String?;
    _isnewlocalbusiness = snapshotData['isnewlocalbusiness'] as bool?;
    _isexpandlocalbusiness = snapshotData['isexpandlocalbusiness'] as bool?;
    _isstartup = snapshotData['isstartup'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  bool? isInvestor,
  String? city,
  String? bio,
  bool? isnewlocalbusiness,
  bool? isexpandlocalbusiness,
  bool? isstartup,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'isInvestor': isInvestor,
      'city': city,
      'bio': bio,
      'isnewlocalbusiness': isnewlocalbusiness,
      'isexpandlocalbusiness': isexpandlocalbusiness,
      'isstartup': isstartup,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.isInvestor == e2?.isInvestor &&
        e1?.city == e2?.city &&
        e1?.bio == e2?.bio &&
        e1?.isnewlocalbusiness == e2?.isnewlocalbusiness &&
        e1?.isexpandlocalbusiness == e2?.isexpandlocalbusiness &&
        e1?.isstartup == e2?.isstartup;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.isInvestor,
        e?.city,
        e?.bio,
        e?.isnewlocalbusiness,
        e?.isexpandlocalbusiness,
        e?.isstartup
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
