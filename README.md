# SwiftMemoryPacking

A simple codebase that demonstrates how thinking about the ordering of components in your Swift structs is still important.

Was curious, hadn't really thought about it since my Objective-C days.


```
TestClass
=> Size:          8
=> Alignment:     8
=> Stride:        8
=======================
EmptyStruct
=> Size:          0
=> Alignment:     1
=> Stride:        1
=======================
BigStruct
=> Size:          33
=> Alignment:     8
=> Stride:        40
=======================
OptimizedStruct
=> Size:          24
=> Alignment:     8
=> Stride:        24
=======================
Program ended with exit code: 0

```