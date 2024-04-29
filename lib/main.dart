import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'core/radio_provider.dart';
import 'my_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(ChangeNotifierProvider<MyProvider>(
      create: (context) => MyProvider(), child: MyApp()));
}




