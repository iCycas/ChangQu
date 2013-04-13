//
//  BCTabBar.h
//  ChangQu
//
//  Created by NFJ on 13-4-13.
//  Copyright (c) 2013年 BC. All rights reserved.
//

#import <UIKit/UIKit.h>


typedef enum {
    BCTabBarItemMyRecord,
    BCTabBarItemSquare,
} BCTabBarItem;

@interface BCTabBar : UIView


- (id)initWithItem:(BCTabBarItem)item;

@end
