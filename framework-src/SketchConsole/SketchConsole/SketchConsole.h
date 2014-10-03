//
//  SketchConsole.h
//  SketchConsole
//
//  Created by Andrey on 21/08/14.
//  Copyright (c) 2014 Turbobabr. All rights reserved.
//

#import <Foundation/Foundation.h>

@class SDTModule;

@interface SketchConsole : NSObject


+(void)load;


+(void)printGlobalEx:(id)s;
+(void)clearConsole;

@property (nonatomic) NSDictionary* options;
@property (nonatomic) NSURL* scriptURL;

@property BOOL isNewSession;
@property SDTModule* cachedScriptRoot;

+(SketchConsole*)sharedInstance;


@end

