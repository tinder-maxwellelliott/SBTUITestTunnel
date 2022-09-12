//
//  NSString+Trimming.m
//  DTXObjectiveCHelpers
//
//  Created by Leo Natan (Wix) on 3/4/19.
//  Copyright © 2017-2020 Wix. All rights reserved.
//

#if DEBUG
    #ifndef ENABLE_UITUNNEL
        #define ENABLE_UITUNNEL 1
    #endif
#endif

#if ENABLE_UITUNNEL

#import "Sources/SBTUITestTunnelCommon/DetoxIPC/DTXObjectiveCHelpers/NSString+Trimming.h"

@implementation NSString (Trimming)

- (NSString*)stringByTrimmingWhiteSpace
{
	return [self stringByTrimmingCharactersInSet:NSCharacterSet.whitespaceCharacterSet];
}

@end

#endif
