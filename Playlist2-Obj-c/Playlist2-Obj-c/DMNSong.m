//
//  DMNSong.m
//  Playlist2-Obj-c
//
//  Created by Bradley GIlmore on 5/8/17.
//  Copyright © 2017 Bradley Gilmore. All rights reserved.
//

#import "DMNSong.h"

@implementation DMNSong

- (instancetype)initWithTitle:(NSString *)title artist:(NSString *)artist
{
    self = [super init];
    if (self) {
        _title = title;
        _artist = artist;
    }
    return self;
}

@end
