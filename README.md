# simple_dart_tools
Simple validators for dart/flotter projects projects.

Validators
- Validate email
- Validate Brazilian cpf 



## Using on flutter projects
Add this in your pubspec.yaml file
```
 simple_dart_tools: 
    git: git://github.com/eudangeld/simple_dart_tools.git
```
## Importing 
```
import 'package:simple_dart_tools/dart_tools.dart';
```

## Basic Usage
```
DartTools tools = DartTools();
if (!tools.validateEmail(value))print('your warning')
```

## Running the tests
On project folder run ```Flutter test```





