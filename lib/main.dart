import 'package:flutter/material.dart';
import 'package:led_color_picker/communicate/api.dart';
import 'package:led_color_picker/data_structures/global_data.dart';
import 'package:led_color_picker/home_page.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  final String port = sharedPreferences.getString("port") ?? "50051";
  final Kontroll kontroll = await Kontroll.create(port: port);
  final PackageInfo packageInfo = await PackageInfo.fromPlatform();

  runApp(
    MyApp(
      kontroll: kontroll,
      sharedPreferences: sharedPreferences,
      packageInfo: packageInfo,
    )
  );
}


class MyApp extends StatefulWidget {
  const MyApp({required this.kontroll, required this.sharedPreferences, required this.packageInfo, super.key});
  final Kontroll kontroll;
  final SharedPreferences sharedPreferences;
  final PackageInfo packageInfo;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool loadedSharedPreferances = false;

  @override
  void initState() {   
    _init(); 
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LED Color Picker',
      debugShowCheckedModeBanner: false,
      scaffoldMessengerKey: data.scaffoldKey,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)
      ),
      home: MyHomePage(),
    );
  }

  void _init() {
    data = GlobalData(kontroll: widget.kontroll, sharedPreferences: widget.sharedPreferences, packageInfo: widget.packageInfo);
    data.port.value = data.sharedPreferences.getString("port") ?? "50051";
    data.port.addListener(() => data.sharedPreferences.setString("port", data.port.value));
    data.port.addListener(() => data.creatNewConnection(data.port.value));
    data.keyappConnected.addListener(() => data.getKeyboards());
    data.testConnection();
  }
}