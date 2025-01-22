# Objective-C ARC Strong Reference Cycle Bug

This repository demonstrates a common issue in Objective-C development: memory leaks caused by strong reference cycles under Automatic Reference Counting (ARC).

The `bug.m` file contains code exhibiting a strong reference cycle between two objects (`MyClass` and `AnotherClass`).  This results in the objects not being deallocated even when no longer needed.

The `bugSolution.m` file provides a corrected version using `weak` properties to break the cycle and resolve the memory leak.