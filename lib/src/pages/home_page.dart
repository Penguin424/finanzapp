import 'package:finanzapp/src/widgets/fab_tools_widget.dart';
import 'package:finanzapp/src/widgets/modal_form_add_pago_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:star_menu/star_menu.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      floatingActionButton: const FABToolsWidget(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  'ULTIMOS MOVIMIENTOS',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: size.height * 0.5,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
