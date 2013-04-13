//
//  MyrecodingCell.m
//  ChangQu
//
//  Created by 颜 沛贤 on 13-4-13.
//  Copyright (c) 2013年 BC. All rights reserved.
//

#import "MyrecodingCell.h"

@implementation MyrecodingCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self makeKit];
    }
    return self;
}

- (void)makeKit
{
    self.recodImageView = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 60, 60)];
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
