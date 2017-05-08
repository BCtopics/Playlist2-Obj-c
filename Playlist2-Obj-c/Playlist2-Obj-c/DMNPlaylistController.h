//
//  DMNPlaylistController.h
//  Playlist2-Obj-c
//
//  Created by Bradley GIlmore on 5/8/17.
//  Copyright © 2017 Bradley Gilmore. All rights reserved.
//

#import <Foundation/Foundation.h>
@class DMNSong;
@class DMNPlaylist;

@interface DMNPlaylistController : NSObject

// Shared Instance Class property, only want one instance of it that can be accessed from the DMNPlaylistController
+(DMNPlaylistController *)sharedInstance;
- (instancetype)init;

// CRUD
// Create a playlist
- (void)createPlaylistWithTitle:(NSString *)title;
// Delete a playlist
-(void)deletePlaylist:(DMNPlaylist *)playlist;

// Add a song to a playlist
- (void)addSongWithTitle:(NSString *) title
               andArtist:(NSString *)artist
              toPlaylist:(DMNPlaylist *)playlist;
// Delete a song from a playlist
- (void)deleteSong:(DMNSong *)song fromPlaylist:(DMNPlaylist *)playlist;

@property (nonatomic, strong, readonly) NSArray *playlists;

@end
