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

  /// `BIENVENIDO`
  String get index_title {
    return Intl.message(
      'BIENVENIDO',
      name: 'index_title',
      desc: '',
      args: [],
    );
  }

  /// `Mi nombre es Alejandro Ramos, soy un desarrollador de software aficionado a la música y el diseño. Me encanta aprender de todo y crear de todo. Déjame mostrarte...`
  String get index_message {
    return Intl.message(
      'Mi nombre es Alejandro Ramos, soy un desarrollador de software aficionado a la música y el diseño. Me encanta aprender de todo y crear de todo. Déjame mostrarte...',
      name: 'index_message',
      desc: '',
      args: [],
    );
  }

  /// `ENTRAR`
  String get index_button {
    return Intl.message(
      'ENTRAR',
      name: 'index_button',
      desc: '',
      args: [],
    );
  }

  /// `Idioma`
  String get languages {
    return Intl.message(
      'Idioma',
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

  /// `Aplicaciones de escritorio,\naplicaciones móviles,\npáginas web, videojuegos.`
  String get software_descrition {
    return Intl.message(
      'Aplicaciones de escritorio,\naplicaciones móviles,\npáginas web, videojuegos.',
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

  /// `Logotipos, interfaces,\npersonajes, sprites,\nanimaciones.`
  String get design_descrition {
    return Intl.message(
      'Logotipos, interfaces,\npersonajes, sprites,\nanimaciones.',
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

  /// `Composiciones,\narreglos, mezclas,\npartituras.`
  String get music_descrition {
    return Intl.message(
      'Composiciones,\narreglos, mezclas,\npartituras.',
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

  /// `Videos sobre\ntodo aquello que\nme apasiona.`
  String get audiovisual_descrition {
    return Intl.message(
      'Videos sobre\ntodo aquello que\nme apasiona.',
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

  /// `Empresa de tegnología enfocada en desarrollar software educativo para mejorar la calidad de la educación básica, mediante diferentes aplicaciones de aprendizaje interactivo.`
  String get special_01_description {
    return Intl.message(
      'Empresa de tegnología enfocada en desarrollar software educativo para mejorar la calidad de la educación básica, mediante diferentes aplicaciones de aprendizaje interactivo.',
      name: 'special_01_description',
      desc: '',
      args: [],
    );
  }

  /// `Próximamente`
  String get special_02_title {
    return Intl.message(
      'Próximamente',
      name: 'special_02_title',
      desc: '',
      args: [],
    );
  }

  /// `Próximamente...`
  String get special_02_description {
    return Intl.message(
      'Próximamente...',
      name: 'special_02_description',
      desc: '',
      args: [],
    );
  }

  /// `Ver proyectos`
  String get projects_button {
    return Intl.message(
      'Ver proyectos',
      name: 'projects_button',
      desc: '',
      args: [],
    );
  }

  /// `Ver proyecto`
  String get special_project_button {
    return Intl.message(
      'Ver proyecto',
      name: 'special_project_button',
      desc: '',
      args: [],
    );
  }

  /// `Contacto`
  String get contact {
    return Intl.message(
      'Contacto',
      name: 'contact',
      desc: '',
      args: [],
    );
  }

  /// `MIS REDES SOCIALES`
  String get social_media {
    return Intl.message(
      'MIS REDES SOCIALES',
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

  /// `ESCRÍBEME EN`
  String get write_me {
    return Intl.message(
      'ESCRÍBEME EN',
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

  /// `ESCRIBE UN MENSAJE`
  String get writing_screen {
    return Intl.message(
      'ESCRIBE UN MENSAJE',
      name: 'writing_screen',
      desc: '',
      args: [],
    );
  }

  /// `Nombre`
  String get first_name {
    return Intl.message(
      'Nombre',
      name: 'first_name',
      desc: '',
      args: [],
    );
  }

  /// `Apellido`
  String get last_name {
    return Intl.message(
      'Apellido',
      name: 'last_name',
      desc: '',
      args: [],
    );
  }

  /// `Correo electrónico`
  String get email {
    return Intl.message(
      'Correo electrónico',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Mensaje...`
  String get message {
    return Intl.message(
      'Mensaje...',
      name: 'message',
      desc: '',
      args: [],
    );
  }

  /// `Enviar mensaje`
  String get send_message {
    return Intl.message(
      'Enviar mensaje',
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

  /// `MÁS SOBRE MÍ`
  String get blog_title {
    return Intl.message(
      'MÁS SOBRE MÍ',
      name: 'blog_title',
      desc: '',
      args: [],
    );
  }

  /// `Si quieres conocer más sobre mi vida y mi trabajo, te invito a leer mi blog personal, y demás escritos...`
  String get blog_message {
    return Intl.message(
      'Si quieres conocer más sobre mi vida y mi trabajo, te invito a leer mi blog personal, y demás escritos...',
      name: 'blog_message',
      desc: '',
      args: [],
    );
  }

  /// `ENTRAR`
  String get blog_button {
    return Intl.message(
      'ENTRAR',
      name: 'blog_button',
      desc: '',
      args: [],
    );
  }

  /// `Anterior`
  String get back {
    return Intl.message(
      'Anterior',
      name: 'back',
      desc: '',
      args: [],
    );
  }

  /// `Siguiente`
  String get next {
    return Intl.message(
      'Siguiente',
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