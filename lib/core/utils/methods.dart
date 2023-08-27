import 'package:flutter/material.dart';

showSnackbar(state, context) {
  ScaffoldMessenger.of(context)
      .showSnackBar(SnackBar(content: Text(state.errmessage)));
}
