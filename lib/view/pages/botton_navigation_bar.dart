import 'package:flutter/material.dart';
import 'package:ui_tutorial/core/utils/dynamic_size.dart';
import 'package:ui_tutorial/molten_navigation/my_customise_molten_navigation.dart';
import 'package:ui_tutorial/view/pages/community/community.dart';
import 'package:ui_tutorial/view/pages/home/home_page.dart';
import 'package:ui_tutorial/view/pages/library/root_library/library.dart';
import 'package:ui_tutorial/view/pages/jobs/jobs.dart';
import 'package:ui_tutorial/view/widgets/main_scafold/common_scafold_bg.dart';

List selectedImages = [
  'assets/icons/ic_dashboard_selected.png',
  'assets/icons/ic_library_selected.png',
  'assets/icons/ic_community_selected.png',
  'assets/icons/ic_jobs_selected.png',
];
List unSelected = [
  'assets/icons/ic_dashboard.png',
  'assets/icons/ic_library.png',
  'assets/icons/ic_community.png',
  'assets/icons/ic_jobs.png'
];

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({super.key});
  static const bottomNavigationPage = '/fourth';

  @override
  State<BottomNavigationPage> createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  int selectedIndex = 0;
  PageController controller = PageController();
  List<Widget> pages = [HomePage(), Library(), CommunityPage(), JobsPage()];

  @override
  Widget build(BuildContext context) {
    return CommonScafold(
      bottomNavigationBar: MoltenBottomNavigationBar(
          domeCircleSize: context.screenWidth(width: 80),
          barHeight: context.screenHeight(heigth: 108),
          domeHeight: context.screenHeight(heigth: 12),
          borderRaduis: BorderRadius.only(
            topLeft: Radius.circular(context.screenHeight(heigth: 40)),
            topRight: Radius.circular(context.screenHeight(heigth: 40)),
          ),
          domeBg: Colors.transparent,
          barColor: const Color(0XFF172214),
          tabs: [
            MoltenTab(
                icon: selectedIndex == 0
                    ? Image(
                        image: AssetImage(
                        selectedImages[0],
                      ))
                    : Image(
                        image: AssetImage(unSelected[0]),
                      )),
            MoltenTab(
                icon: selectedIndex == 1
                    ? Image(
                        image: AssetImage(
                        selectedImages[1],
                      ))
                    : Image(
                        image: AssetImage(unSelected[1]),
                      )),
            MoltenTab(
                icon: selectedIndex == 2
                    ? Image(
                        image: AssetImage(
                        selectedImages[2],
                      ))
                    : Image(
                        image: AssetImage(unSelected[2]),
                      )),
            MoltenTab(
                icon: selectedIndex == 3
                    ? Image(
                        image: AssetImage(
                        selectedImages[3],
                      ))
                    : Image(
                        image: AssetImage(unSelected[3]),
                      )),
          ],
          selectedIndex: selectedIndex,
          onTabChange: (value) {
            setState(() {
              selectedIndex = value;
            });
          }),
      body: pages[selectedIndex],
      // body: PageView(
      //   controller: PageController(keepPage: false,initialPage: selectedIndex),

      //   children: pages,
      // ),
    );
  }
}
