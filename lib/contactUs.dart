import 'package:flutter/material.dart';

class ContactUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Us'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Campus',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text('Gramadiha, Gangapada'),
              subtitle: Text('Bhubaneswar, Odisha – 752054, India'),
            ),
            SizedBox(height: 16),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone'),
              subtitle: Text('+91-700-879-5270'),
            ),
            SizedBox(height: 16),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('Email'),
              subtitle: Text('info@gift.edu.in'),
            ),
            SizedBox(height: 32),
            Text(
              'City Office',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text('B-004, Krishna Tower'),
              subtitle:
                  Text('P.O.: Nayapalli, Bhubaneswar, Odisha – 751012, India'),
            ),
            SizedBox(height: 16),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone'),
              subtitle: Text('+91-700-879-5270'),
            ),
            SizedBox(height: 16),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('Email'),
              subtitle: Text('info@gift.edu.in'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Navigate to the feedback page
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FeedbackPage()),
          );
        },
        icon: const Icon(Icons.feedback),
        label: const Text('Give Feedback'),
      ),
    );
  }
}

class FeedbackPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Give Feedback'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Your Feedback is Important to Us!',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your email';
                  }
                  if (!isValidEmail(value)) {
                    return 'Please enter a valid email';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Message',
                  border: OutlineInputBorder(),
                ),
                maxLines: 4,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your message';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {}
                },
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool isValidEmail(String email) {
    final emailRegex = RegExp(
        r'^[\w-]+(\.[\w-]+)*@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*(\.[a-zA-Z]{2,})$');
    return emailRegex.hasMatch(email);
  }
}
