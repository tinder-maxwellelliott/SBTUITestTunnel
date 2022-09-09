//
//  NSArray+Utils.m
//  DTXObjectiveCHelpers
//
//  Created by Leo Natan (Wix) on 5/18/20.
//  Copyright © 2020 Wix. All rights reserved.
//

#if DEBUG
    #ifndef ENABLE_UITUNNEL
        #define ENABLE_UITUNNEL 1
    #endif
#endif

#if ENABLE_UITUNNEL

#import "Sources/SBTUITestTunnelCommon/DetoxIPC/DTXObjectiveCHelpers/NSArray+Utils.h"
#import "Sources/SBTUITestTunnelCommon/DetoxIPC/DTXObjectiveCHelpers/Swiftier.h"

DTX_DIRECT_MEMBERS
@implementation NSArray (Utils)

- (instancetype)dtx_mapObjectsUsingBlock:(id (^)(id obj, NSUInteger idx))block
{
    NSMutableArray *result = [NSMutableArray arrayWithCapacity:[self count]];
    [self enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        [result addObject:block(obj, idx)];
    }];
    return result;
}

@end

#endif
