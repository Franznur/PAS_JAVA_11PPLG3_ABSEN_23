import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:proyek_pas/Pages/login_page.dart';
import 'package:proyek_pas/Pages/main_menu_page.dart';
import 'package:proyek_pas/Pages/profile_page.dart';
import 'package:proyek_pas/Pages/Detail_Makanan_Page.dart';


class Routes {
static const String login = '/login';
static const String mainmenudrawerpage = '/mainmenudrawerpage';
static const String profilepage = '/profilepage';
static const String featuredpage = '/featuredpage';
static const String DetailMakanan = '/DetailMakanan';
static final pages = [

GetPage(name: DetailMakanan, page: () => DetailMakananPage()),
GetPage(name: login, page: () => LoginPage()),
GetPage(name: mainmenudrawerpage, page: () => MainMenuPage()),
GetPage(name: profilepage, page: () => profilepage()),
];
}

