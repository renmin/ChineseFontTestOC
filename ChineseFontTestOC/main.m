//
//  main.m
//  ChineseFontTestOC
//
//  Created by minren on 25/09/2017.
//  Copyright © 2017 minren. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AppKit/AppKit.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        NSArray* fontNames = @[@"宋体",@"SongTi SC",@"宋体-简"];
        for (NSString* fontname in fontNames) {
            NSLog(@"=============%@=====================",fontname);
            NSFontDescriptor *descriptor = [NSFontDescriptor fontDescriptorWithName:fontname size:14];
            
            NSLog(@"NSFontDescriptor = %@",descriptor);
            
            NSLog(@"matchingFont = %@", [descriptor matchingFontDescriptorsWithMandatoryKeys:nil ]);

            
            NSFont* font = [NSFont fontWithName:fontname size:14];
            
            NSLog(@"NSFont = %@",font);

            NSLog(@"localizedNameForFamily = %@",[[NSFontManager sharedFontManager] localizedNameForFamily:fontname face:nil]);
            
            NSLog(@"availableMembersOfFontFamily = %@", [[NSFontManager sharedFontManager] availableMembersOfFontFamily:fontname]);
            
            
            if ([descriptor respondsToSelector:@selector(requiresFontAssetRequest)]) {
                id needDownload = [descriptor performSelector:@selector(requiresFontAssetRequest)];
                NSLog(@"needDownload = %@",needDownload);

            }
            
            
            
        }
        
        
        
        
    }
    return 0;
}
