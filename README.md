UIView+Bounds
========
Simple UIView's category that calculates and resizes our subclasses (UIButton, UILabel, UITextField) to its given content size.

Installation
--------
Clone this repo and copy the folder **Bounds** into your Xcode project.

How-to
--------

##### Text

```
- (void)resizeAndSetText:(NSString *)text;
- (void)resizeAndSetText:(NSString *)text forMasterView:(ETFlowView *)masterView;
- (void)resizeAndSetText:(NSString *)text forMasterView:(ETFlowView *)masterView withMinimumHeight:(CGFloat)mininumHeight;
- (CGFloat)getProbableHeightForText:(NSString *)text;
- (CGFloat)getProbableHeightForText:(NSString *)text withMinimumHeight:(CGFloat)mininumHeight;
```

##### Attributed Text

```
- (void)resizeAndSetAttributedText:(NSAttributedString *)text;
- (void)resizeAndSetAttributedText:(NSAttributedString *)text forMasterView:(ETFlowView *)masterView;
- (void)resizeAndSetAttributedText:(NSAttributedString *)text forMasterView:(ETFlowView *)masterView withMinimumHeight:(CGFloat)mininumHeight;
- (CGFloat)getProbableHeightForAttributedText:(NSAttributedString *)text;
- (CGFloat)getProbableHeightForAttributedText:(NSAttributedString *)text withMinimumHeight:(CGFloat)mininumHeight;
```

Support
--------
Just open an issue on Github and we'll get to it as soon as possible.

About
--------
**UIView+Bounds** is brought to you by InEvent.
