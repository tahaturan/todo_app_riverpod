import 'package:flutter/material.dart';
import 'package:todo_app_riverpod/product/constants/color/project_color.dart';
import 'package:todo_app_riverpod/product/constants/padding/project_padding.dart';

class CustomBottomSheet extends StatefulWidget {
  const CustomBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Divider(
              color: ProjectColor.blueDam.color(),
              thickness: 2,
              endIndent: MediaQuery.of(context).size.width * 0.4,
              indent: MediaQuery.of(context).size.width * 0.4),
          Padding(
            padding: ProjectPadding.bottomSheetPadding,
            child: _CustomBottomTextfiled(controller: _controller),
          ),
        ],
      ),
    );
  }
}

class _CustomBottomTextfiled extends StatelessWidget {
  final TextEditingController controller;

  const _CustomBottomTextfiled({required this.controller});

  void _onSbubmitted(String value) {
    debugPrint(value);
    controller.clear();
  }

  void _saveButton() {
    if (controller.text.isNotEmpty) {
      debugPrint(controller.text);
      controller.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        TextField(
          controller: controller,
          onSubmitted: _onSbubmitted,
          decoration: InputDecoration(
            hintText: 'Bugun Neler Yapacaksin',
            prefixIcon: const Icon(Icons.edit),
            suffixIcon: IconButton(
                onPressed: () {
                  controller.clear();
                },
                icon: const Icon(Icons.clear)),
            filled: true,
            iconColor: Colors.white,
          ),
        ),
        TextButton(
          onPressed: _saveButton,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.save_alt_outlined, color: Colors.white),
              const SizedBox(width: 5),
              Text(
                "Kaydet",
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
