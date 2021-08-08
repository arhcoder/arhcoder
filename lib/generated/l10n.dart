// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values

class S {
  S();
  
  static S current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      S.current = S();
      
      return S.current;
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `WELCOME`
  String get index_title {
    return Intl.message(
      'WELCOME',
      name: 'index_title',
      desc: '',
      args: [],
    );
  }

  /// `My name is Alejandro Ramos, I'm a software developer, music lover and design hobbyist. I love learning everything and creating everything. Let me show you...`
  String get index_message {
    return Intl.message(
      'My name is Alejandro Ramos, I\'m a software developer, music lover and design hobbyist. I love learning everything and creating everything. Let me show you...',
      name: 'index_message',
      desc: '',
      args: [],
    );
  }

  /// `ENTER`
  String get index_button {
    return Intl.message(
      'ENTER',
      name: 'index_button',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get languages {
    return Intl.message(
      'Language',
      name: 'languages',
      desc: '',
      args: [],
    );
  }

  /// `Español`
  String get spanish {
    return Intl.message(
      'Español',
      name: 'spanish',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get english {
    return Intl.message(
      'English',
      name: 'english',
      desc: '',
      args: [],
    );
  }

  /// `Projetcs`
  String get projects {
    return Intl.message(
      'Projetcs',
      name: 'projects',
      desc: '',
      args: [],
    );
  }

  /// `MY PROJECTS`
  String get normal_projects {
    return Intl.message(
      'MY PROJECTS',
      name: 'normal_projects',
      desc: '',
      args: [],
    );
  }

  /// `Software`
  String get software_title {
    return Intl.message(
      'Software',
      name: 'software_title',
      desc: '',
      args: [],
    );
  }

  /// `Desktop applications,\nMobile applications,\nWebsites, Videogames.`
  String get software_descrition {
    return Intl.message(
      'Desktop applications,\nMobile applications,\nWebsites, Videogames.',
      name: 'software_descrition',
      desc: '',
      args: [],
    );
  }

  /// `Design`
  String get design_title {
    return Intl.message(
      'Design',
      name: 'design_title',
      desc: '',
      args: [],
    );
  }

  /// `User UI/UX intarfaces,\nLogos, Sprites,\nAnimations.`
  String get design_descrition {
    return Intl.message(
      'User UI/UX intarfaces,\nLogos, Sprites,\nAnimations.',
      name: 'design_descrition',
      desc: '',
      args: [],
    );
  }

  /// `Music`
  String get music_title {
    return Intl.message(
      'Music',
      name: 'music_title',
      desc: '',
      args: [],
    );
  }

  /// `Compositions,\nArrangements, Mixes,\nScores.`
  String get music_descrition {
    return Intl.message(
      'Compositions,\nArrangements, Mixes,\nScores.',
      name: 'music_descrition',
      desc: '',
      args: [],
    );
  }

  /// `Audiovisual`
  String get audiovisual_title {
    return Intl.message(
      'Audiovisual',
      name: 'audiovisual_title',
      desc: '',
      args: [],
    );
  }

  /// `Videos about\neverything I'm\npassionate about.`
  String get audiovisual_descrition {
    return Intl.message(
      'Videos about\neverything I\'m\npassionate about.',
      name: 'audiovisual_descrition',
      desc: '',
      args: [],
    );
  }

  /// `SPECIAL PROJECTS`
  String get special_projects {
    return Intl.message(
      'SPECIAL PROJECTS',
      name: 'special_projects',
      desc: '',
      args: [],
    );
  }

  /// `Ensecode`
  String get special_01_title {
    return Intl.message(
      'Ensecode',
      name: 'special_01_title',
      desc: '',
      args: [],
    );
  }

  /// `Technology business focused on develop educative software to improve the quality of basic education, through different interactive learning applicactions.`
  String get special_01_description {
    return Intl.message(
      'Technology business focused on develop educative software to improve the quality of basic education, through different interactive learning applicactions.',
      name: 'special_01_description',
      desc: '',
      args: [],
    );
  }

  /// `Coming soon`
  String get special_02_title {
    return Intl.message(
      'Coming soon',
      name: 'special_02_title',
      desc: '',
      args: [],
    );
  }

  /// `Coming soon...`
  String get special_02_description {
    return Intl.message(
      'Coming soon...',
      name: 'special_02_description',
      desc: '',
      args: [],
    );
  }

  /// `Check projects`
  String get projects_button {
    return Intl.message(
      'Check projects',
      name: 'projects_button',
      desc: '',
      args: [],
    );
  }

  /// `Check project`
  String get special_project_button {
    return Intl.message(
      'Check project',
      name: 'special_project_button',
      desc: '',
      args: [],
    );
  }

  /// `Contact`
  String get contact {
    return Intl.message(
      'Contact',
      name: 'contact',
      desc: '',
      args: [],
    );
  }

  /// `MY SOCIAL MEDIA`
  String get social_media {
    return Intl.message(
      'MY SOCIAL MEDIA',
      name: 'social_media',
      desc: '',
      args: [],
    );
  }

  /// `@arhcoder`
  String get my_instagram {
    return Intl.message(
      '@arhcoder',
      name: 'my_instagram',
      desc: '',
      args: [],
    );
  }

  /// `ARH Coder`
  String get my_youtube {
    return Intl.message(
      'ARH Coder',
      name: 'my_youtube',
      desc: '',
      args: [],
    );
  }

  /// `@arhcoder`
  String get my_twitter {
    return Intl.message(
      '@arhcoder',
      name: 'my_twitter',
      desc: '',
      args: [],
    );
  }

  /// `arhcoder`
  String get my_github {
    return Intl.message(
      'arhcoder',
      name: 'my_github',
      desc: '',
      args: [],
    );
  }

  /// `WRITE ME`
  String get write_me {
    return Intl.message(
      'WRITE ME',
      name: 'write_me',
      desc: '',
      args: [],
    );
  }

  /// `ARH Coder | Messenger`
  String get my_messenger {
    return Intl.message(
      'ARH Coder | Messenger',
      name: 'my_messenger',
      desc: '',
      args: [],
    );
  }

  /// `arhcoder@gmail.com`
  String get my_gmail {
    return Intl.message(
      'arhcoder@gmail.com',
      name: 'my_gmail',
      desc: '',
      args: [],
    );
  }

  /// `contacto@arhcoder.com`
  String get my_email {
    return Intl.message(
      'contacto@arhcoder.com',
      name: 'my_email',
      desc: '',
      args: [],
    );
  }

  /// `WRITE ME A MESSAGE`
  String get writing_screen {
    return Intl.message(
      'WRITE ME A MESSAGE',
      name: 'writing_screen',
      desc: '',
      args: [],
    );
  }

  /// `First name`
  String get first_name {
    return Intl.message(
      'First name',
      name: 'first_name',
      desc: '',
      args: [],
    );
  }

  /// `Last name`
  String get last_name {
    return Intl.message(
      'Last name',
      name: 'last_name',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Message...`
  String get message {
    return Intl.message(
      'Message...',
      name: 'message',
      desc: '',
      args: [],
    );
  }

  /// `Send message`
  String get send_message {
    return Intl.message(
      'Send message',
      name: 'send_message',
      desc: '',
      args: [],
    );
  }

  /// `Blog`
  String get blog {
    return Intl.message(
      'Blog',
      name: 'blog',
      desc: '',
      args: [],
    );
  }

  /// `MORE ABOUT ME`
  String get blog_title {
    return Intl.message(
      'MORE ABOUT ME',
      name: 'blog_title',
      desc: '',
      args: [],
    );
  }

  /// `If you want to know more about my life and my job, I invite you to read my pesonal blog, and my other writings...`
  String get blog_message {
    return Intl.message(
      'If you want to know more about my life and my job, I invite you to read my pesonal blog, and my other writings...',
      name: 'blog_message',
      desc: '',
      args: [],
    );
  }

  /// `ENTER`
  String get blog_button {
    return Intl.message(
      'ENTER',
      name: 'blog_button',
      desc: '',
      args: [],
    );
  }

  /// `Back`
  String get back {
    return Intl.message(
      'Back',
      name: 'back',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'es'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}