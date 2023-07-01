import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'hi', 'kn', 'te'];

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
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? hiText = '',
    String? knText = '',
    String? teText = '',
  }) =>
      [enText, hiText, knText, teText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
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
  // HomePage
  {
    'c79mk4ll': {
      'en': 'Welcome to PUC!',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'jgly7xoa': {
      'en': 'Login',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'yu065c49': {
      'en': 'SignUp',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'm74llvsn': {
      'en': 'Welcome to PUC!',
      'hi': '',
      'kn': '',
      'te': '',
    },
    '64kt3jsf': {
      'en': 'Login',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'nm2y54lu': {
      'en': 'SignUp',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'vyvpq5o6': {
      'en': 'Welcome to PUC!',
      'hi': '',
      'kn': '',
      'te': '',
    },
    's7txtw4r': {
      'en': 'Login',
      'hi': '',
      'kn': '',
      'te': '',
    },
    '1fh05e94': {
      'en': 'SignUp',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'um9mq94r': {
      'en': 'Home',
      'hi': '',
      'kn': '',
      'te': '',
    },
  },
  // Login
  {
    '20g8dwy1': {
      'en': 'Welcome Back,',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'umgsnc3n': {
      'en': 'Email Address',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'gzjdkkox': {
      'en': 'Enter your email here...',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'pz9hsgeq': {
      'en': 'Password',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'n4g36d5x': {
      'en': 'Enter your password here...',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'jyzgr6fr': {
      'en': 'Forgot Password?',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'ojhl3een': {
      'en': 'Login',
      'hi': '',
      'kn': '',
      'te': '',
    },
    '91vcyip0': {
      'en': 'Create Account',
      'hi': '',
      'kn': '',
      'te': '',
    },
    '7krand6r': {
      'en': 'Home',
      'hi': '',
      'kn': '',
      'te': '',
    },
  },
  // SignUp
  {
    'n2e7x6cm': {
      'en': 'Get Started',
      'hi': '',
      'kn': '',
      'te': '',
    },
    '25gmgh5b': {
      'en': 'Email Address',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'cysxdsbz': {
      'en': 'Enter your email here...',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'hx7ucvna': {
      'en': 'Password',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'vblsqlrn': {
      'en': 'Enter your password here...',
      'hi': '',
      'kn': '',
      'te': '',
    },
    '8fb7tfnw': {
      'en': 'Create Account',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'sxo2kjy8': {
      'en': 'Log In',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'p36t2tdl': {
      'en': 'Home',
      'hi': '',
      'kn': '',
      'te': '',
    },
  },
  // SuccessPage
  {
    '3x90krp3': {
      'en': 'Congrats!',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'lg6auslj': {
      'en': 'Your booking is done!',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'vofzei9h': {
      'en': 'See your ticket!',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'ye2pela6': {
      'en': 'Home',
      'hi': '',
      'kn': '',
      'te': '',
    },
  },
  // travel
  {
    'l7ggjpsw': {
      'en': 'Where are you heading today..',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'pfc2dld1': {
      'en': 'Find your Parking Space!',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'c6djq5v0': {
      'en': 'Go to Current Tickets',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'ghbvaj07': {
      'en': 'Popular Places',
      'hi': '',
      'kn': '',
      'te': '',
    },
    '41ksqei2': {
      'en': 'ISKCON Temple Bangalore',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'puoj3ls6': {
      'en': 'Religious Site',
      'hi': '',
      'kn': '',
      'te': '',
    },
    '6nzsn2ui': {
      'en': 'Lalbagh Botanical Garden',
      'hi': '',
      'kn': '',
      'te': '',
    },
    '0buggyzr': {
      'en': 'Gardens',
      'hi': '',
      'kn': '',
      'te': '',
    },
    '8mangrye': {
      'en': 'Markets, Malls etc.',
      'hi': '',
      'kn': '',
      'te': '',
    },
    '3ay9z6qw': {
      'en': 'Commercial Street',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'hz4cajqo': {
      'en': 'Shopping',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'uzok54ep': {
      'en': '15 mins away',
      'hi': '',
      'kn': '',
      'te': '',
    },
    't4f7bhcu': {
      'en': 'UB City',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'yxopwjed': {
      'en': 'Shopping Mall',
      'hi': '',
      'kn': '',
      'te': '',
    },
    '63ibvbo1': {
      'en': '7 mins away',
      'hi': '',
      'kn': '',
      'te': '',
    },
  },
  // Ticket
  {
    'v9v52xdu': {
      'en': 'Your Ticket!',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'an3462iu': {
      'en': 'Address',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'mea2bccv': {
      'en': 'Commercial  Street',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'vmrjavoa': {
      'en': 'Instructions',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'qyhcphi0': {
      'en': 'Don\'t miss the ticket, do not share it with anyone.',
      'hi': '',
      'kn': '',
      'te': '',
    },
    '0klb78vo': {
      'en': 'at',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'quxrxqte': {
      'en': 'Commercial Street',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'vd03gnug': {
      'en': '@ Block 21 - @1753',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'mjd0enmd': {
      'en': '6:00pm',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'eoxuxvfg': {
      'en': 'July 1, 2023',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'o9vfs9ll': {
      'en': 'Tanish Rawlani',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'hsjou9ef': {
      'en': 'Banjara Hills',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'a971b2s9': {
      'en': '202-F',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'h3goyczo': {
      'en': 'Parking Space',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'axe6xs6q': {
      'en': '19F',
      'hi': '',
      'kn': '',
      'te': '',
    },
    '3ksoh5m0': {
      'en': 'Puchased',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'hjr5nj67': {
      'en': '10 Rs.',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'p9t1354s': {
      'en': 'Ticket valid till 24 hours',
      'hi': '',
      'kn': '',
      'te': '',
    },
    '9uor33eu': {
      'en': 'Home',
      'hi': '',
      'kn': '',
      'te': '',
    },
  },
  // CreateProfile
  {
    'phiehyb5': {
      'en': 'Your Name',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'kvupb97f': {
      'en': 'Your City',
      'hi': '',
      'kn': '',
      'te': '',
    },
    '3w8b26px': {
      'en': 'State',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'us0zfmlg': {
      'en': 'State',
      'hi': '',
      'kn': '',
      'te': '',
    },
    '220dp5y9': {
      'en': 'Alabama',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'xdu5kw17': {
      'en': 'Alaska',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'g4tu99a2': {
      'en': 'Arizona',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'pgk5pgrj': {
      'en': 'Arkansas',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'lcrtg28n': {
      'en': 'California',
      'hi': '',
      'kn': '',
      'te': '',
    },
    '31zj6f7a': {
      'en': 'Colorado',
      'hi': '',
      'kn': '',
      'te': '',
    },
    '4iltgnqk': {
      'en': 'Connecticut',
      'hi': '',
      'kn': '',
      'te': '',
    },
    '1yjxxlke': {
      'en': 'Delaware',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'cwprltc6': {
      'en': 'Florida',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'be41rwq6': {
      'en': 'Georgia',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'ee4po4on': {
      'en': 'Hawaii',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'lmvinltn': {
      'en': 'Idaho',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'k7h3yg1x': {
      'en': 'Illinoi',
      'hi': '',
      'kn': '',
      'te': '',
    },
    '4ctlute4': {
      'en': 'Indiana',
      'hi': '',
      'kn': '',
      'te': '',
    },
    '1bry7q2y': {
      'en': 'Iowa',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'qnc9em53': {
      'en': 'Kansas',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'jorglyj5': {
      'en': 'Kentucky',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'ltt8877r': {
      'en': 'Louisiana',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'ruzej6s7': {
      'en': 'Maine',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'uh47lvfs': {
      'en': 'Maryland',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'hy81w7xl': {
      'en': 'Massachusetts',
      'hi': '',
      'kn': '',
      'te': '',
    },
    '1gjhz7d9': {
      'en': 'Michigan',
      'hi': '',
      'kn': '',
      'te': '',
    },
    '4l515dqh': {
      'en': 'Minnesota',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'rtwhtw2q': {
      'en': 'Mississippi',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'o08bw0tg': {
      'en': 'Missouri',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'cqt6hcce': {
      'en': 'Monta',
      'hi': '',
      'kn': '',
      'te': '',
    },
    '6nhv6aj1': {
      'en': 'Nebraska',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'rcm42ks9': {
      'en': 'Nevada',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'k40v164j': {
      'en': 'New Hampshire',
      'hi': '',
      'kn': '',
      'te': '',
    },
    '3gbzgxse': {
      'en': 'New Jersey',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'f3rc4fgo': {
      'en': 'New Mexico',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'r2x7y0w4': {
      'en': 'New York',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'jji50ole': {
      'en': 'North Carolina',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'bkx6htgp': {
      'en': 'North Dak',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'xcj4zscf': {
      'en': 'Ohio',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'krymbhx0': {
      'en': 'Oklahoma',
      'hi': '',
      'kn': '',
      'te': '',
    },
    '9knfh5sp': {
      'en': 'Oregon',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'mevgeh53': {
      'en': 'Pennsylvani',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'iy7v6jps': {
      'en': 'Rhode Island',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'x9gi0t4y': {
      'en': 'South Caroli',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'hn9cz2h9': {
      'en': 'South Dakota',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'b0zx5b4z': {
      'en': 'Tennessee',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'szzk5vi6': {
      'en': 'Texas',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'tghnektn': {
      'en': 'Utah',
      'hi': '',
      'kn': '',
      'te': '',
    },
    '6ey2jrw7': {
      'en': 'Vermont',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'as8z5pdn': {
      'en': 'Virginia',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'jkzs07m7': {
      'en': 'Washingto',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'xnpnx7jg': {
      'en': 'West Virginia',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'xq74u1z8': {
      'en': 'Wisconsin',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'mw8w5b9k': {
      'en': 'Wyoming',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'mvjil3o4': {
      'en': 'Select State',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'qdk8vrda': {
      'en': 'Save Changes',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'u8mapdp3': {
      'en': 'Create your Profile',
      'hi': '',
      'kn': '',
      'te': '',
    },
  },
  // maps
  {
    'gvfiqg7v': {
      'en': 'Search your Location',
      'hi': '',
      'kn': '',
      'te': '',
    },
    '8pnr87ua': {
      'en': 'Select Location',
      'hi': '',
      'kn': '',
      'te': '',
    },
    '4yr30vt2': {
      'en': 'Search',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'eyb6smrj': {
      'en': 'Book your space!',
      'hi': '',
      'kn': '',
      'te': '',
    },
    '0zeg2ytg': {
      'en': 'Home',
      'hi': '',
      'kn': '',
      'te': '',
    },
  },
  // payment_gateway
  {
    'bp0w68vz': {
      'en': 'ISKCON Temple, Bangalore',
      'hi': '',
      'kn': '',
      'te': '',
    },
    '4pnhchre': {
      'en': '10 Rs.',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'p7wi4y3q': {
      'en': 'Options',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'cgzkjim5': {
      'en': 'Please make a selection from the options below.',
      'hi': '',
      'kn': '',
      'te': '',
    },
    '8u4g5wpc': {
      'en': '1 hr',
      'hi': '',
      'kn': '',
      'te': '',
    },
    '5enthyy7': {
      'en': '2 hr',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'bnypecyx': {
      'en': '3 hr',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'c3x57mso': {
      'en': '4 hr',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'dbi154xq': {
      'en': 'Time ',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'tbl0jboz': {
      'en': 'Pay',
      'hi': '',
      'kn': '',
      'te': '',
    },
    '7s610y65': {
      'en': 'Home',
      'hi': '',
      'kn': '',
      'te': '',
    },
  },
  // Miscellaneous
  {
    'bupcw1pi': {
      'en': '',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'tp766y9c': {
      'en': '',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'r55z83ai': {
      'en': '',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'g5bxulxs': {
      'en': '',
      'hi': '',
      'kn': '',
      'te': '',
    },
    '41p4nc7g': {
      'en': '',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'hcgrntj7': {
      'en': '',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'e3iy77qm': {
      'en': '',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'kjqxh1lz': {
      'en': '',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'e53mbjt5': {
      'en': '',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'vek0np9p': {
      'en': '',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'cjykmo9k': {
      'en': '',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'e52dsy51': {
      'en': '',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'wi0ujdbz': {
      'en': '',
      'hi': '',
      'kn': '',
      'te': '',
    },
    '0jpf1vrs': {
      'en': '',
      'hi': '',
      'kn': '',
      'te': '',
    },
    '4xoodoyf': {
      'en': '',
      'hi': '',
      'kn': '',
      'te': '',
    },
    '91u4ysum': {
      'en': '',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'o18g1xfo': {
      'en': '',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'vdl0v5nw': {
      'en': '',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'l8epth67': {
      'en': '',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'wwegkqos': {
      'en': '',
      'hi': '',
      'kn': '',
      'te': '',
    },
    'ivat1t9g': {
      'en': '',
      'hi': '',
      'kn': '',
      'te': '',
    },
  },
].reduce((a, b) => a..addAll(b));
