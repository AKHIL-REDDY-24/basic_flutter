
class SignUpWithEmailAndPasswordFailure {
  final String message;

  const SignUpWithEmailAndPasswordFailure([this.message = "An unknown Error occurred."]);

  factory SignUpWithEmailAndPasswordFailure.code(String code){
    switch(code){
      case 'weak-password' : return const SignUpWithEmailAndPasswordFailure('Please enter a stronger Password');
      case 'invalid-email' : return const SignUpWithEmailAndPasswordFailure('Email is not valid or Badly formatted');
      case 'email-already-in-use' : return const SignUpWithEmailAndPasswordFailure('An account already exists for that email');
      case 'operation-not-allowed' : return const SignUpWithEmailAndPasswordFailure('Operation is not allowed.Please contact support');
      case 'user-disabled' : return const SignUpWithEmailAndPasswordFailure('This user has been disabled.Please contact support for help');
      default: return const SignUpWithEmailAndPasswordFailure();
    }
  }
}
