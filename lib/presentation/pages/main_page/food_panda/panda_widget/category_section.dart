import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:foody_yo/constants/app_string.dart';
import 'package:foody_yo/constants/image_string.dart';
import 'package:foody_yo/presentation/pages/main_page/food_panda/colors.dart';
import 'package:foody_yo/presentation/pages/main_page/food_panda/panda_helper/panda_helper.dart';
import 'package:foody_yo/presentation/theme/app_color.dart';
import 'package:foody_yo/presentation/widgets/big_button.dart';
import 'package:foody_yo/presentation/widgets/simple_text.dart';

import '../../../enums.dart';
import '../example_data.dart';
import 'custom_shape.dart';

class CategorySection extends StatefulWidget {
  const CategorySection({
    Key? key,
    required this.category,
  }) : super(key: key);

  final Category category;

  @override
  State<CategorySection> createState() => _CategorySectionState();
}

class _CategorySectionState extends State<CategorySection> {
  final _sizeBox = const SizedBox(height: 25);
  ValueNotifier<int> valueNotifier = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      margin: const EdgeInsets.only(bottom: 16),
      color: scheme.surface,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionTileHeader(context),
          _buildFoodTileList(context),
        ],
      ),
    );
  }

  Widget _buildFoodTileList(BuildContext context) {
    return Column(
      children: List.generate(
        widget.category.foods.length,
        (index) {
          final food = widget.category.foods[index];
          bool isLastIndex = index == widget.category.foods.length - 1;
          return _buildFoodTile(
            food: food,
            context: context,
            isLastIndex: isLastIndex,
          );
        },
      ),
    );
  }

  Widget _buildSectionTileHeader(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 16),
        _sectionTitle(context),
        const SizedBox(height: 8.0),
        widget.category.subtitle != null
            ? _sectionSubtitle(context)
            : const SizedBox(),
        const SizedBox(height: 16),
      ],
    );
  }

  Widget _sectionTitle(BuildContext context) {
    return Row(
      children: [
        if (widget.category.isHotSale) _buildSectionHoteSaleIcon(),
        Text(
          widget.category.title,
          style: _textTheme(context).headline6,
          strutStyle: Helper.buildStrutStyle(_textTheme(context).headline6),
        )
      ],
    );
  }

  Widget _sectionSubtitle(BuildContext context) {
    return Text(
      widget.category.subtitle!,
      style: _textTheme(context).subtitle2,
      strutStyle: Helper.buildStrutStyle(_textTheme(context).subtitle2),
    );
  }

  Widget _buildFoodTile({
    required BuildContext context,
    required bool isLastIndex,
    required Food food,
  }) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            _showModal(context);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildFoodDetail(food: food, context: context),
              _buildFoodImage(food.imageUrl),
            ],
          ),
        ),
        !isLastIndex ? const Divider(height: 16.0) : const SizedBox(height: 8.0)
      ],
    );
  }

  Widget _buildFoodImage(String url) {
    return FadeInImage.assetNetwork(
      placeholder: 'assets/images/transparent.png',
      image: url,
      width: 64,
    );
  }

  Widget _buildFoodDetail({
    required BuildContext context,
    required Food food,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(food.name, style: _textTheme(context).subtitle1),
        const SizedBox(height: 16),
        Row(
          children: [
            Text(
              "មកពី" + food.price + " ",
              style: _textTheme(context).caption,
              strutStyle: Helper.buildStrutStyle(_textTheme(context).caption),
            ),
            Text(
              food.comparePrice,
              strutStyle: Helper.buildStrutStyle(_textTheme(context).caption),
              style: _textTheme(context)
                  .caption
                  ?.copyWith(decoration: TextDecoration.lineThrough),
            ),
            const SizedBox(width: 8.0),
            if (food.isHotSale) _buildFoodHotSaleIcon(),
          ],
        ),
      ],
    );
  }

  Widget _buildSectionHoteSaleIcon() {
    return Container(
      margin: const EdgeInsets.only(right: 4.0),
      child: Icon(
        Icons.whatshot,
        color: scheme.primary,
        size: 20.0,
      ),
    );
  }

  Widget _buildFoodHotSaleIcon() {
    return Container(
      child: Icon(Icons.whatshot, color: scheme.primary, size: 16.0),
      padding: const EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        color: scheme.primary.withOpacity(0.1),
        borderRadius: BorderRadius.circular(16.0),
      ),
    );
  }

  Future<void> _showModal(BuildContext context) async {
    return showModalBottomSheet(
        backgroundColor: AppColor.whiteColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        context: context,
        builder: (context) => BackdropFilter(
              filter: ImageFilter.blur(sigmaY: 5, sigmaX: 5),
              child: Column(
                children: [
                  ClipPath(
                    clipper: CustomShape(),
                    child: Container(
                      height: 200,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: ImageString.bottomModal, fit: BoxFit.fill),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            SimpleText(
                              'Zinger Burger',
                              enumText: EnumText.extraBold,
                              fontSize: 34,
                            ),
                            Spacer(),
                            SimpleText('Rs.250.00',
                                enumText: EnumText.extraBold)
                          ],
                        ),
                        _sizeBox,
                        const SimpleText('Serve 1'),
                        _sizeBox,
                        const SimpleText(
                          AppString.specialInstruction,
                          enumText: EnumText.extraBold,
                        ),
                        _sizeBox,
                        _sizeBox,

                        ValueListenableBuilder<int>(
                            valueListenable: valueNotifier,
                            builder: (context, value, child) {
                              return  Row(
                                children: [
                                  CircularButton(
                                    color: AppColor.mainGreen.withOpacity(0.3),
                                    onPressed: () {
                                      valueNotifier.value--;
                                    },
                                    iconData: Icons.remove,
                                  ),
                                   SimpleText(valueNotifier.value.toString()),
                                  CircularButton(
                                    color: AppColor.mainGreen,
                                    onPressed: () {valueNotifier.value++;},
                                    iconData: Icons.add,
                                  ),
                                  const Spacer(),
                                  BigButton(
                                    text: AppString.addToString,
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    width: 200,
                                    height: 60,
                                  ),
                                  const Spacer(),
                                ],
                              );
                            }),
                      ],
                    ),
                  ),
                ],
              ),
            ));
  }

  TextTheme _textTheme(context) => Theme.of(context).textTheme;
}

class CircularButton extends StatelessWidget {
  final void Function() onPressed;
  final Color color;
  final IconData iconData;

  const CircularButton(
      {Key? key,
      required this.onPressed,
      this.color = AppColor.mainGreen,
      required this.iconData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 40,
      width: 40,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      child: IconButton(
        icon: Icon(
          iconData,
          color: AppColor.whiteColor,
        ),
        onPressed: onPressed,
      ),
    );
  }
}
