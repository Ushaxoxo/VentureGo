import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MarketAnalysisRecord extends FirestoreRecord {
  MarketAnalysisRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "chart" field.
  String? _chart;
  String get chart => _chart ?? '';
  bool hasChart() => _chart != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _chart = snapshotData['chart'] as String?;
    _id = castToType<int>(snapshotData['id']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('market_analysis');

  static Stream<MarketAnalysisRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MarketAnalysisRecord.fromSnapshot(s));

  static Future<MarketAnalysisRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MarketAnalysisRecord.fromSnapshot(s));

  static MarketAnalysisRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MarketAnalysisRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MarketAnalysisRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MarketAnalysisRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MarketAnalysisRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MarketAnalysisRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMarketAnalysisRecordData({
  String? name,
  String? description,
  String? chart,
  int? id,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'chart': chart,
      'id': id,
    }.withoutNulls,
  );

  return firestoreData;
}

class MarketAnalysisRecordDocumentEquality
    implements Equality<MarketAnalysisRecord> {
  const MarketAnalysisRecordDocumentEquality();

  @override
  bool equals(MarketAnalysisRecord? e1, MarketAnalysisRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.chart == e2?.chart &&
        e1?.id == e2?.id;
  }

  @override
  int hash(MarketAnalysisRecord? e) =>
      const ListEquality().hash([e?.name, e?.description, e?.chart, e?.id]);

  @override
  bool isValidKey(Object? o) => o is MarketAnalysisRecord;
}
