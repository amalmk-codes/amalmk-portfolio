// models/portfolio_data.dart
//
// This file holds ALL the data shown on the portfolio website.
// Students: change the values here to personalise the portfolio —
// no need to touch the layout files at all.

// ─── Project Model ────────────────────────────────────────────────────────────
class Project {
  final String title;
  final String description;
  final List<String> technologies;
  final String imageLabel;

  const Project({
    required this.title,
    required this.description,
    required this.technologies,
    required this.imageLabel,
  });
}

// ─── Experience Model ─────────────────────────────────────────────────────────
class Experience {
  final String company;
  final String position;
  final String duration;
  final String description;

  const Experience({
    required this.company,
    required this.position,
    required this.duration,
    required this.description,
  });
}

// ─── Skill Model ──────────────────────────────────────────────────────────────
class Skill {
  final String name;
  final String category;

  const Skill({required this.name, required this.category});
}

// ─── Sample Portfolio Data ────────────────────────────────────────────────────
// Replace every value below with your own information.

class PortfolioData {
  // Personal Info
  static const String name  = 'Alex Johnson';
  static const String title = 'Flutter Developer & UI Designer';
  static const String intro =
      'I build beautiful, cross-platform apps using Flutter. '
      'Passionate about clean code, great UX, and open source.';
  static const String aboutMe =
      "Hi! I'm Alex, a software developer with 3 years of experience building "
      'mobile and web applications. I love solving real problems through elegant '
      'code and intuitive design. When I\'m not coding, you\'ll find me hiking '
      'or experimenting with new frameworks.';

  // Education
  static const String degree         = 'B.Sc. Computer Science';
  static const String university     = 'State University of Technology';
  static const String graduationYear = '2021';

  // Contact
  static const String email    = 'dev.aneess@gmail.com';
  static const String phone    = '+91 xxxxxxxxxx';
  static const String linkedin = 'linkedin.com/in/aneesan';
  static const String github   = 'github.com/erTesla';

  // Skills
  static const List<Skill> skills = [
    Skill(name: 'Flutter',      category: 'Mobile'),
    Skill(name: 'Dart',         category: 'Mobile'),
    Skill(name: 'Firebase',     category: 'Backend'),
    Skill(name: 'REST APIs',    category: 'Backend'),
    Skill(name: 'React',        category: 'Web'),
    Skill(name: 'HTML & CSS',   category: 'Web'),
    Skill(name: 'Git & GitHub', category: 'Tools'),
    Skill(name: 'Figma',        category: 'Design'),
  ];

  // Projects
  static const List<Project> projects = [
    Project(
      title: 'TaskFlow',
      description: 'A productivity app with task boards, reminders, and team '
          'collaboration built with Flutter and Firebase.',
      technologies: ['Flutter', 'Firebase', 'Hive'],
      imageLabel: 'TaskFlow',
    ),
    Project(
      title: 'WeatherNow',
      description: 'A real-time weather app that fetches data from OpenWeather '
          'API and displays animated forecasts.',
      technologies: ['Flutter', 'REST API', 'Provider'],
      imageLabel: 'WeatherNow',
    ),
    Project(
      title: 'ShopLite',
      description: 'A lightweight e-commerce app with product listings, cart, '
          'and a mock checkout flow.',
      technologies: ['Flutter', 'Dart', 'SQLite'],
      imageLabel: 'ShopLite',
    ),
    Project(
      title: 'Portfolio Website',
      description: 'This very portfolio! Built with Flutter Web as a '
          'single-page application with smooth scrolling.',
      technologies: ['Flutter Web', 'Dart'],
      imageLabel: 'Portfolio',
    ),
    Project(
      title: 'FitTrack',
      description: 'A fitness tracker that logs workouts, visualises progress '
          'with charts, and sends daily reminders.',
      technologies: ['Flutter', 'Firebase', 'fl_chart'],
      imageLabel: 'FitTrack',
    ),
    Project(
      title: 'NewsReader',
      description: 'An RSS and news aggregator with category filters, '
          'bookmarks, and offline reading support.',
      technologies: ['Flutter', 'REST API', 'Bloc'],
      imageLabel: 'NewsReader',
    ),
  ];

  // Experience
  static const List<Experience> experiences = [
    Experience(
      company: 'TechCorp Solutions',
      position: 'Junior Flutter Developer',
      duration: 'Jun 2023 – Present',
      description: 'Building and maintaining cross-platform mobile apps for '
          'enterprise clients. Led the migration of a legacy Android app to Flutter.',
    ),
    Experience(
      company: 'StartUp Hub',
      position: 'Mobile Intern',
      duration: 'Jan 2023 – May 2023',
      description: 'Developed UI components for a React Native app and wrote '
          'unit tests using Jest. Assisted in Firebase integration.',
    ),
    Experience(
      company: 'Freelance',
      position: 'Flutter Developer',
      duration: '2021 – 2022',
      description: 'Delivered three client projects: a restaurant ordering app, '
          'a church events app, and a personal finance tracker.',
    ),
  ];
}
