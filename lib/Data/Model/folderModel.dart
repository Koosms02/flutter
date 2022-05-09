import 'package:equatable/equatable.dart';

class ModuleFolderModel extends Equatable {
  final String ModuleName;
  final String ModuleCode;
  final String UniversityName;
  final String folderUrl;

  ModuleFolderModel(
      this.ModuleName, this.ModuleCode, this.UniversityName, this.folderUrl);
  @override
  // TODO: implement props
  List<Object?> get props => [
        ModuleName,
        ModuleCode,
        UniversityName,
        folderUrl,
      ];
}
