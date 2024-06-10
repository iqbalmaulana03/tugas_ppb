import 'package:flutter/material.dart';

class KalkulatorPage extends StatefulWidget {
  const KalkulatorPage({super.key});

  @override
  State<KalkulatorPage> createState() => _KalkulatorPageState();
}

class _KalkulatorPageState extends State<KalkulatorPage> {
  final _formKey = GlobalKey<FormState>();
  final _controller1 = TextEditingController();
  final _controller2 = TextEditingController();

  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0096ff),
      appBar: AppBar(
        title: const Text(
          "Kalkulator Page",
          style: TextStyle(color: Colors.black),
        ),
        leading: const Icon(
          Icons.calculate,
          color: Colors.black,
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xff0096ff), Color(0xff6610f2)])),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
            key: _formKey,
            child: ListView(
              children: <Widget>[
                TextFormField(
                  controller: _controller1,
                  decoration: const InputDecoration(
                    labelText: 'Bilangan 1',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Silahkan masukkan bilangan 1';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  controller: _controller2,
                  decoration: const InputDecoration(
                    labelText: 'Bilangan 2',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Silahkan masukkan bilangan 2';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 40.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            final num1 = double.parse(_controller1.text);
                            final num2 = double.parse(_controller2.text);
                            final result = num1 / num2;

                            showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: const Text("Hasil Pembagian"),
                                    content: Text(
                                        "Hasil dari $num1 / $num2 adalah $result"),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: const Text("OK"),
                                      )
                                    ],
                                  );
                                });
                          }
                        },
                        child: const Text("/")),
                    const SizedBox(
                      width: 20.0,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            final num1 = double.parse(_controller1.text);
                            final num2 = double.parse(_controller2.text);
                            final result = num1 + num2;

                            showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: const Text("Hasil Penjumlahan"),
                                    content: Text(
                                        "Hasil dari $num1 + $num2 adalah $result"),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: const Text("OK"),
                                      )
                                    ],
                                  );
                                });
                          }
                        },
                        child: const Text("+")),
                    const SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              final num1 = double.parse(_controller1.text);
                              final num2 = double.parse(_controller2.text);
                              final result = num1 * num2;

                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: const Text("Hasil Perkalian"),
                                      content: Text(
                                          "Hasil dari $num1 * $num2 adalah $result"),
                                      actions: [
                                        TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: const Text("OK"),
                                        )
                                      ],
                                    );
                                  });
                            }
                          },
                          child: const Text("*")),
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              final num1 = double.parse(_controller1.text);
                              final num2 = double.parse(_controller2.text);
                              final result = num1 - num2;

                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: const Text("Hasil Pengurangan"),
                                      content: Text(
                                          "Hasil dari $num1 - $num2 adalah $result"),
                                      actions: [
                                        TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: const Text("OK"),
                                        )
                                      ],
                                    );
                                  });
                            }
                          },
                          child: const Text("-")),
                    )
                  ],
                )
              ],
            )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}
