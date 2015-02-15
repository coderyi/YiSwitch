//
//  YiSwitch.m
//  YiSwitch
//
//  Created by coderyi on 15/2/14.
//  Copyright (c) 2015年 coderyi. All rights reserved.
//

#import "YiSwitch.h"


UIImage *_yesImage;
UIImage *_noImage;
BOOL _isAboutImage;
@implementation YiSwitch





- (id)initWithFrame:(CGRect)frame direction:(YiSwitchDirection)direction style:(YiSwitchStyle)style
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        _isAboutImage=NO;
        float space=1;
        float w=frame.size.width;
        float h=frame.size.height;
        float sliderWidth;
        float sliderHeight = 0.0;
        
        float cornerRadius=2.0;
        if (direction==YiSwitchDirectionHorizontal) {
            
        
        if (w-2*space>h-2*space) {
            if (w-2*space>(h-space)*5) {
                sliderWidth=(h-space)*2;
                
            }else{
                sliderWidth=h-2*space;

            }
            
        }else{
            sliderWidth=(w-space*2)*0.75;
            
        }
        
        }else{
            if (h-2*space>w-2*space) {
                if (h-2*space>(w-space)*5) {
                    sliderHeight=(w-space)*2;
                }else{
                    sliderHeight=w-2*space;
                }
            }else{
            
                sliderHeight=(h-space*2)*0.75;

            }
            
        }
                
        _noLabel =[[UILabel alloc] initWithFrame:CGRectMake(space, space,sliderWidth, h-2*space)];
        _yesLabel =[[UILabel alloc] initWithFrame:CGRectMake(w-(sliderWidth+space), space, sliderWidth, h-2*space)];
        _noLabel.textAlignment=NSTextAlignmentCenter;
        _yesLabel.textAlignment=NSTextAlignmentCenter;
        _noLabel.font=[UIFont boldSystemFontOfSize:15];
        _yesLabel.font=[UIFont boldSystemFontOfSize:15];

        _noLabel.textColor=[UIColor blackColor];
        _yesLabel.textColor=[UIColor whiteColor];
        if (direction==YiSwitchDirectionVertical) {
            _noLabel.frame=CGRectMake(space, space,w-2*space, sliderHeight);
            _yesLabel.frame=CGRectMake(space, h-(sliderHeight+space), w-2*space, sliderHeight);
        }
        
        [self addSubview:_noLabel];
        [self addSubview:_yesLabel];
        
        
        self.layer.masksToBounds=YES;
        self.layer.cornerRadius=cornerRadius;

        _noLabel.layer.masksToBounds=YES;
        _noLabel.layer.cornerRadius=cornerRadius;
        
        _yesLabel.layer.masksToBounds=YES;
        _yesLabel.layer.cornerRadius=cornerRadius;
        
        if (style==YiSwitchStyleCircle) {
            if (direction==YiSwitchDirectionHorizontal) {
                
                if (w>h) {
                    sliderWidth=h-2*space;
                    _noLabel.frame=CGRectMake(space, space,sliderWidth, h-2*space);
                    _yesLabel.frame=CGRectMake(w-(sliderWidth+space), space, sliderWidth, h-2*space);
                    _noLabel.layer.cornerRadius=sliderWidth/2;
                    _yesLabel.layer.cornerRadius=sliderWidth/2;
                    self.layer.cornerRadius=sliderWidth/2;

                    
                }
                
            }else{
                if (h>w) {
                    sliderHeight=w-2*space;

                    _noLabel.frame=CGRectMake(space, space,w-2*space, sliderHeight);
                    _yesLabel.frame=CGRectMake(space, h-(sliderHeight+space), w-2*space, sliderHeight);

                    _noLabel.layer.cornerRadius=sliderHeight/2;
                    _yesLabel.layer.cornerRadius=sliderHeight/2;
                    self.layer.cornerRadius=sliderHeight/2;

                    
                    
                }
            
            }
        }
        
        self.backgroundColor=[UIColor colorWithRed:0.89f green:0.89f blue:0.89f alpha:1.00f];
        _noLabel.backgroundColor=[UIColor whiteColor];
        _yesLabel.backgroundColor=[UIColor colorWithRed:0.27f green:0.85f blue:0.37f alpha:1.00f];
        _noLabel.hidden=YES;
        _yesLabel.hidden=YES;
        //        默认 开
        _isYes=YES;
        _yesLabel.hidden=NO;
    }
    return self;
}

-(void)setIsYes:(BOOL)isYes{
    if (!_isYes) {
        if (_isAboutImage) {
            _yesImageView.hidden=YES;
            _noImageView.hidden=NO;
            _bgView.image=_noImage;
        }else{
            _yesLabel.hidden=YES;
            _noLabel.hidden=NO;
        }

        
        
    }else{
        if (_isAboutImage) {
            _yesImageView.hidden=NO;
            _noImageView.hidden=YES;
            _bgView.image=_yesImage;

        }else{
            _yesLabel.hidden=NO;
            _noLabel.hidden=YES;

        }
        
    }

}
-(void)setCornerRadius:(float)cornerRadius{
    self.layer.cornerRadius=cornerRadius;
    
    _noLabel.layer.masksToBounds=YES;
    _noLabel.layer.cornerRadius=cornerRadius;
    
    _yesLabel.layer.masksToBounds=YES;
    _yesLabel.layer.cornerRadius=cornerRadius;
}

