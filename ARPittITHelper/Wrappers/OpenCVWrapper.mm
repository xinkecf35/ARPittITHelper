//
//  OpenCVWrapper.m
//  ARPittITHelper
//
//  Created by Xinke Chen on 2019-05-11.
//  Copyright © 2019 Xinke Chen. All rights reserved.
//

#import "OpenCVWrapper.h"
#import <opencv2/opencv.hpp>

@implementation OpenCVWrapper

+ (NSString *)openCVVersionString {
    return [NSString stringWithFormat:@"OpenCV version %s", CV_VERSION];
}

@end
