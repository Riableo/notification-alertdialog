import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Dialog demo',
      home: Homepage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert Dialog'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text('Welcome'),
                  content: const Text('AlertDialog example'),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'Confirm'), 
                      child: const Text(
                        'Confirm',
                        style: TextStyle(
                          color: Colors.green
                        ),
                      )
                    ),
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'Cancel'),
                      child: const Text(
                        'Cancel',
                        style: TextStyle(
                          color: Colors.red
                        ),
                      )
                      
                    )
                  ],
                  
                );
              },
            );
          },
          child: const Text('Show dialog')
        ),
      ),
    );
  }
}
