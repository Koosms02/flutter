import 'package:equatable/equatable.dart';
import 'package:studyarchive/Data/Model/model.dart';

class favourite_model extends Equatable {
  final List<Module> modules;
  const favourite_model({this.modules = const <Module>[]});
  @override
  List<Object> get props => [modules];
}
