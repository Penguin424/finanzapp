import 'package:finanzapp/src/widgets/icon_menu_widget.dart';
import 'package:finanzapp/src/widgets/modal_form_add_pago_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:star_menu/star_menu.dart';

class FABToolsWidget extends ConsumerWidget {
  const FABToolsWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return StarMenu(
      params: StarMenuParameters.panel(
        context,
        columns: 2,
      ).copyWith(
        centerOffset: const Offset(-140, -130),
      ),
      onItemTapped: (index, controller) {
        controller.closeMenu();
      },
      items: [
        IconMenuWidget(
          icon: Icons.bookmark_remove,
          text: 'Agregar gasto',
          onTap: () async {
            return showDialog(
              context: context,
              builder: (context) => const ModalFormAddGastoWiget(),
            );
          },
        ),
        const IconMenuWidget(
          icon: Icons.add_card_rounded,
          text: 'Agregar ingreso',
        ),
        const IconMenuWidget(
          icon: Icons.push_pin_rounded,
          text: 'Agregar gasto fijo',
        ),
        const IconMenuWidget(
          icon: Icons.edit_calendar_rounded,
          text: 'Agregar gasto a meses',
        ),
      ],
      child: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.grid_view,
        ),
      ),
    );
  }
}
