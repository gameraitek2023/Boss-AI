import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://iblxiwznkvpdsveidkwy.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImlibHhpd3pua3ZwZHN2ZWlka3d5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTQ0NjAzMjksImV4cCI6MjAxMDAzNjMyOX0.op7H5HlOQRBk4muxhsjYQa3-9E8Y8iX71Ue8zu2S0AI';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
