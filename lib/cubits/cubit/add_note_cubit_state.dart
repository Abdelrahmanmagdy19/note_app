abstract class AddNoteCubitState {}

class AddNoteCubitInitial extends AddNoteCubitState {}

class AddNoteCubiLoding extends AddNoteCubitState {}

class AddNoteCubitSuccess extends AddNoteCubitState {}

class AddNoteCubitFauilir extends AddNoteCubitState {
  final String errMassage;

  AddNoteCubitFauilir(this.errMassage);
}
