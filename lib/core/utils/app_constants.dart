import 'package:portfolio/core/utils/app_strings.dart';
import 'package:portfolio/data/models/work_experience.dart';

import '../../data/models/custom_service.dart';
import '../../data/models/project.dart';
import 'app_assets.dart';

abstract class AppConstants {
  static const double appBarHeight = 80;
  static const List<ListItem> services = [
    ListItem(
      service: 'Electrical Engineering',
      logo: AppAssets.elecEngLogo,
      description:
          'My strong mathematical skills allow me to be an exceptional signals processing and systems design engineer.',
    ),
    ListItem(
      service: 'Applied Mathematics',
      logo: AppAssets.appMathLogo,
      description:
          'I am a skilled Applied Mathematician. I have a strong background in modelling systems and numerical analysis techniques.',
    ),
    ListItem(
      service: 'Computer Engineering',
      logo: AppAssets.compEngLogo,
      description:
          'I have advanced high performance computer system design skills from hardware abstraction to simulations using VHDL.',
    )
  ];
  static const List<ListItem> courses = [
    ListItem(
      service: 'Machine Learning',
      logo: AppAssets.machineLogo,
      description:
          'I have a successfully completed advanced ML courses with a focus on supervised and unsupervised training methods.',
    ),
    ListItem(
      service: 'Physics',
      logo: AppAssets.physicsLogo,
      description:
          'I am a Junior Physicist. Graduated top of the class with a strong understanding of classical and modern physics principles.',
    ),
    ListItem(
      service: 'Computer Science',
      logo: AppAssets.compSciLogo,
      description:
          'Strong analytical and problem solving skills allow me to be a prolific computer programmer with a strong computer science background.',
    ),
  ];

  //COMPUTER ENGINEERING SKILLS ROW 1
  static const List<ListItem> compEngSkillsRow0 = [
    ListItem(
      service: 'C/C++',
      logo: AppAssets.cppLogo,
      description: 'Advanced',
    ),
    ListItem(
      service: 'OpenCL',
      logo: AppAssets.openClLogo,
      description: 'Advanced',
    ),
    ListItem(
      service: 'MPI',
      logo: AppAssets.mpi2Logo,
      description: 'Advanced',
    ),
  ];

  //COMP ENGINEERING SKILLS ROW 2
  static const List<ListItem> compEngSkillsRow1 = [
    ListItem(
      service: 'Hardware Acceleration',
      logo: AppAssets.embeddedLogo,
      description: 'Advanced',
    ),
    ListItem(
      service: 'Verilog/VHDL',
      logo: AppAssets.verilogLogo,
      description: 'Advanced',
    ),
    ListItem(
      service: 'Digital System Design',
      logo: AppAssets.cpuLogo,
      description: 'Advanced',
    ),
  ];

  //ELEC ENGINEERING SKILLS ROW 3
  static const List<ListItem> elecEngSkillsRow0 = [
    ListItem(
      service: 'Digital Signals Processing',
      logo: AppAssets.dspLogo,
      description: 'Advanced',
    ),
    ListItem(
      service: 'Engineering System Design',
      logo: AppAssets.engDesignLogo,
      description: 'Advanced',
    ),
    ListItem(
      service: 'Electromagnetic Engineering',
      logo: AppAssets.emEngLogo,
      description: 'Advanced',
    ),
  ];

  //ELEC ENG SKILLS ROW 3
  static const List<ListItem> elecEngSkillsRow1 = [
    ListItem(
      service: 'Embedded Systems',
      logo: AppAssets.circuitLogo,
      description: 'Advanced',
    ),
    ListItem(
      service: 'Communications Engineering',
      logo: AppAssets.elecEngLogo,
      description: 'Highly Proficient',
    ),
    ListItem(
      service: 'Control Engineering',
      logo: AppAssets.controlLogo,
      description: 'Proficient',
    ),
  ];

