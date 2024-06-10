import 'package:flutter/material.dart';
import 'package:tugas_pbo/activity.dart';
import 'package:tugas_pbo/activity_data.dart';
import 'package:tugas_pbo/kalkulator_page.dart';
import 'package:tugas_pbo/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String nama = 'Ahmad Maulana Iqbal';
  final int nim = 21533508;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0096ff),
      appBar: AppBar(
        title: const Text(
          "Home Page",
          style: TextStyle(color: Colors.black),
        ),
        leading: const Icon(
          Icons.home,
          color: Colors.black,
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xff0096ff), Color(0xff6610f2)])),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 20,
              width: 20,
            ),
            const Text(
              "Profile",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 20,
              width: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfilePage()));
              },
              child: const Text("Lihat Profile"),
            ),
            const SizedBox(
              height: 20,
              width: 20,
            ),
            const Text(
              "Kalkulator",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 20,
              width: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const KalkulatorPage()));
              },
              child: const Text("Kalkulator"),
            ),
            const SizedBox(
              height: 20,
              width: 20,
            ),
            const Text(
              "Activity",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Activity()));
              },
              child: const Text("Pindah Activity"),
            ),
            const SizedBox(
              height: 20,
              width: 20,
            ),
            const Text(
              "Activity Data",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 20,
              width: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ActivityData(nama: nama, nim: nim)));
              },
              child: const Text("Pindah Activity dengan Data"),
            )
          ],
        ),
      ),
    );
  }
}
