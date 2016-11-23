//
//  ViewController.m
//  HowToUsexib
//
//  Created by 王战胜 on 2016/11/14.
//  Copyright © 2016年 王战胜. All rights reserved.
//

#import "ViewController.h"
#import "CustomView.h"

#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height
#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor greenColor];

    [self createUI];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)createUI{
    CustomView *view1=[[[NSBundle mainBundle]loadNibNamed:@"Empty" owner:nil options:nil]objectAtIndex:2];
    view1.tag=1;
    view1.frame=CGRectMake(0, 0, 400, 400);
    view1.RangLeft.constant=200-60;
    view1.center=CGPointMake(SCREEN_WIDTH/2, SCREEN_HEIGHT/2);
    [view1.RefuseBtn addTarget:self action:@selector(RefuseBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:view1];
}

- (void)RefuseBtnClick:(UIButton *)btn{
    CustomView *view=[self.view viewWithTag:1];
    view.hidden=YES;
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    CustomView *view=[self.view viewWithTag:1];
    view.hidden=NO;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
