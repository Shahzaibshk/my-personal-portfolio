part of 'values.dart';

class CertificationData {
  CertificationData({
    required this.title,
    required this.image,
    required this.imageSize,
    required this.url,
    required this.awardedBy,
  });

  final String image;
  final double imageSize;
  final String url;
  final String title;
  final String awardedBy;
}

class NoteWorthyProjectDetails {
  NoteWorthyProjectDetails({
    required this.projectName,
    required this.isOnPlayStore,
    required this.isPublic,
    required this.technologyUsed,
    required this.isWeb,
    required this.isLive,
    this.projectDescription,
    this.playStoreUrl,
    this.webUrl,
    this.hasBeenReleased,
    this.gitHubUrl,
  });

  final String projectName;
  final bool isPublic;
  final bool isOnPlayStore;
  final bool isWeb;
  final String? projectDescription;
  final bool isLive;
  final bool? hasBeenReleased;
  final String? playStoreUrl;
  final String? gitHubUrl;
  final String? webUrl;
  final String? technologyUsed;
}

class ExperienceData {
  ExperienceData({
    required this.position,
    required this.roles,
    required this.location,
    required this.duration,
    required this.company,
    this.companyUrl,
  });

  final String company;
  final String? companyUrl;
  final String location;
  final String duration;
  final String position;
  final List<String> roles;
}

class SkillData {
  SkillData({
    required this.skillName,
    required this.skillLevel,
  });

  final String skillName;
  final double skillLevel;
}

class SubMenuData {
  SubMenuData({
    required this.title,
    this.isSelected,
    this.content,
    this.skillData,
    this.isAnimation = false,
  });

  final String title;
  final String? content;
  final List<SkillData>? skillData;
  bool isAnimation;
  bool? isSelected;
}

class Data {
  static List<NavItemData> menuItems = [
    NavItemData(name: StringConst.HOME, route: StringConst.HOME_PAGE),
    NavItemData(name: StringConst.ABOUT, route: StringConst.ABOUT_PAGE),
    NavItemData(name: StringConst.WORKS, route: StringConst.WORKS_PAGE),
    NavItemData(
      name: StringConst.EXPERIENCE,
      route: StringConst.EXPERIENCE_PAGE,
    ),
    NavItemData(name: StringConst.CONTACT, route: StringConst.CONTACT_PAGE),
  ];

  static List<SocialData> socialData = [
    SocialData(
      name: StringConst.GITHUB,
      iconData: FontAwesomeIcons.github,
      url: StringConst.GITHUB_URL,
    ),
    SocialData(
      name: StringConst.LINKED_IN,
      iconData: FontAwesomeIcons.linkedin,
      url: StringConst.LINKED_IN_URL,
    ),
  ];

  static List<String> mobileTechnologies = [
    "Flutter",
    "Android",
    "IOS",
  ];

  static List<String> otherTechnologies = [
    "Firebase",
    "Google Cloud",
    "Typescript",
    "SQL",
    "Figma",
    "Git",
    "Github",
    "Stripe",
    "Stream Video",
    "Hive",
    "Riverpod",
    "Shared Pref",
  ];
  static List<SocialData> socialData1 = [
    SocialData(
      name: StringConst.GITHUB,
      iconData: FontAwesomeIcons.github,
      url: StringConst.GITHUB_URL,
    ),
    SocialData(
      name: StringConst.LINKED_IN,
      iconData: FontAwesomeIcons.linkedin,
      url: StringConst.LINKED_IN_URL,
    ),
  ];

  static List<SocialData> socialData2 = [
    SocialData(
      name: StringConst.GITHUB,
      iconData: FontAwesomeIcons.github,
      url: StringConst.GITHUB_URL,
    ),
    SocialData(
      name: StringConst.LINKED_IN,
      iconData: FontAwesomeIcons.linkedin,
      url: StringConst.LINKED_IN_URL,
    ),
  ];

  static List<ProjectItemData> recentWorks = [
    Projects.MAGNIFEST,
    Projects.VOS_HELP,
    Projects.LOGIN_CATALOG,
    Projects.OTP_TEXT_FIELD,
  ];

  static List<ProjectItemData> projects = [
    Projects.MAGNIFEST,
    Projects.VOS_HELP,
    Projects.LOGIN_CATALOG,
    Projects.OTP_TEXT_FIELD,
  ];

