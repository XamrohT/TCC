import 'package:flutter/material.dart';
import 'package:nre_tcc_feitep/components/exit_dialog.dart';

class DialogHelper {
  static exit(context) => showDialog(
      context: context, builder: (context) => ExitConfirmationDialog());
}
