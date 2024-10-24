import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Componant/button.dart';
import '../Componant/card.dart';
import '../Componant/carousel.dart';
import '../Componant/column.dart';
import '../Componant/container.dart';
import '../Componant/divider.dart';
import '../Componant/expandable.dart';
import '../Componant/form_validation.dart';
import '../Componant/grid_view.dart';
import '../Componant/image.dart';
import '../Componant/list_view.dart';
import '../Componant/page_view.dart';
import '../Componant/row.dart';
import '../Componant/spacer.dart';
import '../Componant/stack.dart';
import '../Componant/staggerediew.dart';
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
              const SizedBox(height: 12),
              allComponents(name: "Column", page: const ColumnComponent()),
              const SizedBox(height: 12),
              allComponents(name: "Row", page: const RowComponent()),
              const SizedBox(height: 12),
              allComponents(
                  name: "Container", page: const ContainerComponent()),
              const SizedBox(height: 12),
              allComponents(name: "Button", page: const ButtonComponent()),
              const SizedBox(height: 12),
              allComponents(name: "Image", page: const ImageComponent()),
              const SizedBox(height: 12),
              allComponents(name: "Card", page: const CardComponent()),
              const SizedBox(height: 12),
              allComponents(name: "ListView", page: const ListViewComponent()),
              const SizedBox(height: 12),
              allComponents(name: "Stack", page: const StackComponent()),
              const SizedBox(height: 12),
              allComponents(name: "GridView", page: const GridViewComponent()),
              const SizedBox(height: 12),
              allComponents(name: "Spacer", page: const SpacerComponent()),
              const SizedBox(height: 12),
              allComponents(name: "Divider", page: const DividerComponent()),
              const SizedBox(height: 12),
              allComponents(
                  name: "Vertical Divider",
                  page: const VerticalDividerComponent()),
              const SizedBox(height: 12),
              allComponents(name: "TabBar", page: const TabBarComponent()),
              const SizedBox(height: 12),
              allComponents(name: "PageView", page: const PageViewComponent()),
              const SizedBox(height: 12),
              allComponents(name: "Carousel", page: const CarouselComponent()),
              const SizedBox(height: 12),
              allComponents(
                  name: "Expandable", page: const ExpandableComponent()),
              const SizedBox(height: 12),
              allComponents(name: "Wrap", page: const WrapComponent()),
              const SizedBox(height: 12),
              allComponents(
                  name: "Form Validation",
                  page: const FormValidationComponent()),
              const SizedBox(height: 12),
              allComponents(
                  name: "Staggered View", page: const StaggeredViewComponent()),
              const SizedBox(height: 12),
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
}
