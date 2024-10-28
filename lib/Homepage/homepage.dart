import 'package:demo_flutter_flow/Componant/add_banner.dart';
import 'package:demo_flutter_flow/Componant/appbar.dart';
import 'package:demo_flutter_flow/Componant/audio_player.dart';
import 'package:demo_flutter_flow/Componant/blur.dart';
import 'package:demo_flutter_flow/Componant/checkbox.dart';
import 'package:demo_flutter_flow/Componant/checkbox_group.dart';
import 'package:demo_flutter_flow/Componant/checkbox_listtile.dart';
import 'package:demo_flutter_flow/Componant/choice_chip.dart';
import 'package:demo_flutter_flow/Componant/counter_button.dart';
import 'package:demo_flutter_flow/Componant/cradit_card_form.dart';
import 'package:demo_flutter_flow/Componant/drawer.dart';
import 'package:demo_flutter_flow/Componant/dropdown.dart';
import 'package:demo_flutter_flow/Componant/end_drawer.dart';
import 'package:demo_flutter_flow/Componant/fab_component.dart';
import 'package:demo_flutter_flow/Componant/google_map.dart';
import 'package:demo_flutter_flow/Componant/lottie_animation.dart';
import 'package:demo_flutter_flow/Componant/media_display.dart';
import 'package:demo_flutter_flow/Componant/pincode.dart';
import 'package:demo_flutter_flow/Componant/plash_picker.dart';
import 'package:demo_flutter_flow/Componant/radio_button.dart';
import 'package:demo_flutter_flow/Componant/ratting_bar.dart';
import 'package:demo_flutter_flow/Componant/rive_animation.dart';
import 'package:demo_flutter_flow/Componant/signature.dart';
import 'package:demo_flutter_flow/Componant/slider.dart';
import 'package:demo_flutter_flow/Componant/static_map.dart';
import 'package:demo_flutter_flow/Componant/switch.dart';
import 'package:demo_flutter_flow/Componant/switch_list_tile.dart';
import 'package:demo_flutter_flow/Componant/text_field.dart';
import 'package:demo_flutter_flow/Componant/transform.dart';
import 'package:demo_flutter_flow/Componant/web_view.dart';
import 'package:demo_flutter_flow/Componant/youtube_videoplayer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Componant/button.dart';
import '../Componant/calender.dart';
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
import '../Componant/icon.dart';
import '../Componant/icon_button.dart';
import '../Componant/image.dart';
import '../Componant/list_view.dart';
import '../Componant/listtile.dart';
import '../Componant/page_view.dart';
import '../Componant/rich_text.dart';
import '../Componant/row.dart';
import '../Componant/slidable_listtile.dart';
import '../Componant/spacer.dart';
import '../Componant/stack.dart';
import '../Componant/staggerediew.dart';
import '../Componant/swipeable_stack.dart';
import '../Componant/tabbar.dart';
import '../Componant/text.dart';
import '../Componant/toggle_icon.dart';
import '../Componant/vertical_divider.dart';
import '../Componant/videoplayer.dart';
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
              sizedbox(),
              allComponents(name: "Icon", page: const IconComponent()),
              sizedbox(),
              allComponents(name: "Icon Button", page: const IconButtonComponent()),
              sizedbox(),
              allComponents(name: "ListTile", page: const ListTileComponent()),
              sizedbox(),
              allComponents(name: "Slidable ListTile", page: const SlidableListTileComponent()),
              sizedbox(),
              allComponents(name: "Calender", page: const CalenderComponent()),
              sizedbox(),
              allComponents(name: "Toggle Icon", page: const ToggleIconComponent()),
              sizedbox(),
              allComponents(name: "Video Player", page: const VideoPlayerComponent()),
              sizedbox(),
              // Skip VideoPlayer
              allComponents(name: "Youtube Video Player", page: const YoutubeVideoPlayerComponent()),
              sizedbox(),
              allComponents(name: "Audio Player", page: AudioPlayerComponent()),
              sizedbox(),
              allComponents(name: "Web View", page: const WebViewComponent()),
              sizedbox(),
              allComponents(name: "StaticMap", page: const StaticMapComponent()),
              sizedbox(),
              allComponents(name: "GoogleMap", page: const GoogleMapComponent()),
              sizedbox(),
              allComponents(name: "Add Banner", page: const AddBannerComponent()),
              sizedbox(),
              allComponents(name: "Lottie Animation", page: const LottieAnimationComponent()),
              sizedbox(),
              allComponents(name: "Blur", page: const BlurComponent()),
              sizedbox(),
              allComponents(name: "Transform", page: const TransformComponent()),
              sizedbox(),
              allComponents(name: "Media Display", page: const MediaDisplayComponent()),
              sizedbox(),
              allComponents(name: "Rive Animation", page: const RiveAnimationComponent()),
              sizedbox(),

