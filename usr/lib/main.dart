import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'integrations/supabase.dart';
import 'screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Initialize Supabase configuration
  await SupabaseConfig.ensureInitialized();

  runApp(const JobMapApp());
}

class JobMapApp extends StatelessWidget {
  const JobMapApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JobMap',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue,
        textTheme: GoogleFonts.interTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
      },
    );
  }
}
