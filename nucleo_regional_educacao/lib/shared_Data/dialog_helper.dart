import 'package:flutter/material.dart';
import 'package:nucleo_regional_educacao/components/exit_dialog.dart';

class DialogHelper {
  static exit(context) => showDialog(
      context: context, builder: (context) => ExitConfirmationDialog());
}
