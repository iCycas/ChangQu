//
//  BCRequest.h
//  Test2
//
//  Created by NFJ on 13-3-3.
//  Copyright (c) 2013年 BlueCloud Limited. All rights reserved.
//

/*
 * MobileCoreServices.framework
 * SystemConfiguration.framework
 */

#import <Foundation/Foundation.h>

@interface BCRequest : NSObject

//获取Dictionary数据
+ (void)getDictionaryWithStringURLKey:(NSString *)stringURLKey usingSuccessBlock:(void (^)(NSDictionary *resultDictionary))successBlock andFailureBlock:(void (^)(NSError *resultError))failureBlock;

//ImageView加载网络图片
+ (void)addImageWithStringURL:(NSString *)stringURL andImageView:(UIImageView *)imageView;

//Post上传图片
+ (void)postImageWithStringURLKey:(NSString *)stringURLKey andImage:(UIImage *)image usingSuccessBlock:(void (^)(NSDictionary *resultDictionary))successBlock;

@end