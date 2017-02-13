//
//  UIImage+CornerRadius.m
//  LazyTableImages
//
//  Created by Binky Lee on 16/4/29.
//
//

#import "UIImage+CornerRadius.h"

@implementation UIImage (CornerRadius)

- (UIImage*)imageWithCornerRadius:(CGFloat)cornerRadius{
    CGRect rect = (CGRect){{0.f,0.f},self.size};
    UIGraphicsBeginImageContextWithOptions(self.size, NO, [UIScreen mainScreen].scale);
    CGContextAddPath(UIGraphicsGetCurrentContext(), [UIBezierPath bezierPathWithRoundedRect:rect cornerRadius:cornerRadius].CGPath);
    CGContextClip(UIGraphicsGetCurrentContext());
    [self drawInRect:rect];
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

@end
