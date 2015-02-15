//
//  ViewController.m
//  YiSwitch
//
//  Created by coderyi on 15/2/15.
//  Copyright (c) 2015年 coderyi. All rights reserved.
//

#import "ViewController.h"
#import "YiSwitch.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    float h=50;
    //    UISwitch
    YiSwitch *textSwitch=[[YiSwitch alloc] initWithFrame:CGRectMake(100, h, 80, 40) direction:YiSwitchDirectionHorizontal style:YiSwitchStyleSquare];
    [self.view addSubview:textSwitch];
    [textSwitch addTarget:self action:@selector(switchAction:) forControlEvents:UIControlEventValueChanged];
    textSwitch.yesLabel.text=@"yes";
    textSwitch.noLabel.text=@"no";
    textSwitch.cornerRadius=4;
    
    h=150;
    YiSwitch *imageSwitch=[[YiSwitch alloc] initAboutImageWithFrame:CGRectMake(100, h, 85, 50) direction:YiSwitchDirectionHorizontal style:YiSwitchStyleSquare];
    [self.view addSubview:imageSwitch];
    
    
    [imageSwitch addTarget:self action:@selector(switchAction:) forControlEvents:UIControlEventValueChanged];
    
    [imageSwitch setBgViewYesImage:[UIImage imageNamed:@"right"] noImage:[UIImage imageNamed:@"wrong"]];
    
    imageSwitch.yesImageView.image=[UIImage imageNamed:@"button"];
    imageSwitch.noImageView.image=[UIImage imageNamed:@"button"];
    imageSwitch.isYes=NO;
    
    h=250;
    YiSwitch *circleSwitch=[[YiSwitch alloc] initWithFrame:CGRectMake(100, h, 80, 45) direction:YiSwitchDirectionHorizontal style:YiSwitchStyleCircle];
    [self.view addSubview:circleSwitch];
    circleSwitch.backgroundColor=[UIColor colorWithRed:0.00f green:0.48f blue:0.93f alpha:1.00f];
    circleSwitch.yesLabel.backgroundColor=[UIColor whiteColor];
    circleSwitch.noLabel.backgroundColor=[UIColor whiteColor];
    [circleSwitch addTarget:self action:@selector(switchAction:) forControlEvents:UIControlEventValueChanged];
    
        h=350;
    
    
    
    
    YiSwitch *verticalSwitch=[[YiSwitch alloc] initWithFrame:CGRectMake(120, h, 40, 100) direction:YiSwitchDirectionVertical style:YiSwitchStyleCircle];
    [self.view addSubview:verticalSwitch];
    verticalSwitch.backgroundColor=[UIColor colorWithRed:0.89f green:0.89f blue:0.89f alpha:1.00f];
    verticalSwitch.yesLabel.backgroundColor=[UIColor colorWithRed:0.27f green:0.85f blue:0.37f alpha:1.00f];
    verticalSwitch.noLabel.backgroundColor=[UIColor whiteColor];
    [verticalSwitch addTarget:self action:@selector(switchAction:) forControlEvents:UIControlEventValueChanged];

   

    
}





-(void)switchAction:(YiSwitch *)slider{
    NSLog(@"this is %d",slider.isYes);
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
