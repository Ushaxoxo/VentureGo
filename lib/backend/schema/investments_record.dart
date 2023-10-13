import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InvestmentsRecord extends FirestoreRecord {
  InvestmentsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "business" field.
  DocumentReference? _business;
  DocumentReference? get business => _business;
  bool hasBusiness() => _business != null;

  // "ownership" field.
  double? _ownership;
  double get ownership => _ownership ?? 0.0;
  bool hasOwnership() => _ownership != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  bool hasAmount() => _amount != null;

  // "isforsale" field.
  bool? _isforsale;
  bool get isforsale => _isforsale ?? false;
  bool hasIsforsale() => _isforsale != null;

  // "tosell" field.
  double? _tosell;
  double get tosell => _tosell ?? 0.0;
  bool hasTosell() => _tosell != null;

  void _initializeFields() {
    _user = snapshotData['user'] as DocumentReference?;
    _business = snapshotData['business'] as DocumentReference?;
    _ownership = castToType<double>(snapshotData['ownership']);
    _amount = castToType<double>(snapshotData['amount']);
    _isforsale = snapshotData['isforsale'] as bool?;
    _tosell = castToType<double>(snapshotData['tosell']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('investments');

  static Stream<InvestmentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InvestmentsRecord.fromSnapshot(s));

  static Future<InvestmentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => InvestmentsRecord.fromSnapshot(s));

  static InvestmentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      InvestmentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InvestmentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InvestmentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InvestmentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InvestmentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInvestmentsRecordData({
  DocumentReference? user,
  DocumentReference? business,
  double? ownership,
  double? amount,
  bool? isforsale,
  double? tosell,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'business': business,
      'ownership': ownership,
      'amount': amount,
      'isforsale': isforsale,
      'tosell': tosell,
    }.withoutNulls,
  );

  return firestoreData;
}

class InvestmentsRecordDocumentEquality implements Equality<InvestmentsRecord> {
  const InvestmentsRecordDocumentEquality();

  @override
  bool equals(InvestmentsRecord? e1, InvestmentsRecord? e2) {
    return e1?.user == e2?.user &&
        e1?.business == e2?.business &&
        e1?.ownership == e2?.ownership &&
        e1?.amount == e2?.amount &&
        e1?.isforsale == e2?.isforsale &&
        e1?.tosell == e2?.tosell;
  }

  @override
  int hash(InvestmentsRecord? e) => const ListEquality().hash(
      [e?.user, e?.business, e?.ownership, e?.amount, e?.isforsale, e?.tosell]);

  @override
  bool isValidKey(Object? o) => o is InvestmentsRecord;
}