  static List<NoteWorthyProjectDetails> noteworthyProjects = [
    NoteWorthyProjectDetails(
      projectName: StringConst.UDAGRAM_IMAGE_FILTERING,
      isPublic: true,
      isOnPlayStore: false,
      isWeb: false,
      technologyUsed: StringConst.UDAGRAM_IMAGE_FILTERING_TECH,
      projectDescription: StringConst.UDAGRAM_IMAGE_FILTERING_DETAIL,
      gitHubUrl: StringConst.UDAGRAM_IMAGE_FILTERING_GITHUB_URL,
      isLive: false,
    ),
    NoteWorthyProjectDetails(
      projectName: StringConst.SERVERLESS_TODO,
      isPublic: true,
      isOnPlayStore: false,
      isWeb: false,
      technologyUsed: StringConst.SERVERLESS_TODO_TECH,
      projectDescription: StringConst.SERVERLESS_TODO_DETAIL,
      gitHubUrl: StringConst.SERVERLESS_TODO_GITHUB_URL,
      isLive: false,
    ),
    NoteWorthyProjectDetails(
      projectName: StringConst.PYTHON_ALGORITHMS,
      isPublic: true,
      isOnPlayStore: false,
      isWeb: false,
      technologyUsed: StringConst.PYTHON,
      projectDescription: StringConst.PYTHON_ALGORITHMS_DETAIL,
      gitHubUrl: StringConst.PYTHON_ALGORITHMS_GITHUB_URL,
      isLive: false,
    ),
    NoteWorthyProjectDetails(
      projectName: StringConst.PROGRAMMING_FOR_DATA_SCIENCE,
      isPublic: true,
      isOnPlayStore: false,
      isWeb: false,
      technologyUsed: StringConst.PYTHON,
      projectDescription: StringConst.PROGRAMMING_FOR_DATA_SCIENCE_DETAIL,
      gitHubUrl: StringConst.PROGRAMMING_FOR_DATA_SCIENCE_GITHUB_URL,
      isLive: false,
    ),
    NoteWorthyProjectDetails(
      projectName: StringConst.ONBOARDING_APP,
      isPublic: true,
      isOnPlayStore: false,
      isWeb: false,
      technologyUsed: StringConst.FLUTTER,
      projectDescription: StringConst.ONBOARDING_APP_DETAIL,
      gitHubUrl: StringConst.ONBOARDING_APP_GITHUB_URL,
      isLive: false,
    ),
    NoteWorthyProjectDetails(
      projectName: StringConst.FINOPP,
      isPublic: true,
      isOnPlayStore: false,
      isWeb: false,
      technologyUsed: StringConst.FLUTTER,
      projectDescription: StringConst.FINOPP_DETAIL,
      gitHubUrl: StringConst.FINOPP_GITHUB_URL,
      isLive: false,
    ),
    NoteWorthyProjectDetails(
      projectName: StringConst.AMOR_APP,
      isPublic: true,
      isOnPlayStore: false,
      isWeb: true,
      technologyUsed: StringConst.FLUTTER,
      projectDescription: StringConst.AMOR_APP_DETAIL,
      gitHubUrl: StringConst.AMOR_APP_GITHUB_URL,
      webUrl: StringConst.AMOR_APP_WEB_URL,
      isLive: true,
    ),
  ];

  static List<CertificationData> certificationData = [
    CertificationData(
      title: StringConst.MSC_IT,
      url: StringConst.CMU_CERT_URL,
      image: ImagePath.CMU_MASTERS_CERT,
      imageSize: 0.325,
      awardedBy: StringConst.CMU,
    ),
    CertificationData(
      title: StringConst.ASSOCIATE_ANDROID_DEV,
      url: StringConst.ASSOCIATE_ANDROID_DEV_URL,
      image: ImagePath.ASSOCIATE_ANDROID_DEV,
      imageSize: 0.325,
      awardedBy: StringConst.GOOGLE,
    ),
    CertificationData(
      title: StringConst.CLOUD_DEVELOPER,
      url: StringConst.CLOUD_DEVELOPER_URL,
      image: ImagePath.CLOUD_DEVELOPER_CERT,
      imageSize: 0.325,
      awardedBy: StringConst.UDACITY,
    ),
    CertificationData(
      title: StringConst.DATA_SCIENCE,
      url: StringConst.DATA_SCIENCE_CERT_URL,
      image: ImagePath.DATA_SCIENCE_CERT,
      imageSize: 0.325,
      awardedBy: StringConst.UDACITY,
    ),
    CertificationData(
      title: StringConst.ANDROID_BASICS,
      url: StringConst.ANDROID_BASICS_CERT_URL,
      image: ImagePath.ANDROID_BASICS_CERT,
      imageSize: 0.325,
      awardedBy: StringConst.UDACITY,
    ),
  ];

  static List<ExperienceData> experienceData = [
    ExperienceData(
      company: StringConst.COMPANY_2,
      position: StringConst.POSITION_2,
      companyUrl: StringConst.COMPANY_2_URL,
      roles: [
        StringConst.COMPANY_2_ROLE_1,
        StringConst.COMPANY_2_ROLE_2,
        StringConst.COMPANY_2_ROLE_3,
      ],
      location: StringConst.LOCATION_2,
      duration: StringConst.DURATION_2,
    ),
    ExperienceData(
      company: StringConst.COMPANY_1,
      position: StringConst.POSITION_1,
      companyUrl: StringConst.COMPANY_1_URL,
      roles: [
        StringConst.COMPANY_1_ROLE_1,
        StringConst.COMPANY_1_ROLE_2,
        StringConst.COMPANY_1_ROLE_3,
      ],
      location: StringConst.LOCATION_1,
      duration: StringConst.DURATION_1,
    ),
  ];
}

