//
//  DMNPlaylistDetailTableViewController.m
//  Playlist2-Obj-c
//
//  Created by Bradley GIlmore on 5/8/17.
//  Copyright © 2017 Bradley Gilmore. All rights reserved.
//

#import "DMNPlaylistDetailTableViewController.h"
#import "DMNPlaylistController.h"
#import "DMNSong.h"
#import "DMNPlaylist.h"

@interface DMNPlaylistDetailTableViewController ()

@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextField *artistTextField;


@end

@implementation DMNPlaylistDetailTableViewController


- (IBAction)addButtonTapped:(id)sender {
    
    [[DMNPlaylistController sharedInstance] addSongWithTitle:self.titleTextField.text andArtist:self.artistTextField.text toPlaylist:self.playlist];
    self.titleTextField.text = @"";
    self.artistTextField.text = @"";
    [self.titleTextField resignFirstResponder];
    [self.artistTextField resignFirstResponder];
    [self.tableView reloadData];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.playlist.songs count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"SongCell" forIndexPath:indexPath];
    
    DMNSong *song = self.playlist.songs[indexPath.row];
    cell.textLabel.text = song.title;
    cell.detailTextLabel.text = song.artist;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        DMNSong *song = self.playlist.songs[indexPath.row];
        [[DMNPlaylistController sharedInstance] deleteSong:song fromPlaylist:self.playlist];
        [self.tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    }
}

- (void)setPlaylist:(DMNPlaylist *)playlist
{
    if (playlist != _playlist) {
        _playlist = playlist;
        [self.tableView reloadData];
    }
}

@end








