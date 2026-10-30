import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'متجر سيف',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Cairo'),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              const Icon(Icons.shopping_bag, size: 100, color: Colors.blue),
              const SizedBox(height: 20),
              const Text('متجر سيف', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
              const SizedBox(height: 30),
              TextField(controller: emailController, decoration: InputDecoration(labelText: 'الايميل', border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)), filled: true, fillColor: Colors.white)),
              const SizedBox(height: 15),
              TextField(controller: passController, obscureText: true, decoration: InputDecoration(labelText: 'كلمة السر', border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)), filled: true, fillColor: Colors.white)),
              const SizedBox(height: 25),
              SizedBox(width: double.infinity, height: 50, child: ElevatedButton(onPressed: () { Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const HomePage())); }, style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))), child: const Text('تسجيل دخول', style: TextStyle(fontSize: 18)))),
            ],
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final List<Map<String, dynamic>> products = const [
    {"name": "ايفون 15", "price": "1200\$", "icon": Icons.phone_iphone},
    {"name": "لابتوب ديل", "price": "800\$", "icon": Icons.laptop},
    {"name": "سماعة بلوتوث", "price": "50\$", "icon": Icons.headset},
    {"name": "ساعة ذكية", "price": "150\$", "icon": Icons.watch},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('متجر سيف - الرئيسية'), centerTitle: true),
      body: GridView.builder(padding: const EdgeInsets.all(16), gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 15, mainAxisSpacing: 15), itemCount: 4, itemBuilder: (context, i) {
        return Card(elevation: 5, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)), child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [Icon(products[i]["icon"], size: 50, color: Colors.blue), const SizedBox(height: 10), Text(products[i]["name"], style: const TextStyle(fontWeight: FontWeight.bold)), Text(products[i]["price"], style: const TextStyle(color: Colors.green, fontWeight: FontWeight.bold))]));
      }),
    );
  }
}
