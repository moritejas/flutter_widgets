import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Componant/button.dart';
import '../Componant/card.dart';
import '../Componant/carousel.dart';
import '../Componant/circle_image.dart';
import '../Componant/column.dart';
import '../Componant/container.dart';
import '../Componant/data_table.dart';
import '../Componant/divider.dart';
import '../Componant/expandable.dart';
import '../Componant/flex.dart';
import '../Componant/flippable_card.dart';
import '../Componant/form_validation.dart';
import '../Componant/grid_view.dart';
import '../Componant/icon_button.dart';
import '../Componant/image.dart';
import '../Componant/list_view.dart';
import '../Componant/page_view.dart';
import '../Componant/rich_text.dart';
import '../Componant/row.dart';
import '../Componant/spacer.dart';
import '../Componant/stack.dart';
import '../Componant/staggerediew.dart';
import '../Componant/swipeable_stack.dart';
import '../Componant/tabbar.dart';
import '../Componant/text.dart';
import '../Componant/vertical_divider.dart';
import '../Componant/wrap.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // APPBAR
      appBar: AppBar(
        title: const Text(
          "Components",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
        backgroundColor: Colors.indigoAccent,
        centerTitle: true,
      ),

      // BODY
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              allComponents(name: "Text", page: const TextComponent()),
              sizedbox(),
              allComponents(name: "Column", page: const ColumnComponent()),
              sizedbox(),
              allComponents(name: "Row", page: const RowComponent()),
              sizedbox(),
              allComponents(name: "Container", page: const ContainerComponent()),
              sizedbox(),
              allComponents(name: "Button", page: const ButtonComponent()),
              sizedbox(),
              allComponents(name: "Image", page: const ImageComponent()),
              sizedbox(),
              allComponents(name: "Card", page: const CardComponent()),
              sizedbox(),
              allComponents(name: "ListView", page: const ListViewComponent()),
              sizedbox(),
              allComponents(name: "Stack", page: const StackComponent()),
              sizedbox(),
              allComponents(name: "GridView", page: const GridViewComponent()),
              sizedbox(),
              allComponents(name: "Spacer", page: const SpacerComponent()),
              sizedbox(),
              allComponents(name: "Divider", page: const DividerComponent()),
              sizedbox(),
              allComponents(name: "Vertical Divider",page: const VerticalDividerComponent()),
              sizedbox(),
              allComponents(name: "TabBar", page: const TabBarComponent()),
              sizedbox(),
              allComponents(name: "PageView", page: const PageViewComponent()),
              sizedbox(),
              allComponents(name: "Carousel", page: const CarouselComponent()),
              sizedbox(),
              allComponents(name: "Expandable", page: const ExpandableComponent()),
              sizedbox(),
              allComponents(name: "Wrap", page: const WrapComponent()),
              sizedbox(),
              allComponents(name: "Form Validation",page: const FormValidationComponent()),
              sizedbox(),
              allComponents(name: "Staggered View", page: StaggeredViewComponent()),
              sizedbox(),

              allComponents(name: "Flippable Card", page: const FlippableCardComponent()),
              sizedbox(),
              allComponents(name: "Swipeable Stack", page: const SwipeableStackComponent()),
              sizedbox(),
              allComponents(name: "Data Table", page: const DataTableComponent()),
              sizedbox(),
              allComponents(name: "Flex", page: const FlexComponent()),
              sizedbox(),
              allComponents(name: "Rich Text", page: const RichTextComponent()),
              sizedbox(),
              allComponents(name: "Circle Image", page: const CilrcleImageComponent()),
              // sizedbox(),
              // allComponents(name: "Icon", page: const IconComponent()),
              // sizedbox(),
              // allComponents(name: "Icon Button", page: const IconButtonComponent()),
              // sizedbox(),
              // allComponents(name: "ListTile", page: const ListTileComponent()),
              // sizedbox(),
              // allComponents(name: "Slidable ListTile", page: const SlidableListTileComponent()),
              // sizedbox(),
              // // VideoPlayer
              // // Youtube Player
              // allComponents(name: "Calender", page: const CalenderComponent()),
              // sizedbox(),
              // allComponents(name: "Toggle Icon", page: const ToggleIconComponent()),


            ],
          ),
        ),
      ),
    );
  }

  Widget allComponents({required Widget page, required String name}) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              Get.to(() => page);
            },
            style: ElevatedButton.styleFrom(
              elevation: 5,
              backgroundColor: Colors.indigoAccent.withOpacity(0.9),
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(9)),
            ),
            child: Text(
              name,
              style: const TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ],
    );
  }
  Widget sizedbox(){
    return const SizedBox(height: 12);
  }
}
