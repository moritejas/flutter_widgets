import 'package:demo_flutter_flow/Component/Add%20Banner/add_banner.dart';
import 'package:demo_flutter_flow/Component/AppBar/appbar.dart';
import 'package:demo_flutter_flow/Component/Audio%20Player/audio_player.dart';
import 'package:demo_flutter_flow/Component/Barcode/barcode.dart';
import 'package:demo_flutter_flow/Component/Blur/blur.dart';
import 'package:demo_flutter_flow/Component/Chart/chart.dart';
import 'package:demo_flutter_flow/Component/CheckBox/checkbox.dart';
import 'package:demo_flutter_flow/Component/CheckBox%20Group/checkbox_group.dart';
import 'package:demo_flutter_flow/Component/CheckBox%20ListTile/checkbox_listtile.dart';
import 'package:demo_flutter_flow/Component/Choice%20Chip/choice_chip.dart';
import 'package:demo_flutter_flow/Component/Conditional%20Build/conditional_build.dart';
import 'package:demo_flutter_flow/Component/Counter%20Button/counter_button.dart';
import 'package:demo_flutter_flow/Component/Credit%20Card%20Form/cradit_card_form.dart';
import 'package:demo_flutter_flow/Component/Drag%20Target/drag_target.dart';
import 'package:demo_flutter_flow/Component/Draggable/draggable.dart';
import 'package:demo_flutter_flow/Component/Drawer/drawer.dart';
import 'package:demo_flutter_flow/Component/Dropdown/dropdown.dart';
import 'package:demo_flutter_flow/Component/End%20Drawer/end_drawer.dart';
import 'package:demo_flutter_flow/Component/Fab/fab_component.dart';
import 'package:demo_flutter_flow/Component/Badge/badge.dart';
import 'package:demo_flutter_flow/Component/Google%20Map/google_map.dart';
import 'package:demo_flutter_flow/Component/Language%20Selector/language_selector.dart';
import 'package:demo_flutter_flow/Component/Lottie%20Animation/lottie_animation.dart';
import 'package:demo_flutter_flow/Component/Markdown/markdown.dart';
import 'package:demo_flutter_flow/Component/Media%20Display/media_display.dart';
import 'package:demo_flutter_flow/Component/Mouse%20Region/mouse_region.dart';
import 'package:demo_flutter_flow/Component/Mux%20BroadCast/mux_broadcast.dart';
import 'package:demo_flutter_flow/Component/PDF%20Viewer/pdf_viewer.dart';
import 'package:demo_flutter_flow/Component/Pincode/pincode.dart';
import 'package:demo_flutter_flow/Component/Plash%20Picker/plash_picker.dart';
import 'package:demo_flutter_flow/Component/Progress%20Bar/progreass_bar.dart';
import 'package:demo_flutter_flow/Component/Radio%20Button/radio_button.dart';
import 'package:demo_flutter_flow/Component/Ratting%20Bar/ratting_bar.dart';
import 'package:demo_flutter_flow/Component/Rive%20Animation/rive_animation.dart';
import 'package:demo_flutter_flow/Component/Signature/signature.dart';
import 'package:demo_flutter_flow/Component/Slider/slider.dart';
import 'package:demo_flutter_flow/Component/Static%20Map/static_map.dart';
import 'package:demo_flutter_flow/Component/Sticky%20Header/sticky_header.dart';
import 'package:demo_flutter_flow/Component/Switch/switch.dart';
import 'package:demo_flutter_flow/Component/Switch%20List%20Tile/switch_list_tile.dart';
import 'package:demo_flutter_flow/Component/Text%20Field/text_field.dart';
import 'package:demo_flutter_flow/Component/Timer/timer.dart';
import 'package:demo_flutter_flow/Component/Tooltip/tooltip.dart';
import 'package:demo_flutter_flow/Component/transform/transform.dart';
import 'package:demo_flutter_flow/Component/Web%20View/web_view.dart';
import 'package:demo_flutter_flow/Component/Youtube%20Video%20Player/youtube_videoplayer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Component/Button/button.dart';
import '../Component/Calender/calender.dart';
import '../Component/Card/card.dart';
import '../Component/Carousel/carousel.dart';
import '../Component/Circle Image/circle_image.dart';
import '../Component/Column/column.dart';
import '../Component/Container/container.dart';
import '../Component/Data Table/data_table.dart';
import '../Component/Divider/divider.dart';
import '../Component/Expandable/expandable.dart';
import '../Component/Flex/flex.dart';
import '../Component/Flippable Card/flippable_card.dart';
import '../Component/Form Validation/form_validation.dart';
import '../Component/Grid View/grid_view.dart';
import '../Component/Icon/icon.dart';
import '../Component/Icon Button/icon_button.dart';
import '../Component/Image/image.dart';
import '../Component/List View/list_view.dart';
import '../Component/List Tile/listtile.dart';
import '../Component/Page View/page_view.dart';
import '../Component/Rich Text/rich_text.dart';
import '../Component/Row/row.dart';
import '../Component/Slidable List Tile/slidable_listtile.dart';
import '../Component/Spacer/spacer.dart';
import '../Component/Stack/stack.dart';
import '../Component/Staggered View/staggerediew.dart';
import '../Component/Swipeable Stack/swipeable_stack.dart';
import '../Component/Tab Bar/tabbar.dart';
import '../Component/Text/text.dart';
import '../Component/Toggle/toggle_icon.dart';
import '../Component/Vertical Divider/vertical_divider.dart';
import '../Component/Video Player/videoplayer.dart';
import '../Component/Wrap/wrap.dart';

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
              allComponents(name: "Youtube Video Player", page: const YoutubeVideoPlayerComponent()),
              sizedbox(),
              allComponents(name: "Audio Player", page: AudioPlayerComponent()),
              sizedbox(),
              allComponents(name: "Web View", page: const WebViewComponent()),
              sizedbox(),
              allComponents(name: "StaticMap", page: const StaticMapComponent()),// Skip ----------------
              sizedbox(),
              allComponents(name: "GoogleMap", page: const GoogleMapComponent()),// Skip ----------------
              sizedbox(),
              allComponents(name: "Add Banner", page: const AddBannerComponent()),// Skip ----------------
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
              allComponents(name: "Pdf Viewer", page: const PdfViewerComponent()),
              sizedbox(),
              allComponents(name: "Progress Bar", page: const ProgressBarComponent()),
              sizedbox(),
              allComponents(name: "Language Selector", page: const LanguageSelectorComponent()),
              sizedbox(),
              allComponents(name: "Badge", page: const BadgeComponent()),
              sizedbox(),
              allComponents(name: "Chart", page: const ChartComponent()),
              sizedbox(),
              allComponents(name: "Mux Broadcast", page: const MuxBroadcastComponent()), // Skip ----------------
              sizedbox(),
              allComponents(name: "Timer", page: const TimerComponent()),
              sizedbox(),
              allComponents(name: "Mouse Region", page: const MouseRegionComponent()),
              sizedbox(),
              allComponents(name: "Barcode", page: const BarcodeComponent()),
              sizedbox(),
              allComponents(name: "Tool Tip", page: const ToolTipComponent()),
              sizedbox(),
              allComponents(name: "Conditional Build", page: const ConditionalBuildComponent()),
              sizedbox(),
              allComponents(name: "Sticky Header", page: const SticktHeaderComponent()),
              sizedbox(),
              allComponents(name: "Markdown", page: const MardownComponent()),
              sizedbox(),
              allComponents(name: "Draggable", page: const DraggableComponent()),
              sizedbox(),
              allComponents(name: "Drag Target", page: const DragTargetComponent()),
              sizedbox(),


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
              allComponents(name: "Credit Card Form", page: const CreditCardFormComponent()),
              sizedbox(),
              allComponents(name: "Counter Button", page: const CounterButtonComponent()),
              sizedbox(),
              allComponents(name: "Choice Chips", page: const ChoiceChipComponent()),
              sizedbox(),

              /// Skip the Place Picker
              allComponents(name: "Plash Picker", page: const PlashPickerComponent()),// Skip ----------------
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
