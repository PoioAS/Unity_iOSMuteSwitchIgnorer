#import <AVFoundation/AVFoundation.h>
#import <MediaPlayer/MediaPlayer.h>
#include "UnityInterface.h"

extern "C" void _InitializeMuteSwitchIgnorer()
{
    AVAudioSession *audioSession = [AVAudioSession sharedInstance];
    [audioSession setCategory:AVAudioSessionCategoryPlayback withOptions:AVAudioSessionCategoryOptionMixWithOthers error:nil];
    NSError *error;
    BOOL success = [audioSession setActive:YES error:&error];
    if (!success) {
        NSLog(@"Error activating audiosession: %@", error);
    }
}
