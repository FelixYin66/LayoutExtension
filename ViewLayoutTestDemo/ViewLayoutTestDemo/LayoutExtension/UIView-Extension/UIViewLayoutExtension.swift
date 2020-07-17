//
//  UIViewLayoutExtension.swift
//  SwipeCellTestDemo
//
//  Created by Felix Yin on 2020/6/16.
//  Copyright © 2020 Felix Yin. All rights reserved.
//

import UIKit

extension UIView{
    
   public class func isiPhoneX() -> Bool {
        if #available(iOS 11.0, *) {
            let window:UIWindow = UIApplication.shared.delegate!.window!!;
            let isiPhoneX = window.safeAreaInsets.bottom > 0 ? true : false;
            return isiPhoneX;
        }
        return false;
    }
    
   public class func UIWidth() -> CGFloat {
        return UIScreen.main.bounds.size.width;
    }
    
    public class func UIHeight() -> CGFloat {
        return UIScreen.main.bounds.size.height;
    }
    
    public class func ScreenWidthScale() -> CGFloat {
        return UIView.UIWidth()/375.0;
    }
    
    public class func ScreenHeightScale() -> CGFloat {
        return UIView.isiPhoneX() ? (UIView.UIHeight() - 58)/667.0 : UIView.UIHeight()/667.0;
    }
    
    public class func ScaleMakeSize(x:CGFloat,y:CGFloat) -> CGSize {
        let scale = UIView.ScreenWidthScale();
        return CGSize(width: x*scale, height: scale*y);
    }
    
    public class func ScaleSize(x:CGFloat) -> CGFloat {
        let scale = UIView.ScreenWidthScale();
        return scale*x;
    }
 
    public var left:CGFloat{
        get{
            return self.frame.origin.x;
        }
        set{
            var r = self.frame;
            r.origin.x = newValue;
            self.frame = r;
        }
    }
    
    public var top:CGFloat{
        get{
            return self.frame.origin.y;
        }
        set{
            var r = self.frame;
            r.origin.y = newValue;
            self.frame = r;
        }
    }
    
    public var width:CGFloat{
        get{
            return self.frame.size.width;
        }
        set{
            var r = self.frame;
            r.size.width = newValue;
            self.frame = r;
        }
    }
    
    public var height:CGFloat{
        get{
            return self.frame.size.height;
        }
        set{
            var r = self.frame;
            r.size.height = newValue;
            self.frame = r;
        }
    }
    
    public var right:CGFloat{
        get{
            return self.left + self.width;
        }
        set{
            var r = self.frame;
            r.origin.x = newValue - frame.size.width;
            self.frame = r;
        }
    }
    
    public var bottom:CGFloat{
        get{
            return self.top + self.height;
        }
        set{
            var r = self.frame;
            r.origin.y = newValue - frame.size.height;
            self.frame = r;
        }
    }
    
    public var centerX:CGFloat{
        get{
            return self.center.x;
        }
        set{
            self.center = CGPoint(x: newValue, y: self.center.y);
        }
    }
    
    public var centerY:CGFloat{
        get{
            return self.center.y;
        }
        set{
            self.center = CGPoint(x: self.center.x, y: newValue);
        }
    }
    
    public var origin:CGPoint{
        get{
            return self.frame.origin;
        }
        set{
            self.left = newValue.x;
            self.top = newValue.y;
        }
    }
    
    public var size:CGSize{
        get{
            return self.frame.size;
        }
        set{
            self.width = newValue.width;
            self.height = newValue.height;
        }
    }
}
