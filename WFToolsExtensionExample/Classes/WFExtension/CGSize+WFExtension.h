//
//  CGSize+WFExtension.h
//  CGSize
//
//  Created by 开发者 on 13/2/15.
//  Copyright (c) 2013年 Jason. All rights reserved.
//

#ifndef VVeco_CGSize_WF_h
#define VVeco_CGSize_WF_h
#import <UIKit/UIKit.h>

/**
 *  将原始的CGSize等比例放大到 与目标CGSize 最合适的大小
 *
 *  @param srcSize 源Size
 *  @param dstSize 目标Size
 *
 *  @return 最合适的大小
 *  @note   类似与image填充的Aspect Fill类型
 */
CGSize CGScaleSizetoFit(CGSize srcSize, CGSize dstSize);

#endif
