import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ModalFormAddGastoWiget extends ConsumerStatefulWidget {
  const ModalFormAddGastoWiget({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ModalFormAddGastoWigetState();
}

class _ModalFormAddGastoWigetState
    extends ConsumerState<ModalFormAddGastoWiget> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Center(
      child: Container(
        constraints: BoxConstraints(
          maxHeight: size.height * 0.7,
        ),
        margin: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.black,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Material(
              color: Colors.transparent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Agregar gasto',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor ingrese un valor';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      labelText: 'Monto',
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  DropdownButtonFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor ingrese un valor';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      labelText: 'Tipo de Pago',
                    ),
                    items: const [
                      DropdownMenuItem(
                        value: 'Efectivo',
                        child: Text('Efectivo'),
                      ),
                      DropdownMenuItem(
                        value: 'Tarjeta',
                        child: Text('Tarjeta'),
                      ),
                      DropdownMenuItem(
                        value: 'Tarjeta de Credito',
                        child: Text('Tarjeta de Credito'),
                      ),
                    ],
                    onChanged: (value) {},
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  DropdownButtonFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor ingrese un valor';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      labelText: 'Categoria',
                    ),
                    items: const [
                      DropdownMenuItem(
                        value: 'Comida',
                        child: Text('Comida'),
                      ),
                      DropdownMenuItem(
                        value: 'Cafe',
                        child: Text('Cafe'),
                      ),
                      DropdownMenuItem(
                        value: 'Uber',
                        child: Text('Uber'),
                      ),
                      DropdownMenuItem(
                        value: 'Transporte',
                        child: Text('Transporte'),
                      ),
                      DropdownMenuItem(
                        value: 'Ropa',
                        child: Text('Ropa'),
                      ),
                      DropdownMenuItem(
                        value: 'Delivery',
                        child: Text('Delivery'),
                      ),
                      DropdownMenuItem(
                        value: 'Frituras',
                        child: Text('Frituras'),
                      ),
                      DropdownMenuItem(
                        value: 'Alcohol',
                        child: Text('Alcohol'),
                      ),
                      DropdownMenuItem(
                        value: 'Cine',
                        child: Text('Cine'),
                      ),
                      DropdownMenuItem(
                        value: 'Gasolina',
                        child: Text('Gasolina'),
                      ),
                      DropdownMenuItem(
                        value: 'Otros',
                        child: Text('Otros'),
                      ),
                    ],
                    onChanged: (value) {},
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.pop(context);
                      }
                    },
                    child: const Text('Agregar'),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
