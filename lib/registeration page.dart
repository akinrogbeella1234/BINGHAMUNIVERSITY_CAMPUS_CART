import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Bingham Campus Cart',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // Same blue as your login page
        backgroundColor: Color(0xFF1E3F9E),

        body: Center(
          // Scroll view so the page doesn't overflow on small screens
          child: SingleChildScrollView(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Cap icon, same as the login page
                Icon(Icons.school, size: 80, color: Colors.white),

                SizedBox(height: 10),

                // Title
                Text(
                  'Bingham Campus Cart',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

                SizedBox(height: 25),

                // Page heading
                Text(
                  'Create account',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

                SizedBox(height: 25),

                // Full name
                SizedBox(
                  width: 400,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Full name',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 15),

                // Matric number
                SizedBox(
                  width: 400,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Matric number',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 15),

                // Email
                SizedBox(
                  width: 400,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 15),

                // Password (obscureText hides it with dots)
                SizedBox(
                  width: 400,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 15),

                // Confirm password
                SizedBox(
                  width: 400,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Confirm password',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 25),

                // Yellow main button
                SizedBox(
                  width: 400,
                  height: 55,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFF4D31A),
                      shape: StadiumBorder(), // makes the rounded pill shape
                    ),
                    onPressed: () {
                      print('Create account clicked');
                    },
                    child: Text(
                      'Create account',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 15),

                // Link back to login
                TextButton(
                  onPressed: () {
                    print('Go to login');
                  },
                  child: Text(
                    'Already have an account? Log in',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}