  //PHYS ENG SKILLS ROW 1
  static const List<ListItem> physicsSkillsRow0 = [
    ListItem(
      service: 'Quantum Computing',
      logo: AppAssets.quantumLogo,
      description: 'Advanced',
    ),
    ListItem(
      service: 'Operations Research Methods',
      logo: AppAssets.math334Logo,
      description: 'Highly Proficient',
    ),
    ListItem(
      service: 'Real Analysis',
      logo: AppAssets.realAnLogo,
      description: 'Proficient',
    ),
  ];

  //PHYS ENG SKILLS ROW 2
  static const List<ListItem> physicsSkillsRow1 = [
    ListItem(
      service: 'Nanoscience',
      logo: AppAssets.nanoTechLogo,
      description: 'Highly Proficient',
    ),
    ListItem(
      service: 'Statistical Physics',
      logo: AppAssets.statPhysLogo,
      description: 'Highly Proficient',
    ),
    ListItem(
      service: 'Numerical Analysis',
      logo: AppAssets.numAnLogo,
      description: 'Highly Proficient',
    ),
  ];

  //COMPSCI SKILLS ROW 2
  static const List<ListItem> compSciSkillsRow0 = [
    ListItem(
      service: 'Java',
      logo: AppAssets.javaLogo,
      description: 'Advanced',
    ),
    ListItem(
      service: 'Python',
      logo: AppAssets.pythonLogo,
      description: 'Advanced',
    ),
    ListItem(
      service: 'Image Processing',
      logo: AppAssets.imagingLogo,
      description: 'Advanced',
    ),
  ];

  //COMPSCI SKILLS ROW 2
  static const List<ListItem> compSciSkillsRow1 = [
    ListItem(
      service: 'Data Structures',
      logo: AppAssets.dataStructureLogo,
      description: 'Advanced',
    ),
    ListItem(
      service: 'SQL',
      logo: AppAssets.sqlLogo,
      description: 'Highly Proficient',
    ),
    ListItem(
      service: 'Mobile Development',
      logo: AppAssets.flutterLogo,
      description: 'Advanced',
    ),
  ];

  static const List<Project> projects = [
    Project(
      name: 'Scalio',
      imageUrl: AppAssets.scalioLogo,
      description:
          'A bird-weight acquisition system for ornothological research consisting of 4 subsystems: Scale; Data Acquisition; Power; and User Interface.',
      githubRepoLink:
          'https://github.com/Kananelo688/Drongos-Weight-Scale-Design',
      previewLink: 'https://www.youtube.com/watch?v=z5P_QfJFAJg',
    ),
    Project(
      name: 'SCISSOR',
      imageUrl: AppAssets.svmLogo,
      description:
          'Simple Component Identification System for Symbolic Object Recognition is an SVM-based model for classifying handrawn electronic circuit components for enabling handrawing recognition in electronic design software.',
      githubRepoLink: 'https://github.com/BongaNjamela001/ML-Project',
      previewLink: 'https://www.youtube.com/watch?v=efR1C6CvhmE',
    ),
    Project(
      name: 'Accelerated Imaging',
      imageUrl: AppAssets.imagingfpgaLogo,
      description:
          'Collaborative design, simulation and development of a pipe-lined system that can perform median filtering and edge detection FPGA simulations on Vivado Xilinx and run on the NEXYS A7 FPGA.',
      githubRepoLink: 'https://github.com/karanimaan/YODA--Image-Processing',
      previewLink:
          'https://www.youtube.com/watch?v=Kt-78I-NUgY&list=PLI3SAEKwilEBeeBjIJb1Pelxrv3xL4RwV',
    ),
    Project(
      name: 'Heterogenous Computing',
      imageUrl: AppAssets.openclLogo,
      description: 'Implementation of matrix multiplication using OpenCL.',
      githubRepoLink:
          'https://github.com/BongaNjamela001/OpenCL-Matrix-Multiplication',
      previewLink: 'https://www.youtube.com/watch?v=aKtpZuokeEk',
    ),
    Project(
      name: 'Verilog Design',
      imageUrl: AppAssets.tscLogo,
      description:
          'Implements a Trigger Surround Cache (TSC) module using Verilog. The TSC module is designed as part of a transient trigger detection system, which is used to detect environmental changes or signals from other parts of a system.',
      githubRepoLink:
          'https://github.com/BongaNjamela001/trigger-surround-cache',
      previewLink: 'https://www.youtube.com/watch?v=tzxaf-CNU3Q',
    ),
    Project(
      name: 'Bubblesort MPI',
      imageUrl: AppAssets.bubbleLogo,
      description:
          'Project investigating the performance of a bubble-sort algorithm implemented using MPI (Message Passing Interface) compared to a MATLAB implementation.',
      githubRepoLink:
          'https://github.com/BongaNjamela001/message-passing-interface-demo',
      previewLink: 'https://www.youtube.com/watch?v=uJLwnsLn0_Q',
    ),
    Project(
        name: 'Acoustic Triangulation',
        imageUrl: AppAssets.acousticLogo,
        description:
            "Collaborative work to design and develop an acoustic triangulation system using two Raspberry Pi Zero's and 4 MEMS microphones.",
        previewLink: 'https://www.youtube.com/watch?v=hxsMbl1AFXw&t=129s',
        githubRepoLink:
            'https://github.com/BongaNjamela001/Acoustic-Triangulation-System'),
    Project(
      name: 'System Identification',
      imageUrl: AppAssets.helicopterLogo,
      description:
          'Involves applications of control systems design techniques for modelling and characterisation of open loop control systems and closed loop systems.',
      previewLink: 'https://www.youtube.com/watch?v=PwlntnWtqJc',
      githubRepoLink:
          'https://github.com/BongaNjamela001/Control-Engineering-Projects',
    ),
  ];