- (id)initAboutImageWithFrame:(CGRect)frame direction:(YiSwitchDirection)direction style:(YiSwitchStyle)style
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        _isAboutImage=YES;
        float space=1;
        float w=frame.size.width;
        float h=frame.size.height;
        float sliderWidth;
        float sliderHeight = 0.0;
        
        float cornerRadius=2.0;
        if (direction==YiSwitchDirectionHorizontal) {
            
            
            if (w-2*space>h-2*space) {
                if (w-2*space>(h-space)*5) {
                    sliderWidth=(h-space)*2;
                    
                }else{
                    sliderWidth=h-2*space;
                    
                }
                
            }else{
                sliderWidth=(w-space*2)*0.75;
                
            }
            
        }else{
            if (h-2*space>w-2*space) {
                if (h-2*space>(w-space)*5) {
                    sliderHeight=(w-space)*2;
                }else{
                    sliderHeight=w-2*space;
                }
            }else{
                
                sliderHeight=(h-space*2)*0.75;
                
            }
            
        }
        
        _bgView=[[UIImageView alloc] initWithFrame:CGRectMake(0, 0, w, h)];
        [self addSubview:_bgView];
        
        _noImageView =[[UIImageView alloc] initWithFrame:CGRectMake(space, space,sliderWidth, h-2*space)];
        _yesImageView =[[UIImageView alloc] initWithFrame:CGRectMake(w-(sliderWidth+space), space, sliderWidth, h-2*space)];
        if (direction==YiSwitchDirectionVertical) {
            _noImageView.frame=CGRectMake(space, space,w-2*space, sliderHeight);
            _yesImageView.frame=CGRectMake(space, h-(sliderHeight+space), w-2*space, sliderHeight);
        }
        
        [_bgView addSubview:_noImageView];
        [_bgView addSubview:_yesImageView];
        
        
        self.layer.masksToBounds=YES;
        self.layer.cornerRadius=cornerRadius;
        
        _noImageView.layer.masksToBounds=YES;
        _noImageView.layer.cornerRadius=cornerRadius;
        
        _yesImageView.layer.masksToBounds=YES;
        _yesImageView.layer.cornerRadius=cornerRadius;
        
        if (style==YiSwitchStyleCircle) {
            if (direction==YiSwitchDirectionHorizontal) {
                
                if (w>h) {
                    sliderWidth=h-2*space;
                    _noImageView.frame=CGRectMake(space, space,sliderWidth, h-2*space);
                    _yesImageView.frame=CGRectMake(w-(sliderWidth+space), space, sliderWidth, h-2*space);
                    _noImageView.layer.cornerRadius=sliderWidth/2;
                    _yesImageView.layer.cornerRadius=sliderWidth/2;
                    self.layer.cornerRadius=sliderWidth/2;
                    
                    
                }
                
            }else{
                if (h>w) {
                    sliderHeight=w-2*space;
                    
                    _noImageView.frame=CGRectMake(space, space,w-2*space, sliderHeight);
                    _yesImageView.frame=CGRectMake(space, h-(sliderHeight+space), w-2*space, sliderHeight);
                    
                    _noImageView.layer.cornerRadius=sliderHeight/2;
                    _yesImageView.layer.cornerRadius=sliderHeight/2;
                    self.layer.cornerRadius=sliderHeight/2;
                    
                    
                    
                }
                
            }
        }
        
        self.backgroundColor=[UIColor blueColor];
        _noImageView.backgroundColor=[UIColor grayColor];
        _yesImageView.backgroundColor=[UIColor redColor];
        _noImageView.hidden=YES;
        _yesImageView.hidden=YES;
        //        默认 开
        _isYes=YES;
        _yesImageView.hidden=NO;
    }
    return self;
}




#pragma mark - UIControl Override -

/** Tracking is started **/
-(BOOL)beginTrackingWithTouch:(UITouch *)touch withEvent:(UIEvent *)event{
    [super beginTrackingWithTouch:touch withEvent:event];
    
    //We need to track continuously
    return YES;
}

/** Track continuos touch event (like drag) **/
-(BOOL)continueTrackingWithTouch:(UITouch *)touch withEvent:(UIEvent *)event{
    [super continueTrackingWithTouch:touch withEvent:event];
    
    
    
    
    
    return YES;
}

/** Track is finished **/
-(void)endTrackingWithTouch:(UITouch *)touch withEvent:(UIEvent *)event{
    [super endTrackingWithTouch:touch withEvent:event];
    if (_isYes) {
        _isYes=NO;
        _yesLabel.hidden=YES;
        _noLabel.hidden=NO;
        
        _yesImageView.hidden=YES;
        _noImageView.hidden=NO;
        _bgView.image=_noImage;
    }else{
        _isYes=YES;
        _yesLabel.hidden=NO;
        _noLabel.hidden=YES;
        _yesImageView.hidden=NO;
        _noImageView.hidden=YES;
        _bgView.image=_yesImage;

    }
    
    //Control value has changed, let's notify that
    [self sendActionsForControlEvents:UIControlEventValueChanged];
}
-(void)setBgViewYesImage:(UIImage *)yesImage noImage:(UIImage *)noImage{

    _yesImage=yesImage;
    _noImage=noImage;
    _bgView.image=_yesImage;

    
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
