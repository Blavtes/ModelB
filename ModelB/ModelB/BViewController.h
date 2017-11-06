//
//  BViewController.h
//  MainProject
//
//  Created by casa on 2016/12/10.
//  Copyright © 2016年 casa. All rights reserved.
//

#import <UIKit/UIKit.h>
//typedef void ^(test) (NSString *log);
@interface BViewController : UIViewController

- (instancetype)initWithContentText:(NSString *)contentText block:(void (^)(NSString *))block;

@end