/*
              allComponents(name: "Pdf Viewer", page: const BlurComponent()),
              sizedbox(),
              allComponents(name: "Progress Bar", page: const BlurComponent()),
              sizedbox(),
              allComponents(name: "Language Selector", page: const BlurComponent()),
              sizedbox(),
              allComponents(name: "Badge", page: const BlurComponent()),
              sizedbox(),
              allComponents(name: "Chart", page: const BlurComponent()),
              sizedbox(),
              allComponents(name: "Mux Broadcast", page: const BlurComponent()),
              sizedbox(),
              allComponents(name: "Timer", page: const BlurComponent()),
              sizedbox(),
              allComponents(name: "Mouse Region", page: const BlurComponent()),
              sizedbox(),
              allComponents(name: "Barcode", page: const BlurComponent()),
              sizedbox(),
              allComponents(name: "Tool Tip", page: const BlurComponent()),
              sizedbox(),
              allComponents(name: "Conditional Build", page: const BlurComponent()),
              sizedbox(),
              allComponents(name: "Sticky Header", page: const BlurComponent()),
              sizedbox(),
              allComponents(name: "Markdown", page: const BlurComponent()),
              sizedbox(),
              allComponents(name: "Draggable", page: const BlurComponent()),
              sizedbox(),
              allComponents(name: "Drag Target", page: const BlurComponent()),
              sizedbox(),
*/

              /// Page Element
              allComponents(name: "AppBar", page: const AppBarComponent()),
              sizedbox(),
              allComponents(name: "FAB", page: const FABComponent()),
              sizedbox(),
              allComponents(name: "Drawer", page: const DrawerComponent()),
              sizedbox(),
              allComponents(name: "EndDrawer", page: const EndDrawerComponent()),


              ///    Form Elements
              allComponents(name: "TextField", page: const TextFieldComponent()),
              sizedbox(),
              allComponents(name: "Drop-Down", page: const DropDownComponent()),
              sizedbox(),
              allComponents(name: "Check Box", page: const CheckBoxComponent()),
              sizedbox(),
              allComponents(name: "Check Box List Tile", page: const CheckBoxListTileComponent()),
              sizedbox(),
              allComponents(name: "Switch", page: const SwitchComponent()),
              sizedbox(),
              allComponents(name: "Switch List Tile", page: const SwitchListTileComponent()),
              sizedbox(),
              allComponents(name: "Radio Button", page: const RadioButtonComponent()),
              sizedbox(),
              allComponents(name: "Pin Code", page: const PinCodeComponent()),
              sizedbox(),
              allComponents(name: "Slider", page: const SliderComponent()),
              sizedbox(),
              allComponents(name: "Ratting Bar", page: const RattingBarComponent()),
              sizedbox(),

              // Temporary Skip
              allComponents(name: "Credit Card Form", page: const CreditCardFormComponent()),
              sizedbox(),

              allComponents(name: "Counter Button", page: const CounterButtonComponent()),
              sizedbox(),
              allComponents(name: "Choice Chips", page: const ChoiceChipComponent()),
              sizedbox(),
              allComponents(name: "Plash Picker", page: const PlashPickerComponent()),
              sizedbox(),
              // allComponents(name: "Form Validation", page: const FormValidationComponent()),
              sizedbox(),
              allComponents(name: "Check Box Group", page: const CheckBoxGroupComponent()),
              sizedbox(),
              allComponents(name: "Signature", page: const SignatureComponent()),




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
