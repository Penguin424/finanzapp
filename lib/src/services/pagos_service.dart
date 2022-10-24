import 'package:flutter/cupertino.dart';

class PagosService extends ChangeNotifier {
  List<String> _pagos = [];

  List<String> get pagos => _pagos;

  void addPago(String pago) {
    _pagos.add(pago);
    notifyListeners();
  }
}
