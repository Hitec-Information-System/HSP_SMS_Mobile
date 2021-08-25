import 'package:flutter/material.dart';
import 'package:frontend/check/check_list/domain/tmp_check_details_list.dart';
import 'package:frontend/check/check_list/presentation/widgets/check_details_card.dart';
import 'package:collection/collection.dart';

class CheckListDetailsSection extends StatelessWidget {
  const CheckListDetailsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: tmpCheckDetails
          .mapIndexed((index, element) =>
              CheckDetailsCard(index: index, details: tmpCheckDetails[index]))
          .toList(),
    );
  }
}
