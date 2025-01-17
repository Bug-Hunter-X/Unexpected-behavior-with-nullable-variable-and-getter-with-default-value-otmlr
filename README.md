# Dart Bug: Unexpected Getter Behavior with Nullable Variables

This repository demonstrates a subtle bug in Dart related to the interaction between nullable variables, getters with default values, and direct access to internal variables.  The bug can lead to unexpected behavior when the internal variable's value is changed directly, bypassing the getter's default value mechanism.

## Bug Description

The `bug.dart` file contains a class `MyClass` with a nullable variable `_myVariable` and a getter `myVariable` that returns a default value of 0 if `_myVariable` is null. While the getter correctly provides the default value initially, directly setting `_myVariable` to null after initialization causes the getter to still return 0, even when it's expected to return null.

## Solution

The `bugSolution.dart` file provides a solution to this issue by using the setter to update the variable and by avoiding direct manipulation of the internal variable if possible.  Using only the getter and setter ensures consistent behavior.

## How to Reproduce

1. Clone this repository.
2. Run `bug.dart` and observe the output.
3. Run `bugSolution.dart` and observe the improved behavior.