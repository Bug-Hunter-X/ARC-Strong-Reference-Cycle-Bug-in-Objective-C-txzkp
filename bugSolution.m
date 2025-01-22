The solution is to break the retain cycle using `weak` properties.  Modify the class declarations as follows:

```objectivec
@interface MyClass : NSObject
@property (weak) AnotherClass *anotherObject;
@end

@interface AnotherClass : NSObject
@property (weak) MyClass *myObject;
@end
```

By using `weak` references (one or both), one of the references doesn't increase the retain count of the object. This allows the object to be deallocated when its reference count drops to zero, thus breaking the cycle and preventing memory leaks.  You should carefully consider which reference should be `weak` based on the relationship between your objects; usually, the child object should have a weak reference to the parent object.  For example, in a `UIView` and `UIViewController` relationship, the `UIView` would have a weak reference to the `UIViewController`.