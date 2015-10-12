//
//  YiSwitch.h
//  YiSwitch
//
//  Created by coderyi on 15/2/14.
//  Copyright (c) 2015年 coderyi. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef NS_ENUM(NSInteger, YiSwitchStyle) {
    YiSwitchStyleSquare,                  // regular table view
    YiSwitchStyleCircle                 // preferences style table view
};
typedef NS_ENUM(NSInteger, YiSwitchDirection) {
    YiSwitchDirectionHorizontal,                  // regular table view
    YiSwitchDirectionVertical                 // preferences style table view
};

@interface YiSwitch : UIControl
@property BOOL isYes;
@property UILabel *noLabel;
@property UILabel *yesLabel;
@property UIImageView *bgView;


@property UIImageView *noImageView;
@property UIImageView *yesImageView;
@property float cornerRadius;

- (id)initWithFrame:(CGRect)frame direction:(YiSwitchDirection)direction style:(YiSwitchStyle)style;

- (id)initAboutImageWithFrame:(CGRect)frame direction:(YiSwitchDirection)direction style:(YiSwitchStyle)style;
-(void)setBgViewYesImage:(UIImage *)yesImage noImage:(UIImage *)noImage;

@end
