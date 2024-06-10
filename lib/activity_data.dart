import 'package:flutter/material.dart';

class ActivityData extends StatefulWidget {
  const ActivityData({super.key, required this.nama, required this.nim});

  final String nama;
  final int nim;

  @override
  State<ActivityData> createState() => _ActivityDataState();
}

class _ActivityDataState extends State<ActivityData> {
  @override
  Widget build(BuildContext context) {
    final String studentName = widget.nama;
    final int nim = widget.nim;

    return Scaffold(
      backgroundColor: const Color(0xff0096ff),
      appBar: AppBar(
        title: const Text(
          "Activity Data Page",
          style: TextStyle(color: Colors.black),
        ),
        leading: const Icon(
          Icons.data_object,
          color: Colors.black,
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xff0096ff), Color(0xff6610f2)],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Nama Mahasiswa:',
                    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    studentName,
                    style: const TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
              const SizedBox(height: 24.0),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'NIM:',
                    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    nim.toString(),
                    style: const TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}