class PortfolioData {

  // PERSONAL INFO

  static const String name =
      "Tharanitharan S";

  static const String title =
      "Full Stack Developer | ML Engineer";

  static const String tagline =
      "If you crack the system, first understand the system.";

  static const String location =
      "Coimbatore, India";

  static const String email =
      "tharanitharan3011@gmail.com";

  static const String github =
      "https://github.com/Tharanitharan30";

  static const String linkedin =
      "https://www.linkedin.com/in/tharanitharan-s/";

  static const String bio =
      "I'm a Full Stack Developer and ML Engineer who loves building end-to-end systems from mobile apps to AI-powered backends.";

  // SKILLS

  static const Map<String, List<String>> skills = {

    "Frontend": [
      "Flutter",
      "React",
      "React Native",
      "JavaScript",
      "TypeScript",
      "Vite",
      "Tailwind CSS",
    ],

    "Backend": [
      "Django",
      "Express.js",
      "Node.js",
      "Python",
    ],

    "Database": [
      "MongoDB",
      "MySQL",
      "SQLite",
    ],

    "ML & Data": [
      "TensorFlow",
      "OpenCV",
      "NumPy",
      "Pandas",
      "Matplotlib",
    ],

    "Languages": [
      "Python",
      "Java",
      "JavaScript",
      "TypeScript",
      "Dart",
      "C",
    ],
  };

  // PROJECTS

  static const List<Map<String, dynamic>> projects = [

    {
      "title": "AquaSense",
      "description":
          "Smart water quality monitoring system with ML-powered anomaly detection.",
      "tech": [
        "Flutter",
        "Django",
        "ML"
      ],
      "github":
          "https://github.com/Tharanitharan30/aquasense",
    },

    {
      "title": "TaxPal",
      "description":
          "Tax calculator and expense tracking platform.",
      "tech": [
        "React",
        "Express.js",
        "MongoDB"
      ],
      "github":
          "https://github.com/Tharanitharan30/Taxpal",
    },

    {
      "title":
          "Movie Recommendation System",
      "description":
          "AI-powered movie recommendation engine.",
      "tech": [
        "React",
        "Django",
        "PostgreSQL"
      ],
      "github":
          "https://github.com/Tharanitharan30/Movie-Recommendation",
    },

    {
      "title":
          "Brain Tumor Classifier",
      "description":
          "MRI classification using EfficientNet.",
      "tech": [
        "Python",
        "TensorFlow",
        "OpenCV"
      ],
      "github":
          "https://github.com/Tharanitharan30/Disease-prediction",
    },
  ];

  // CERTIFICATES

  static const List<Map<String, String>>
      certificates = [

    {
      "title": "VIHANSA",
      "organizer":
          "Sri Ramakrishna Institute of Technology",
      "year": "2026",
    },

    {
      "title": "Theerv'ATHON",
      "organizer":
          "PSG College of Arts and Science",
      "year": "2025",
    },

    {
      "title": "Vidyut'25",
      "organizer":
          "Karpagam College of Engineering",
      "year": "2025",
    },

    {
      "title": "Hack 4 Impact",
      "organizer":
          "Karpagam Academy of Higher Education",
      "year": "2025",
    },
    
  ];

  // EXPERIENCE

  static const List<Map<String, dynamic>>
      experiences = [

    {
      "role":
          "Gen AI Developer Intern",
      "company":
          "STASIS ARTIS",
      "duration":
          "Present",
      "skills": [
        "Gen AI",
        "Python",
        "Prompt Engineering"
      ]
    },

    {
      "role":
          "ML Engineer Intern",
      "company":
          "Nativeva",
      "duration":
          "1 Month",
      "skills": [
        "TensorFlow",
        "OpenCV",
        "Python"
      ]
    },

    {
      "role":
          "Full Stack Developer Intern",
      "company":
          "Infosys",
      "duration":
          "3 Months",
      "skills": [
        "React",
        "Express.js",
        "MongoDB"
      ]
    },
  ];

  // EDUCATION

  static const List<Map<String, String>>
      education = [

    {
      "institution":
          "Karpagam Academy of Higher Education",

      "degree":
          "B.E Computer Science and Engineering",

      "duration":
          "2024 - 2028",
    }
  ];
}