class Projects {
  static ProjectItemData MAGNIFEST = ProjectItemData(
    title: StringConst.MAGNIFEST,
    subtitle: StringConst.MAGNIFEST_SUBTITLE,
    platform: StringConst.MAGNIFEST_PLATFORM,
    primaryColor: AppColors.magnifest,
    image: ImagePath.MAGNIFEST_COVER,
    coverUrl: ImagePath.MAGNIFEST_COVER,
    category: StringConst.MAGNIFEST_CATEGORY,
    navTitleColor: AppColors.magnifestNavTitle,
    navSelectedTitleColor: AppColors.magnifestSelectedNavTitle,
    appLogoColor: AppColors.magnifestAppLogo,
    projectAssets: [
      ImagePath.MAGNIFEST_OVERVIEW,
      ImagePath.MAGNIFEST_DETAILED,
      ImagePath.MAGNIFEST_COMPLETE_OVERVIEW,
    ],
    portfolioDescription: StringConst.MAGNIFEST_DETAIL,
    isPublic: false,
    isOnPlayStore: false,
    technologyUsed: StringConst.FLUTTER,
    gitHubUrl: StringConst.MAGNIFEST_GITHUB_URL,
    playStoreUrl: StringConst.MAGNIFEST_PLAYSTORE_URL,
  );
  static ProjectItemData VOS_HELP = ProjectItemData(
    title: StringConst.VOS_HELP,
    subtitle: StringConst.VOS_HELP_SUBTITLE,
    platform: StringConst.VOS_HELP_PLATFORM,
    primaryColor: AppColors.vosHelp,
    image: ImagePath.VOS_HELP_COVER,
    coverUrl: ImagePath.VOS_HELP_COVER,
    category: StringConst.VOS_HELP_CATEGORY,
    navTitleColor: AppColors.vosHelpNavTitle,
    navSelectedTitleColor: AppColors.vosHelpSelectedNavTitle,
    appLogoColor: AppColors.vosHelpAppLogo,
    projectAssets: [
      ImagePath.VOS_HELP_DESC,
      ImagePath.VOS_HELP_APPOINTMENT,
      ImagePath.VOS_HELP_DETAILED,
      ImagePath.VOS_HELP_THANKYOU,
    ],
    portfolioDescription: StringConst.VOS_HELP_DETAIL,
    isPublic: false,
    isOnPlayStore: false,
    technologyUsed: StringConst.FLUTTER,
    gitHubUrl: StringConst.VOS_HELP_GITHUB_URL,
    playStoreUrl: StringConst.VOS_HELP_PLAYSTORE_URL,
  );
  static ProjectItemData LOGIN_CATALOG = ProjectItemData(
    title: StringConst.LOGIN_CATALOG,
    primaryColor: AppColors.login_catalog,
    subtitle: StringConst.LOGIN_CATALOG,
    category: StringConst.LOGIN_CATALOG_CATEGORY,
    platform: StringConst.LOGIN_CATALOG_PLATFORM,
    image: ImagePath.LOGIN_CATALOG_COVER,
    coverUrl: ImagePath.LOGIN_CATALOG_COVER,
    portfolioDescription: StringConst.LOGIN_CATALOG_DETAIL,
    navTitleColor: AppColors.loginCatalogNavTitle,
    navSelectedTitleColor: AppColors.loginCatalogSelectedNavTitle,
    appLogoColor: AppColors.loginCatalogAppLogo,
    projectAssets: [
      ImagePath.LOGIN_DESIGN_4,
      ImagePath.LOGIN_DESIGN_5,
      ImagePath.LOGIN_DESIGN_7,
      ImagePath.LOGIN_DESIGN_8,
      ImagePath.LOGIN_DESIGN_9,
    ],
    isPublic: true,
    isOnPlayStore: true,
    technologyUsed: StringConst.FLUTTER,
    gitHubUrl: StringConst.LOGIN_CATALOG_GITHUB_URL,
    playStoreUrl: StringConst.LOGIN_CATALOG_PLAYSTORE_URL,
  );
  static ProjectItemData OTP_TEXT_FIELD = ProjectItemData(
    title: StringConst.OTP_TEXT_FIELD,
    subtitle: StringConst.OTP_TEXT_FIELD_SUBTITLE,
    category: StringConst.OTP_TEXT_FIELD_CATEGORY,
    primaryColor: AppColors.otp_package,
    platform: StringConst.OTP_TEXT_FIELD_PLATFORM,
    image: ImagePath.OTP_TEXTFIELD_COVER,
    coverUrl: ImagePath.OTP_TEXTFIELD_COVER,
    portfolioDescription: StringConst.OTP_TEXT_FIELD_DETAIL,
    navTitleColor: AppColors.otpPackageNavTitle,
    navSelectedTitleColor: AppColors.otpPackageSelectedNavTitle,
    appLogoColor: AppColors.otpPackageAppLogo,
    isPublic: true,
    isLive: true,
    technologyUsed: StringConst.FLUTTER,
    gitHubUrl: StringConst.OTP_TEXT_FIELD_GITHUB_URL,
    webUrl: StringConst.OTP_TEXT_FIELD_WEB_URL,
  );
}
