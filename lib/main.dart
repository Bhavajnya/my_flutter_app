import 'package:flutter/material.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bhavajnya Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.green,
        brightness: Brightness.light,
        scaffoldBackgroundColor: const Color(
          0xFFDFF5E1,
        ), // ✅ global background green
        cardColor: const Color(0xFFBEE5C4), // ✅ cards soft green
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green[600], // ✅ green button color
            foregroundColor: Colors.white, // ✅ white text
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 14),
            textStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          titleMedium: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
          bodyLarge: TextStyle(fontSize: 16, color: Colors.black87),
          bodyMedium: TextStyle(fontSize: 14, color: Colors.black54),
        ),
      ),
      home: const HomePage(),
    );
  }
}

// ===================== HOME PAGE =====================
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDFF5E1), // ✅ light green background
      appBar: AppBar(
        title: const Text('My Portfolio'),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.green, Colors.teal],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        elevation: 10,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('images/Bhavajnya.jpg'),
            ),
            const SizedBox(height: 16),
            const Text(
              'S.Bhavajnya',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Software Developer',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            const SizedBox(height: 32),
            _buildNavButton(context, 'Objective', const ObjectivePage()),
            _buildNavButton(context, 'Education', const EducationPage()),
            _buildNavButton(context, 'Projects', const ProjectsPage()),
            _buildNavButton(context, 'Skills', const SkillsPage()),
            _buildNavButton(
              context,
              'Certifications',
              const CertificationsPage(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavButton(BuildContext context, String label, Widget page) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: ElevatedButton(
        onPressed: () =>
            Navigator.push(context, MaterialPageRoute(builder: (_) => page)),
        child: Text(label),
      ),
    );
  }
}

// ===================== OBJECTIVE PAGE =====================
class ObjectivePage extends StatelessWidget {
  const ObjectivePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDFF5E1),
      appBar: AppBar(
        title: const Text('Objective'),
        backgroundColor: Colors.green[600],
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'I am a highly motivated and curious Computer Science student with a deep interest in exploring how technology shapes the world. From learning programming fundamentals to building real-world projects, I am committed to continuous growth and innovation through code.',
          style: TextStyle(fontSize: 16, color: Colors.black87),
        ),
      ),
    );
  }
}

// ===================== EDUCATION PAGE =====================
class EducationPage extends StatelessWidget {
  const EducationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDFF5E1),
      appBar: AppBar(
        title: const Text('Education'),
        backgroundColor: Colors.green[600],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildEducationCard(
              institution: 'Bachelor of Technology at CRRAO AIMSCS (2023-2027)',
              degree: 'Computer Science and Engineering (CSE)',
            ),
            const SizedBox(height: 12),
            _buildEducationCard(
              institution: 'Sri Vasishta Institutions (2021-2023)',
              degree: 'Intermediate',
            ),
            const SizedBox(height: 12),
            _buildEducationCard(
              institution: 'Raviteja High School (2020)',
              degree: 'SSC',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEducationCard({
    required String institution,
    required String degree,
  }) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: ListTile(
        title: Text(
          institution,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        subtitle: Text(degree, style: const TextStyle(color: Colors.black87)),
      ),
    );
  }
}

// ===================== PROJECTS PAGE =====================
class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDFF5E1),
      appBar: AppBar(
        title: const Text('Projects'),
        backgroundColor: Colors.green[600],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildProjectCard(
              title: 'Data Visualization',
              technologies: 'Python',
              description:
                  'Worked on real-time large dataset in Kaggle and preprocessed the data. Performed Z-Test, T-Test, Anova and Chi-Square test for the testing of hypothesis.',
            ),
            const SizedBox(height: 12),
            _buildProjectCard(
              title: 'Restaurant Web Application',
              technologies: 'Java Servlets, HTML, CSS, JDBC, MySQL',
              description:
                  'Built a web-based restaurant system with user/admin modules using Java Servlets and JDBC. Designed responsive UI with HTML/CSS and implemented real-time data handling via MySQL. Added login, menu display, and order management features.',
            ),
            const SizedBox(height: 12),
            _buildProjectCard(
              title: 'Weather Application',
              technologies: 'Node.js, Express.js',
              description:
                  'Developed a weather forecasting web application using Node.js and Express.js, integrating real-time weather APIs to display temperature, humidity, and forecast data based on user location.',
            ),
            const SizedBox(height: 12),
            _buildProjectCard(
              title: 'Object detection using YOLO(V8 & V11)',
              technologies: 'YOLO',
              description:
                  'Designed and implemented an end-to-end object detection pipeline using YOLO, including dataset annotation, model training, and evaluation. Achieved high detection accuracy and optimized inference speed for real-time applications.',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProjectCard({
    required String title,
    required String technologies,
    required String description,
  }) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              'Technologies: $technologies',
              style: const TextStyle(
                fontSize: 14,
                fontStyle: FontStyle.italic,
                color: Colors.black54,
              ),
            ),
            const SizedBox(height: 8),
            Text(description, style: const TextStyle(color: Colors.black87)),
          ],
        ),
      ),
    );
  }
}

// ===================== SKILLS PAGE =====================
class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final skills = [
      'Python',
      'Java',
      'C Language',
      'HTML',
      'CSS',
      'Communication Skills',
      'MYSQL',
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFDFF5E1),
      appBar: AppBar(
        title: const Text('Skills'),
        backgroundColor: Colors.green[600],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: skills
              .map(
                (skill) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6.0),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.check_circle_outline,
                        color: Colors.green,
                        size: 20,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        skill,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}

// ===================== CERTIFICATIONS PAGE =====================
class CertificationsPage extends StatelessWidget {
  const CertificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final certifications = [
      'Popular Applications of Data Science – Great Learning',
      'Data Science Foundations – Great Learning',
      'INTRODUCTION TO DIGITAL TRANSFORMATION WITH GOOGLE CLOUD',
      'AI Essentials-Google',
      'AI in Devops – Project Sunshine HCL',
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFDFF5E1),
      appBar: AppBar(
        title: const Text('Certifications'),
        backgroundColor: Colors.green[600],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: certifications
              .map(
                (cert) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6.0),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.check_circle_outline,
                        color: Colors.green,
                        size: 20,
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          cert,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black87,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
