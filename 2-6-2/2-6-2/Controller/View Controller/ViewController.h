//
//  ViewController.h
//  2-6-2
//
//  Created by yuu ogasawara on 2017/04/27.
//  Copyright © 2017年 stv. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ControllerBase.h"

@interface ViewController : UIViewController <ControllerBaseDelegate>
-(BOOL)show:(NSDictionary*)query;
@end

