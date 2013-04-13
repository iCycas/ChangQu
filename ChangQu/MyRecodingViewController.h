//
//  MyRecodingViewController.h
//  ChangQu
//
//  Created by 颜 沛贤 on 13-4-13.
//  Copyright (c) 2013年 BC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyRecodingViewController : UIViewController <UICollectionViewDataSource,UICollectionViewDelegate>
{
    UICollectionView * _mainCollectionView;
    NSArray * _sourceArray;
}

@end
