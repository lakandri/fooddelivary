import 'package:delivery/components/MyDrawer.dart';
import 'package:delivery/components/my_current_location.dart';
import 'package:delivery/components/my_description_box.dart';
import 'package:delivery/components/my_food_tile.dart';
import 'package:delivery/components/mysilverappbar.dart';
import 'package:delivery/components/our_tabbar.dart';
import 'package:delivery/models/food.dart';
import 'package:delivery/models/resturants.dart';
import 'package:delivery/pages/food_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: FoodCategory.values.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  // sort oot the list of fooditem that blong to  specific category

  List<Food> _filterMenuByCategory(FoodCategory category, List<Food> fullMenu) {
    return fullMenu.where((food) => food.category == category).toList();
  }

  //  return list of foods in given category

  List<Widget> getFoodInThisCategory(List<Food> fullMenu) {
    return FoodCategory.values.map((category) {
      List<Food> categoryMenu = _filterMenuByCategory(category, fullMenu);

      return ListView.builder(
        itemCount: categoryMenu.length,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          // get individual food

          final food = categoryMenu[index];
          // return food tile ui
          return FoodTile(
            food: food,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => foodPage(food: food),
              ),
            ),
          );
        },
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MyDrawer(),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            MySilverAppbar(
              title: MyTabBar(
                tabController: _tabController,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Divider(
                    indent: 25,
                    endIndent: 25,
                  ),
                  MyCurrentLocation(),
                  MyDescriptionBox(),
                ],
              ),
            ),
          ],
          body: Consumer<Resturants>(
            builder: (context, resturents, child) => TabBarView(
                controller: _tabController,
                children: getFoodInThisCategory(resturents.menu)),
          ),
        ));
  }
}
