import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'es'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? esText = '',
  }) =>
      [enText, esText][languageIndex] ?? '';
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // LoginSignUp
  {
    '4a3pa2gw': {
      'en': 'Your email address',
      'es': 'Su dirección de correo electrónico',
    },
    'bja2kkp5': {
      'en': 'Enter your email',
      'es': 'Introduce tu correo electrónico',
    },
    'ipp9tx5m': {
      'en': 'Your password',
      'es': 'Tu contraseña',
    },
    'm1cq3ws0': {
      'en': 'Enter your password',
      'es': 'Ingresa tu contraseña',
    },
    'jpwxtl13': {
      'en': 'Forgot password?',
      'es': '¿Se te olvidó tu contraseña?',
    },
    'mu4o1p9l': {
      'en': 'Login',
      'es': 'Acceso',
    },
    'um6slquo': {
      'en': 'Register',
      'es': 'Registro',
    },
    'xrd64cqy': {
      'en': 'Login with Google',
      'es': 'Iniciar sesión con Google',
    },
    '52esfju7': {
      'en': 'Login as Guest',
      'es': 'Iniciar sesión como invitado',
    },
    'hd92tpjn': {
      'en': 'Welcome!',
      'es': '¡Bienvenidos!',
    },
    '4uc0wv4r': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // CreateAccount
  {
    '8j63xlg2': {
      'en': 'Fill in the information below to access the app',
      'es': 'Complete la siguiente información para acceder a la aplicación',
    },
    'i6mdb7ta': {
      'en': 'Your name',
      'es': 'Su nombre',
    },
    'cenlj14c': {
      'en': 'Enter your name',
      'es': 'Introduzca su nombre',
    },
    'o1hmmxkg': {
      'en': 'Your email address',
      'es': 'Su dirección de correo electrónico',
    },
    'gg7qq1s1': {
      'en': 'Enter your email',
      'es': 'Introduce tu correo electrónico',
    },
    'jsivvp6t': {
      'en': 'Password',
      'es': 'Contraseña',
    },
    'pjj22sas': {
      'en': 'Enter your password',
      'es': 'Ingresa tu contraseña',
    },
    '507xmy34': {
      'en': 'Confirm Password',
      'es': 'Confirmar contraseña',
    },
    'bz928kwm': {
      'en': 'Enter your password',
      'es': 'Ingresa tu contraseña',
    },
    'mezgw3wi': {
      'en': 'Terms of Service',
      'es': 'Términos de servicio',
    },
    's7x4xvoe': {
      'en': 'I agree to the terms of service.',
      'es': 'Estoy de acuerdo con los términos de servicio.',
    },
    'mznzqs4z': {
      'en': 'Create Account',
      'es': 'Crear una cuenta',
    },
    '71gs3hsk': {
      'en': 'Sign in with Google',
      'es': 'Inicia sesión con Google',
    },
    'fnszfdbh': {
      'en': 'Create Account ',
      'es': 'Crear una cuenta',
    },
    'ty8quj4b': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // Categories
  {
    'yb1ldhsm': {
      'en': 'Search products...',
      'es': 'Buscar Productos...',
    },
    'fybkp7d5': {
      'en': 'Categories',
      'es': 'Categorías',
    },
    'z1vrrzyv': {
      'en': 'Electronics',
      'es': 'Electrónica',
    },
    'fr64ninc': {
      'en': 'Toys',
      'es': 'Juguetes',
    },
    'ob4d59rj': {
      'en': 'Tools',
      'es': 'Instrumentos',
    },
    'zvkxbpgb': {
      'en': 'Jewelry ',
      'es': 'Joyas',
    },
    'y0jf2ecs': {
      'en': 'Clothing',
      'es': 'Ropa',
    },
    'l9xleue1': {
      'en': 'Whole Foods',
      'es': 'Alimentos integrales',
    },
    '0s9sexkg': {
      'en': 'Books',
      'es': 'Libros',
    },
    'oi7vt6fo': {
      'en': 'Videogames',
      'es': 'Videojuegos',
    },
    'b8n8f0s0': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // Results
  {
    'mfew364m': {
      'en': 'Results',
      'es': 'Resultados',
    },
    'v2n6t7ao': {
      'en': 'Products',
      'es': 'productos',
    },
  },
  // Favorites
  {
    '9gam59pr': {
      'en': 'Favorites',
      'es': 'Resultados',
    },
    't3krfshz': {
      'en': 'Favorites',
      'es': 'productos',
    },
  },
  // Electronics
  {
    'f4iarqjg': {
      'en': 'Electronics ',
      'es': 'Electrónica',
    },
    'hk1cg1lb': {
      'en': 'Products',
      'es': 'productos',
    },
  },
  // settings
  {
    '4aztt72c': {
      'en': 'Change Password',
      'es': 'Cambia la contraseña',
    },
    'na7yo2hl': {
      'en': 'Change name',
      'es': 'Cambiar nombre',
    },
    'r0988u9x': {
      'en': 'Language',
      'es': 'Idioma',
    },
    'vq2hhptb': {
      'en': 'Feedback',
      'es': 'Retroalimentación',
    },
    'hilmah6i': {
      'en': 'Log Out',
      'es': 'Cerrar sesión',
    },
    '7qtqi9pt': {
      'en': 'Settings',
      'es': 'Ajustes',
    },
  },
  // forgotpass
  {
    'ab3an5lf': {
      'en':
          'We will send you an email with a link to reset your password, please enter the email associated with your account below.',
      'es':
          'Le enviaremos un correo electrónico con un enlace para restablecer su contraseña, ingrese el correo electrónico asociado con su cuenta a continuación.',
    },
    'demn0eo1': {
      'en': 'Your email',
      'es': 'Tu correo electrónico',
    },
    'nmzd1osj': {
      'en': 'Enter your email',
      'es': 'Introduce tu correo electrónico',
    },
    'p8t1k99q': {
      'en': 'Send Link',
      'es': 'Enviar enlace',
    },
    'joj1mvtc': {
      'en': 'Forgot Password?',
      'es': '¿Has olvidado tu contraseña?',
    },
    '9kyw633m': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // passwordreset
  {
    't0jxiokh': {
      'en': 'Reset Password',
      'es': 'Restablecer la contraseña',
    },
    '9k54uctl': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // success
  {
    'vfwtxi7a': {
      'en': 'Success!',
      'es': '¡Éxito!',
    },
    '9oaapm5k': {
      'en': 'Thanks for providing your feedback',
      'es': 'Gracias por sus comentarios',
    },
    'c3c1o6jd': {
      'en': 'Home',
      'es': 'Menu Principal',
    },
    '2hu0gjrd': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // components
  {
    'b7851o0d': {
      'en': 'Page Title',
      'es': 'Título de la página',
    },
    'jj0pabcm': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // BestDeals
  {
    'j0kysbm4': {
      'en': 'Best Deals',
      'es': 'Resultados',
    },
    'jnzimuo3': {
      'en': 'Products',
      'es': 'productos',
    },
  },
  // Tools
  {
    'l4dkix40': {
      'en': 'Tools',
      'es': 'Electrónica',
    },
    '2t9nnms7': {
      'en': 'Products',
      'es': 'productos',
    },
  },
  // jewelry
  {
    'hx28qfol': {
      'en': 'Jewelry',
      'es': 'Electrónica',
    },
    '5vr49va9': {
      'en': 'Products',
      'es': 'productos',
    },
  },
  // Clothing
  {
    'z155fdd6': {
      'en': 'Clothing',
      'es': 'Electrónica',
    },
    '56urxv7k': {
      'en': 'Products',
      'es': 'productos',
    },
  },
  // WholeFoods
  {
    'cotottav': {
      'en': 'Whole Foods',
      'es': 'Electrónica',
    },
    '9nizlnl2': {
      'en': 'Products',
      'es': 'productos',
    },
  },
  // Book
  {
    '86ypgcyl': {
      'en': 'Books',
      'es': 'Electrónica',
    },
    'txkr9c6n': {
      'en': 'Products',
      'es': 'productos',
    },
  },
  // VideoGames
  {
    'jisn5jxh': {
      'en': 'Video Games',
      'es': 'Electrónica',
    },
    'qbaegpgs': {
      'en': 'Products',
      'es': 'productos',
    },
  },
  // Toys
  {
    'uzdrhfhh': {
      'en': 'Toys',
      'es': 'Resultados',
    },
    'e8ac1plk': {
      'en': 'Products',
      'es': 'productos',
    },
  },
  // templates
  {
    'frj95sye': {
      'en': 'Apple Iphone 13 Pro',
      'es': '',
    },
    '0kpa6rrc': {
      'en': '\$849.00',
      'es': '',
    },
    'pmpo7tcc': {
      'en': 'Retailed by Apple',
      'es': '',
    },
    'rcikfhcc': {
      'en': '4/5 Reviews',
      'es': '',
    },
    'wsjff2k8': {
      'en': 'DESCRIPTION',
      'es': '',
    },
    '964clnac': {
      'en':
          'Brand: Apple\nModel: IPhone 13 Pro\nOperating System: IOS\nMemory Storage Capacity: 128GB\nColor: Sierra Blue\nScreen Size: 6.1 Inches',
      'es': '',
    },
    'lsuh9azo': {
      'en': 'Amazon: \$849',
      'es': '',
    },
    'whf6lv0y': {
      'en': 'Walmart: \$149',
      'es': '',
    },
    'xywdwios': {
      'en': 'Home',
      'es': '',
    },
  },
  // test2
  {
    'qz39zmz7': {
      'en': 'Today\'s Deals',
      'es': 'Especiales de hoy',
    },
  },
  // CatReturn
  {
    'eowgfu35': {
      'en': 'All Products',
      'es': 'Todos los productos',
    },
  },
  // languages
  {
    'h8j1wx3s': {
      'en': 'English',
      'es': 'Inglés',
    },
    'nv17nub1': {
      'en': 'Spanish',
      'es': 'Español',
    },
  },
  // name_change
  {
    'nq8fc6no': {
      'en': 'Your name',
      'es': 'Su nombre',
    },
    'niq2lfc8': {
      'en': 'Enter your name',
      'es': 'Introduzca su nombre',
    },
    'npjuv6xg': {
      'en': 'Change Name',
      'es': 'Cambiar nombre',
    },
  },
  // feedback
  {
    'vdhrvsm3': {
      'en': 'Give us your thoughts ',
      'es': 'Danos tus pensamientos',
    },
    'rpk34e2m': {
      'en': '',
      'es': '',
    },
    'fn72inx3': {
      'en': 'Submit',
      'es': 'Enviar',
    },
  },
  // password
  {
    'ta3cfsu4': {
      'en': 'New Password',
      'es': 'Nueva contraseña',
    },
    '8oq5yyg8': {
      'en': 'Enter your new password',
      'es': 'Introduzca su nueva contraseña',
    },
    'o6lgdbsz': {
      'en': 'Confirm Password',
      'es': 'Confirmar contraseña',
    },
    '996z3nio': {
      'en': 'Enter your new password',
      'es': 'Introduzca su nueva contraseña',
    },
    'ueptvwzm': {
      'en': 'Submit new Password',
      'es': 'Enviar nueva contraseña',
    },
  },
  // Miscellaneous
  {
    'uygvhap3': {
      'en': '',
      'es': '',
    },
    'zpoeopyo': {
      'en': '',
      'es': '',
    },
    '3vr6iyvw': {
      'en': '',
      'es': '',
    },
    '2eq82r95': {
      'en': '',
      'es': '',
    },
    'x7g8ha9g': {
      'en': '',
      'es': '',
    },
    'kkmg7zsz': {
      'en': '',
      'es': '',
    },
    'f6jwlttv': {
      'en': '',
      'es': '',
    },
    '0a7kttdi': {
      'en': '',
      'es': '',
    },
    '7ltkyfbi': {
      'en': '',
      'es': '',
    },
    '7q2h1ipn': {
      'en': '',
      'es': '',
    },
    '9qu16xvw': {
      'en': '',
      'es': '',
    },
    'xuco0prx': {
      'en': '',
      'es': '',
    },
    'sjxw2ksk': {
      'en': '',
      'es': '',
    },
    '59z9nyb6': {
      'en': '',
      'es': '',
    },
    '3durubey': {
      'en': '',
      'es': '',
    },
    'dgvv4r97': {
      'en': '',
      'es': '',
    },
    'zf9q5fr5': {
      'en': '',
      'es': '',
    },
    'j9axvwkv': {
      'en': '',
      'es': '',
    },
    '97gr6seu': {
      'en': '',
      'es': '',
    },
    'hyyjuofr': {
      'en': '',
      'es': '',
    },
    'ymqiemjz': {
      'en': '',
      'es': '',
    },
    '9tv4v3oj': {
      'en': '',
      'es': '',
    },
  },
].reduce((a, b) => a..addAll(b));
