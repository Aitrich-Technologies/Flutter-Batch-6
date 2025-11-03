mixin LoggingMixin {
  void logMessage(String message) {
    print('LOG: $message');
    print('LOG: $message');
  }
}

// Class that uses the LoggingMixin
class ClassA with LoggingMixin {
  void performAction() {
    logMessage('Performing action in ClassA');
    // Additional logic for ClassA
  }
}

// Class that also uses the LoggingMixin
class ClassB with LoggingMixin{
  void performAction()
  {
    logMessage('Performing action in ClassB');
    // Additional logic for ClassB
  }
}
  
void main() {
  // Create instances of classes using the LoggingMixin
  var instanceA = ClassA();
  var instanceB = ClassB();

  // Use the shared logging functionality
  instanceA.performAction();
  instanceB.performAction();
  
}
