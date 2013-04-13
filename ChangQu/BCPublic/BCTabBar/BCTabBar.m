//
//  BCTabBar.m
//  ChangQu
//
//  Created by NFJ on 13-4-13.
//  Copyright (c) 2013年 BC. All rights reserved.
//

#import "BCTabBar.h"

@implementation BCTabBar

- (id)initWithItem:(BCTabBarItem)item
{
    CGRect frame = CGRectMake(0, [UIScreen mainScreen].bounds.size.height - 53 - 20, 320, 53);
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
        UIImageView *bgImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, self.bounds.size.height-53, 320, 53)];
        [bgImageView setImage:[UIImage imageNamed:@"BCPublic_BCTab1"]];
        [self addSubview:bgImageView];
        
        //我的记录Button
        UIButton *button1 = [UIButton buttonWithType:UIButtonTypeCustom];
        [button1 setFrame:CGRectMake(self.bounds.origin.x + 4, self.bounds.origin.y + 8, 100, 41)];
       // [button1 setImage:[UIImage imageNamed:@"BCPublic_BCTab1"] forState:UIControlStateNormal];
        [button1 setImage:[UIImage imageNamed:@"BCPublic_BCTab2"] forState:UIControlStateHighlighted];
        [button1 addTarget:self action:@selector(viewChanged:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:button1];
        
        //记录Button
        UIButton *button2 = [UIButton buttonWithType:UIButtonTypeCustom];
        [button2 setFrame:CGRectMake(self.bounds.origin.x + 110, self.bounds.origin.y + 8, 98, 41)];
        // [button1 setImage:[UIImage imageNamed:@"BCPublic_BCTab1"] forState:UIControlStateNormal];
        [button2 setImage:[UIImage imageNamed:@"BCPublic_BCTab2"] forState:UIControlStateHighlighted];
        [button2 addTarget:self action:@selector(viewChanged:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:button2];
        
        //家长广场Button
        UIButton *button3 = [UIButton buttonWithType:UIButtonTypeCustom];
        [button3 setFrame:CGRectMake(self.bounds.origin.x + 215, self.bounds.origin.y + 8, 100, 41)];
        // [button1 setImage:[UIImage imageNamed:@"BCPublic_BCTab1"] forState:UIControlStateNormal];
        [button3 setImage:[UIImage imageNamed:@"BCPublic_BCTab2"] forState:UIControlStateHighlighted];
        [button3 addTarget:self action:@selector(viewChanged:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:button3];
        
//        //判断当前页面
//        if (item == BCTabBarItemMyRecord) {
//            button1.
//        }
        
    }
    return self;
}

- (UIViewController*)viewController
{
    for (UIView* next = self; next; next = next.superview) {
        UIResponder* nextResponder = [next nextResponder];
        if ([nextResponder isKindOfClass:[UIViewController class]]) {
            return (UIViewController*)nextResponder;
        }
    }
    return nil;
}

-(void)viewChanged:(UIButton*)button
{
    //    NSString* vcID = [[NSString alloc] initWithFormat:@"DMCForLove%d",button.tag];
    //    [[self viewController] presentViewController:[[self viewController].storyboard instantiateViewControllerWithIdentifier:vcID] animated:NO completion:^{
    //        ;
    //    }];
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
