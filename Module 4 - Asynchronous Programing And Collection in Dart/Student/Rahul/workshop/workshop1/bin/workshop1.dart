mixin LoggingMixin {
  void logMessage(String message) {
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

    // Additional logic for ClassB

class ClassB with LoggingMixin{
  void performtask(){
    logMessage('Performing task in ClassB');
  }
}
void main() {
  // Create instances of classes using the LoggingMixin[cite: 31].
  var instanceA = ClassA();
  var instanceB = ClassB(); // Instance of ClassB

  // Use the shared logging functionality[cite: 32, 33].
  instanceA.performAction(); // Calls performAction(), which logs a message.
  instanceB.performtask();  
}

 
