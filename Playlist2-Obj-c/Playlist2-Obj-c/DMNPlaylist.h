//
//  DMNPlaylist.h
//  Playlist2-Obj-c
//
//  Created by Bradley GIlmore on 5/8/17.
//  Copyright © 2017 Bradley Gilmore. All rights reserved.
//

#import <Foundation/Foundation.h>

@class DMNSong;

@interface DMNPlaylist : NSObject

- (instancetype)initWithName:(NSString *)name songs:(NSArray *)songs;

@property (nonatomic, copy) NSString *name;
@property (nonatomic, strong, readonly) NSArray *songs;

- (void)addSongsObject:(DMNSong *)song;
- (void)removeSongsObject:(DMNSong *)song;


@end
