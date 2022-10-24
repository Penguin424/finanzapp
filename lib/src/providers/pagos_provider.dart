import 'package:finanzapp/src/services/pagos_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final pagosProvider = ChangeNotifierProvider((ref) {
  return PagosService();
});
