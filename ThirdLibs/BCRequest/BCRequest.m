//
//  BCRequest.m
//  Test2
//
//  Created by NFJ on 13-3-3.
//  Copyright (c) 2013年 BlueCloud Limited. All rights reserved.
//

#import "BCRequest.h"
#import "AFNetworking.h"
#import "JSONKit.h"

#define BCRequestHolderImageName @"BCPlaceholder.png"

@implementation BCRequest

//获取Dictionary数据
+ (void)getDictionaryWithStringURLKey:(NSString *)stringURLKey usingSuccessBlock:(void (^)(NSDictionary *resultDictionary))successBlock andFailureBlock:(void (^)(NSError *resultError))failureBlock
{
    NSURLRequest *request = [NSURLRequest requestWithURL:[self getURLWithKey:stringURLKey]];
    AFHTTPRequestOperation *operation = [[AFHTTPRequestOperation alloc] initWithRequest:request];
    __weak AFHTTPRequestOperation*weakOperation = operation;
    [operation setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject) {
        successBlock([weakOperation.responseString objectFromJSONString]);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        failureBlock(error);
    }];
    [operation start];
}


//ImageView加载网络图片
+ (void)addImageWithStringURL:(NSString *)stringURL andImageView:(UIImageView *)imageView
{
    [imageView setImageWithURL:[NSURL URLWithString:stringURL] placeholderImage:[UIImage imageNamed:BCRequestHolderImageName]];
}

//Post上传图片
+ (void)postImageWithStringURLKey:(NSString *)stringURLKey andImage:(UIImage *)image usingSuccessBlock:(void (^)(NSDictionary *resultDictionary))successBlock
{
    NSURL *url = [self getURLWithKey:stringURLKey];
    AFHTTPClient *httpClient = [[AFHTTPClient alloc] initWithBaseURL:url];
    NSData *imageData = UIImageJPEGRepresentation(image, 0.5);
    NSMutableURLRequest *request = [httpClient multipartFormRequestWithMethod:@"POST" path:@"/upload" parameters:nil constructingBodyWithBlock: ^(id <AFMultipartFormData>formData) {
        [formData appendPartWithFileData:imageData name:@"avatar" fileName:@"avatar.jpg" mimeType:@"image/jpeg"];
    }];
    
    AFHTTPRequestOperation *operation = [[AFHTTPRequestOperation alloc] initWithRequest:request];
    __weak AFHTTPRequestOperation*weakOperation = operation;
    [operation setUploadProgressBlock:^(NSUInteger bytesWritten, long long totalBytesWritten, long long totalBytesExpectedToWrite) {
        //NSLog(@"Sent %lld of %lld bytes", totalBytesWritten, totalBytesExpectedToWrite);
        successBlock([weakOperation.responseString objectFromJSONString]);
    }];
    [httpClient enqueueHTTPRequestOperation:operation];
}

//获取URL
+(NSURL *)getURLWithKey:(NSString *)key
{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"BCStringURL" ofType:@"plist"];
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] initWithContentsOfFile:path];
    return [NSURL URLWithString:dict[key]];
}

@end
