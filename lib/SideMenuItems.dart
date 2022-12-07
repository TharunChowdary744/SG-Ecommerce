import 'package:line_icons/line_icons.dart';

import 'Cart/cartPage.dart';
import 'wishlist/wishlistpage.dart';
import 'home/HomePage.dart';
import 'orders/OrderPage.dart';

List sideMenuItems = [
  {
    "label": "Home",
    "selected": true,
    "icon": LineIcons.home,
    "page": HomePage()
  },
  {
    "label": "Books",
    "selected": false,
    "icon": LineIcons.shoppingCart,
    "page": CartPage()
  },
  {
    "label": "Courses",
    "selected": false,
    "icon": LineIcons.shoppingCart,
    "page": CartPage()
  },
  {
    "label": "My Cart",
    "selected": false,
    "icon": LineIcons.shoppingCart,
    "page": CartPage()
  },
  {
    "label": "Favourite",
    "selected": false,
    "icon": LineIcons.heart,
    "page": WishListPage()
  },
  {
    "label": "Orders",
    "selected": false,
    "icon": LineIcons.history,
    "page": OrderPage()
  },
];