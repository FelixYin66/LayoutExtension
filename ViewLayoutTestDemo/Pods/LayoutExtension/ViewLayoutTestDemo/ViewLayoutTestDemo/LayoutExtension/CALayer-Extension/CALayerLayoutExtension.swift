//
//  CALayerLayoutExtension.swift
//  SwipeCellTestDemo
//
//  Created by Felix Yin on 2020/6/17.
//  Copyright © 2020 Felix Yin. All rights reserved.
//

import UIKit

extension CALayer{
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
    
    public var center:CGPoint {
        get{
            let x = self.frame.origin.x + self.frame.size.width*0.5;
            let y = self.frame.origin.y + self.frame.size.height*0.5;
            return CGPoint(x: x, y: y);
        }
        set{
            var r = self.frame;
            r.origin.x = newValue.x - r.size.width*0.5;
            r.origin.y = newValue.y - r.size.height*0.5;
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


