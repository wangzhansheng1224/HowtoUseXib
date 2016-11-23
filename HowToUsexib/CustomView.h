
//
//  CustomView.h
//  HowToUsexib
//
//  Created by 王战胜 on 2016/11/14.
//  Copyright © 2016年 王战胜. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomView : UIView
@property (strong, nonatomic) IBOutlet UIImageView *BgImage;
@property (strong, nonatomic) IBOutlet UIButton *VideoBtn;
@property (strong, nonatomic) IBOutlet UIButton *VoiceBtn;
@property (strong, nonatomic) IBOutlet UIButton *RefuseBtn;
@property (strong, nonatomic) IBOutlet UIImageView *HeadImage;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *RangLeft;

@end
