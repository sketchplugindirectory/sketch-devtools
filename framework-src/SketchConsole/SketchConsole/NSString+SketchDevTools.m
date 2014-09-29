//
//  NSString+SketchDevTools.m
//  SketchConsole
//
//  Created by Andrey on 03/09/14.
//  Copyright (c) 2014 Turbobabr. All rights reserved.
//

#import "NSString+SketchDevTools.h"

@implementation NSString (SketchDevTools)

-(NSInteger)sdt_numberOfLines {
    NSString *string=self;
    NSInteger numberOfLines, index, stringLength = [string length];
    
    for (index = 0, numberOfLines = 0; index < stringLength; numberOfLines++)
        index = NSMaxRange([string lineRangeForRange:NSMakeRange(index, 0)]);
    
    if(stringLength>0 && [string characterAtIndex:stringLength-1]=='\n') {
        numberOfLines++;
    }

    return numberOfLines;
}

- (NSString *)sdt_escapeHTML {
    NSMutableString *encoded = [NSMutableString stringWithString:self];
    
    // @"&amp;"
    NSRange range = [self rangeOfString:@"&"];
    if (range.location != NSNotFound) {
        [encoded replaceOccurrencesOfString:@"&"
                                 withString:@"&amp;"
                                    options:NSLiteralSearch
                                      range:NSMakeRange(0, [encoded length])];
    }
    
    // @"&lt;"
    range = [self rangeOfString:@"<"];
    if (range.location != NSNotFound) {
        [encoded replaceOccurrencesOfString:@"<"
                                 withString:@"&lt;"
                                    options:NSLiteralSearch
                                      range:NSMakeRange(0, [encoded length])];
    }
    
    // @"&gt;"
    range = [self rangeOfString:@">"];
    if (range.location != NSNotFound) {
        [encoded replaceOccurrencesOfString:@">"
                                 withString:@"&gt;"
                                    options:NSLiteralSearch
                                      range:NSMakeRange(0, [encoded length])];
    }
    
    // @"&quot;"
    range = [self rangeOfString:@"\""];
    if (range.location != NSNotFound) {
        [encoded replaceOccurrencesOfString:@"\""
                                 withString:@"&quot;"
                                    options:NSLiteralSearch
                                      range:NSMakeRange(0, [encoded length])];
    }
    
    // @"&#39;"
    range = [self rangeOfString:@"'"];
    if (range.location != NSNotFound) {
        [encoded replaceOccurrencesOfString:@"'"
                                 withString:@"&#39;"
                                    options:NSLiteralSearch
                                      range:NSMakeRange(0, [encoded length])];
    }
    
    // @"&#x2F;"
    range = [self rangeOfString:@"/"];
    if (range.location != NSNotFound) {
        [encoded replaceOccurrencesOfString:@"/"
                                 withString:@"&#x2F;"
                                    options:NSLiteralSearch
                                      range:NSMakeRange(0, [encoded length])];
    }
    
    // Line break;
    [encoded replaceOccurrencesOfString:@"\n" withString:@"<br>" options:NSLiteralSearch range:NSMakeRange(0, [encoded length])];
    
    // Tab (4 spaces).
    [encoded replaceOccurrencesOfString:@"    " withString:@"&nbsp;&nbsp;&nbsp;&nbsp;" options:NSLiteralSearch range:NSMakeRange(0, [encoded length])];
    
    return encoded;
}

+ (NSString *)sdt_escapeHTML:(NSString*)str {
    NSMutableString *encoded = [NSMutableString stringWithString:str];
    
    // @"&amp;"
    NSRange range = [str rangeOfString:@"&"];
    if (range.location != NSNotFound) {
        [encoded replaceOccurrencesOfString:@"&"
                                 withString:@"&amp;"
                                    options:NSLiteralSearch
                                      range:NSMakeRange(0, [encoded length])];
    }
    
    // @"&lt;"
    range = [str rangeOfString:@"<"];
    if (range.location != NSNotFound) {
        [encoded replaceOccurrencesOfString:@"<"
                                 withString:@"&lt;"
                                    options:NSLiteralSearch
                                      range:NSMakeRange(0, [encoded length])];
    }
    
    // @"&gt;"
    range = [str rangeOfString:@">"];
    if (range.location != NSNotFound) {
        [encoded replaceOccurrencesOfString:@">"
                                 withString:@"&gt;"
                                    options:NSLiteralSearch
                                      range:NSMakeRange(0, [encoded length])];
    }
    
    // @"&quot;"
    range = [str rangeOfString:@"\""];
    if (range.location != NSNotFound) {
        [encoded replaceOccurrencesOfString:@"\""
                                 withString:@"&quot;"
                                    options:NSLiteralSearch
                                      range:NSMakeRange(0, [encoded length])];
    }
    
    // @"&#39;"
    range = [str rangeOfString:@"'"];
    if (range.location != NSNotFound) {
        [encoded replaceOccurrencesOfString:@"'"
                                 withString:@"&#39;"
                                    options:NSLiteralSearch
                                      range:NSMakeRange(0, [encoded length])];
    }
    
    // @"&#x2F;"
    range = [str rangeOfString:@"/"];
    if (range.location != NSNotFound) {
        [encoded replaceOccurrencesOfString:@"/"
                                 withString:@"&#x2F;"
                                    options:NSLiteralSearch
                                      range:NSMakeRange(0, [encoded length])];
    }
    
    // Line break;
    [encoded replaceOccurrencesOfString:@"\n" withString:@"<br>" options:NSLiteralSearch range:NSMakeRange(0, [encoded length])];
    
    // Tab (4 spaces).
    [encoded replaceOccurrencesOfString:@"    " withString:@"&nbsp;&nbsp;&nbsp;&nbsp;" options:NSLiteralSearch range:NSMakeRange(0, [encoded length])];
    
    return encoded;
}


@end
