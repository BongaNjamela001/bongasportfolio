import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc_observer.dart';
import 'bongasportfolio.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const BongasPortfolio());
}
