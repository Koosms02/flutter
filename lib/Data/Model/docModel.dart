import 'package:equatable/equatable.dart';

class Module extends Equatable {
  final String ModuleName;
  bool LikedStatus;
  final String Images;

  Module(this.ModuleName, this.LikedStatus, this.Images);
  @override
  // TODO: implement props
  List<Object?> get props => [ModuleName, LikedStatus, Images];

  static List<Module> modules = [
    Module("Real Analysis", false, "assets/images/hdls.png"),
    Module("Calculus", false, "assets/images/hdls.png"),
    Module("Mathematical statistics", false, "assets/images/jskd.png"),
    Module("Algebra", false, "assets/images/Screenshot (362).png"),
    Module("Psycology", false, "assets/images/sf.png"),
    Module("Multivariable calculus", false, "assets/images/shkdj.png"),
  ];
}
