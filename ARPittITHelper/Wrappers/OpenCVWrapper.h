//
//  OpenCVWrapper.h
//  ARPittITHelper
//
//  Created by Xinke Chen on 2019-05-11.
//  Copyright © 2019 Xinke Chen. All rights reserved.
//

// NOTE: any C++ files, i.e. OpenCV files, imports/includes must be added
// in the related OpenCVWrapper.mm; otherwise build process fails 

#import <Foundation/Foundation.h>

@interface OpenCVWrapper : NSObject

+ (NSString *)openCVVersionString;

@end
