import '../database.dart';

class AppsTable extends SupabaseTable<AppsRow> {
  @override
  String get tableName => 'apps';

  @override
  AppsRow createRow(Map<String, dynamic> data) => AppsRow(data);
}

class AppsRow extends SupabaseDataRow {
  AppsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AppsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get appNname => getField<String>('app_nname');
  set appNname(String? value) => setField<String>('app_nname', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get logoImg => getField<String>('logo_img');
  set logoImg(String? value) => setField<String>('logo_img', value);

  String? get link => getField<String>('link');
  set link(String? value) => setField<String>('link', value);
}
