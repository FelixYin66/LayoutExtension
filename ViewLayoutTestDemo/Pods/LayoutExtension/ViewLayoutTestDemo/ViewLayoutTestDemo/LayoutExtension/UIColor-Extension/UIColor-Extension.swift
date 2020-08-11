//
//  UIColor-Extension.swift
//  ViewLayoutTestDemo
//
//  Created by Felix Yin on 2020/7/13.
//  Copyright © 2020 Felix Yin. All rights reserved.
//

import UIKit

extension UIColor{
    
     open class func color(r:NSInteger,g:NSInteger,b:NSInteger,a:Float) -> UIColor {
        let red:CGFloat = CGFloat(r)/255.0;
        let green:CGFloat = CGFloat(g)/255.0;
        let blue:CGFloat = CGFloat(b)/255.0;
        let alpha:CGFloat = CGFloat(a);
        return UIColor.init(red: red, green: green, blue: blue, alpha: alpha);
    }
    
     open class func colorHex(str:String) -> (UIColor?) {
        let scanner:Scanner = Scanner(string: str);
        if str.hasPrefix("#"){
            scanner.scanLocation = 1;
        }

        var hexNum = UInt32(0);
        if !scanner.scanHexInt32(&hexNum) {
            return nil;
        }

        let red = hexNum>>16 & 0xFF;
        let green = hexNum>>8 & 0xFF;
        let blue = hexNum & 0xFF;
        return UIColor.color(r: NSInteger(red), g: NSInteger(green), b: NSInteger(blue), a: 1.0);
    }
    
    
}
