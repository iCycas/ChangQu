//
//  MyRecodingViewController.m
//  ChangQu
//
//  Created by 颜 沛贤 on 13-4-13.
//  Copyright (c) 2013年 BC. All rights reserved.
//

#import "MyRecodingViewController.h"
#import "BCRequest.h"

@interface MyRecodingViewController ()

@end

@implementation MyRecodingViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	
    //视图
    [self makeView];
    
    //数据接受
    [self recerveHttpData];
    
    
}
//视图
- (void)makeView
{
    UICollectionViewLayout * layout = [[UICollectionViewLayout alloc] init];
    
    _mainCollectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 44, 320, [UIScreen mainScreen].bounds.size.height-20-44-49) collectionViewLayout:layout];
    [_mainCollectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"recoding"];

    _mainCollectionView.delegate = self;
    _mainCollectionView.dataSource = self;
    _mainCollectionView.backgroundColor = [UIColor redColor];
    [self.view addSubview:_mainCollectionView];

}
//数据接受
- (void)recerveHttpData
{
    //NSString * urlString = [ICHANGQUURL stringByAppendingString:@""];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UICollectionViewDataSource and UICollectionViewDelegate

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 10;
}

- (UICollectionViewCell*)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSString * cellId = @"recoding";
    UICollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"recoding" forIndexPath:indexPath];
    
    cell.backgroundColor = [UIColor purpleColor];
    
    return cell;
}

@end
