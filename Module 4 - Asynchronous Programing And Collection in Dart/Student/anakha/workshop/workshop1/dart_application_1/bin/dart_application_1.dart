import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;

mixin LoggingMixin {
  void logMessage(String message) {
    print('LOG: $message');
    print('LOG: $message');
  }
}

class ClassA with LoggingMixin {
  void performAction() {
    logMessage('Performing action in ClassA');
   
  }
}
class ClassB with LoggingMixin{
  void performAction()
  {
    logMessage('Performing action in ClassB');
    
  }
}
  
void main() {
  
  var instanceA = ClassA();
  var instanceB = ClassB();

  instanceA.performAction();
  instanceB.performAction();
  
}

