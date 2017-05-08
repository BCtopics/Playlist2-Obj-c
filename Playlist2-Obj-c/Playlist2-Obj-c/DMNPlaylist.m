//
//  DMNPlaylist.m
//  Playlist2-Obj-c
//
//  Created by Bradley GIlmore on 5/8/17.
//  Copyright © 2017 Bradley Gilmore. All rights reserved.
//

#import "DMNPlaylist.h"

@interface DMNPlaylist ()

@property (nonatomic, strong) NSMutableArray *internalSongs;

@end

@implementation DMNPlaylist

-(instancetype)initWithName:(NSString *)name songs:(NSArray *)songs
{
    self = [super init];
    if (self) {
        _name = name;
        _internalSongs = [songs mutableCopy];
    }
    return self;
}

#pragma mark - Properties

- (NSArray *)songs { return self.internalSongs; }

- (void)addSongsObject:(DMNSong *)song
{
    [self.internalSongs addObject:song];
}

- (void)removeSongsObject:(DMNSong *)song
{
    [self.internalSongs removeObject:song];
}

@end