  static const List<WorkExperience> workExperienceList = [
    WorkExperience(
        institution: AppStrings.uct,
        position: AppStrings.uctTutor,
        numberOfYears: AppStrings.uctTutorDuration,
        responsibilities: AppStrings.uctTutorResp,
        skills: AppStrings.uctTutorSkills,
        institutionLogo: AppAssets.uctLogo),
    WorkExperience(
        institution: AppStrings.ukzn,
        position: AppStrings.demonstrator,
        numberOfYears: AppStrings.demonstratorDuration,
        responsibilities: AppStrings.demonstratorResp,
        skills: AppStrings.demonstratorSkills,
        institutionLogo: AppAssets.ukznLogo),
    WorkExperience(
        institution: AppStrings.exclusiveBooks,
        position: AppStrings.bookSeller,
        numberOfYears: AppStrings.exclusiveBooksDuration,
        responsibilities: AppStrings.exclusiveBooksResp,
        skills: AppStrings.bookSellerSkills,
        institutionLogo: AppAssets.exclusiveBooksLogo),
  ];

  static const List<WorkExperience> extraExperienceList = [
    WorkExperience(
        institution: AppStrings.ewb,
        position: AppStrings.ewbPos,
        numberOfYears: AppStrings.ewbDuration,
        responsibilities: AppStrings.ewbResp,
        skills: AppStrings.uctTutorSkills,
        institutionLogo: AppAssets.ewbLogo),
    WorkExperience(
        institution: AppStrings.pitch,
        position: AppStrings.pitchPos,
        numberOfYears: AppStrings.pitchDuration,
        responsibilities: AppStrings.pitchResp,
        skills: AppStrings.demonstratorSkills,
        institutionLogo: AppAssets.pitchLogo),
    WorkExperience(
        institution: AppStrings.gsacademy,
        position: AppStrings.gsacademyPos,
        numberOfYears: AppStrings.gsacademyDuration,
        responsibilities: AppStrings.gsacademyResp,
        skills: AppStrings.bookSellerSkills,
        institutionLogo: AppAssets.gsacademyLogo),
  ];
}
