//
//  IDMViewController.m
//  glucose
//
//  Created by idomizrachi on 04/27/2017.
//  Copyright (c) 2017 idomizrachi. All rights reserved.
//

#import "IDMViewController.h"
#import <glucose/IDMGlucose.h>

@interface IDMViewController ()

@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UILabel *footerLabel;

@property (nonatomic, strong) UILabel *leftLabel;
@property (nonatomic, strong) UILabel *rightLabel;

@property (nonatomic, strong) UIView *squareView;
@property (nonatomic, strong) UIView *squareView2;

@end

@implementation IDMViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview: self.titleLabel];
    [self.view addSubview: self.footerLabel];
    [self.view addSubview: self.leftLabel];
    [self.view addSubview: self.rightLabel];
    [self.view addSubview: self.squareView];
    [self.view addSubview: self.squareView2];
    
    [self.titleLabel centerXInView: self.view];
    [self.titleLabel topToTopOfView:self.view offset:20.0f priority:UILayoutPriorityRequired isActive:YES];
    
    [self.footerLabel bottomToBottomOfView:self.view offset:20.0f priority:UILayoutPriorityRequired isActive:YES];
    [self.footerLabel widthEqualToView:self.view];
    [self.footerLabel heightWithMin:44.0f priority:UILayoutPriorityRequired isActive:YES];
    
    [self.leftLabel topToBottomOfView:self.titleLabel offset:20.0f priority:UILayoutPriorityRequired isActive:YES];
    [self.rightLabel topToBottomOfView:self.titleLabel offset:20.0f priority:UILayoutPriorityRequired isActive:YES];
    [self.leftLabel widthEqualToView:self.rightLabel];
    
    [self.leftLabel leadingToLeadingOfView:self.view offset:20.0f priority:UILayoutPriorityRequired isActive:YES];
    [self.rightLabel trailingToTrailingOfView:self.view offset:20.0f priority:UILayoutPriorityRequired isActive:YES];
    [self.rightLabel leadingToTrailingOfView:self.leftLabel offset:20.0f priority:UILayoutPriorityRequired isActive:YES];
    
    [self.squareView width:45.0f];
    [self.squareView height: 45.0f];
    [self.squareView topToBottomOfView:self.leftLabel offset:20.0f priority:UILayoutPriorityRequired isActive:YES];
    [self.squareView centerInView:self.view];
    
    [self.squareView2 bottomToTopOfView:self.footerLabel offset:30.0f priority:UILayoutPriorityRequired isActive:YES];
    
    
}


-(UILabel *)titleLabel {
    if (! _titleLabel) {
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.text = @"Title";
        _titleLabel.font = [UIFont preferredFontForTextStyle: UIFontTextStyleTitle1];
    }
    return _titleLabel;
}

-(UILabel *)footerLabel {
    if (! _footerLabel) {
        _footerLabel = [[UILabel alloc] init];
        _footerLabel.text = @"Start Footer Footer Footer Footer Footer Footer Footer Footer Footer Footer End";
        _footerLabel.font = [UIFont preferredFontForTextStyle: UIFontTextStyleTitle2];
        _footerLabel.textColor = [UIColor whiteColor];
        _footerLabel.backgroundColor = [UIColor lightGrayColor];
        _footerLabel.numberOfLines = 0;
    }
    return _footerLabel;
}

-(UILabel *)leftLabel {
    if (! _leftLabel) {
        _leftLabel = [[UILabel alloc] init];
        _leftLabel.text = @"Left";
        _leftLabel.font = [UIFont preferredFontForTextStyle: UIFontTextStyleBody];
        _leftLabel.backgroundColor = [UIColor colorWithWhite:0.3f alpha:1.0f];
        _leftLabel.textAlignment = NSTextAlignmentCenter;
        
    }
    return _leftLabel;
}

-(UILabel *)rightLabel {
    if (! _rightLabel) {
        _rightLabel = [[UILabel alloc] init];
        _rightLabel.text = @"Right";
        _rightLabel.font = [UIFont preferredFontForTextStyle: UIFontTextStyleBody];
        _rightLabel.backgroundColor = [UIColor colorWithWhite:0.7f alpha:1.0f];
        _rightLabel.textColor = [UIColor whiteColor];
        _rightLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _rightLabel;
}

-(UIView *)squareView {
    if (! _squareView) {
        _squareView = [[UIView alloc] init];
        _squareView.backgroundColor = [UIColor yellowColor];
    }
    return _squareView;
}

-(UIView *)squareView2 {
    if (! _squareView2) {
        _squareView2 = [[UIView alloc] init];
        _squareView2.backgroundColor = [UIColor blueColor];
    }
    return _squareView2;
}


@end
