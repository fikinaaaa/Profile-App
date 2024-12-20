import 'package:flutter/material.dart';

void main() {
  runApp(const ProfileApp());
}

class ProfileApp extends StatelessWidget {
  const ProfileApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Profile',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.teal.shade800,
        ),
        body: const ProfilePage(),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.teal.shade100, Colors.teal.shade50],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // Profile Picture
            const CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/fiki.jpeg'),
            ),
            const SizedBox(height: 20),
            // Name
            Text(
              'Fiki Anwar Safii',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.teal.shade800,
              ),
            ),
            const SizedBox(height: 10),
            // Bio
            Text(
              'Teknik Informatika',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Colors.grey.shade700,
              ),
            ),
            const SizedBox(height: 20),
            // Divider
            Divider(color: Colors.teal.shade300, thickness: 1),
            const SizedBox(height: 10),
            // Information Card
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 8.0,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: const Icon(Icons.cake, color: Colors.teal),
                      title: const Text('Tanggal Lahir'),
                      subtitle: const Text('2002-12-07'),
                    ),
                    Divider(color: Colors.grey.shade300, thickness: 1),
                    ListTile(
                      leading: const Icon(Icons.web, color: Colors.teal),
                      title: const Text('Website'),
                      subtitle: const Text('fikinaaaa.com'),
                      onTap: () {},
                    ),
                    Divider(color: Colors.grey.shade300, thickness: 1),
                    ListTile(
                      leading: const Icon(Icons.email, color: Colors.teal),
                      title: const Text('Email'),
                      subtitle: const Text('fikianwarst@gmail.com'),
                    ),
                    Divider(color: Colors.grey.shade300, thickness: 1),
                    ListTile(
                      leading: const Icon(Icons.location_on, color: Colors.teal),
                      title: const Text('Alamat'),
                      subtitle: const Text('Wonosobo'),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 0),
            // Additional Sections
            _buildInformationCard(context, 'Education', [
              _buildListTile(Icons.school, 'Universitas', 'Universitas Sains Al-Quran'),
              _buildListTile(Icons.book, 'Jurusan', 'Teknik Informatika'),
            ]),
            const SizedBox(height: 20),
            _buildInformationCard(context, 'Work Experience', [
              _buildListTile(Icons.work, 'Internship', 'PT. Teknologi Solusi Indonesia (2023)'),
              _buildListTile(Icons.code, 'Freelance', 'Mobile Developer (2022 - Sekarang)'),
            ]),
            const SizedBox(height: 20),
            _buildInformationCard(context, 'Hobbies', [
              _buildListTile(Icons.music_note, 'Musik', 'Mendengarkan dan bermain gitar'),
              _buildListTile(Icons.directions_bike, 'Olahraga', 'Bersepeda dan jogging'),
              _buildListTile(Icons.movie, 'Film', 'Menonton film sci-fi'),
            ]),
            const SizedBox(height: 20),
            // Action Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.call, color: Colors.white),
                  label: const Text(
                    'Call Me',
                    style: TextStyle(color: Colors.white), // Mengubah warna font menjadi putih
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal.shade800,
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.message, color: Colors.white),
                  label: const Text(
                    'Message',
                    style: TextStyle(color: Colors.white), // Mengubah warna font menjadi putih
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal.shade600,
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Social Media Icons
            Wrap(
              spacing: 15,
              children: <Widget>[
                IconButton(
                  icon: const Icon(Icons.facebook),
                  onPressed: () {},
                  color: Colors.blue.shade700,
                  tooltip: 'Facebook',
                  iconSize: 30,
                ),
                IconButton(
                  icon: const Icon(Icons.link),
                  onPressed: () {},
                  color: Colors.blue.shade800,
                  tooltip: 'LinkedIn',
                  iconSize: 30,
                ),
                IconButton(
                  icon: const Icon(Icons.code),
                  onPressed: () {},
                  color: Colors.black,
                  tooltip: 'GitHub',
                  iconSize: 30,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Card _buildInformationCard(BuildContext context, String title, List<Widget> items) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 8.0,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.teal.shade800,
              ),
            ),
            const SizedBox(height: 10),
            ...items,
          ],
        ),
      ),
    );
  }

  ListTile _buildListTile(IconData icon, String title, String subtitle) {
    return ListTile(
      leading: Icon(icon, color: Colors.teal),
      title: Text(title),
      subtitle: Text(subtitle),
    );
  }
}
