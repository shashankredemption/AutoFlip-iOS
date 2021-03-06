//
//  Presentation.m
//  AutoFlip
//
//  Created by Steve John Vitali on 12/30/13.
//  Copyright (c) 2013 Steve John Vitali. All rights reserved.
//

#import "Presentation.h"
#import "Notecard.h"

@implementation Presentation

- (id)init {
    
    self = [super init];
    if (self) {
        self.notecards = [[NSMutableArray alloc] init];
    }
    return self;
}

- (id)initWithNotes:(NSMutableArray *)notecards {
    
    self = [super init];
    if (self) {
        //nonsense
    }
    return self;
}

- (id)initWithRandomNotes:(int)num {
    
    self = [super init];
    if (self) {
        
        self.notecards = [[NSMutableArray alloc] init];
        for(int i=0; i<16; i++) {
            [self.notecards addObject:[[Notecard alloc] initWithRandomBullets]];
        }
        
        self.title = [NSString stringWithFormat:@"Title of presentation %d", num];
        self.description = [NSString stringWithFormat:@"Description of presentation %d", num];
        //self.title = [[[self.notecards objectAtIndex:0] bullets] objectAtIndex:0];
        
        int randomIndex = arc4random() % 10 + 1 ;
        switch (randomIndex) {
            case 1:
            case 2:
            case 3:
            case 4:
                self.type = @"drive";
                break;
            case 5:
            case 6:
            case 7:
            case 8:
                self.type = @"dropbox";
                break;
            case 9:
            case 10:
                self.type = @"custom";
                break;
        }
    }
    return self;
}

- (void)addCardAtIndex:(NSInteger)index {
    
    [self.notecards addObject:[[Notecard alloc] initWithEmptyCard]];
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    
    [aCoder encodeObject:self.title forKey:@"title"];
    [aCoder encodeObject:self.type forKey:@"type"];
    [aCoder encodeObject:self.notecards forKey:@"notecards"];

}

- (id)initWithCoder:(NSCoder *)aDecoder {
    
    self = [super init];
    if (self)
    {
        _title = [aDecoder decodeObjectForKey:@"title"];
        _type  = [aDecoder decodeObjectForKey:@"type"];
        _notecards = [aDecoder decodeObjectForKey:@"notecards"];
    }
    return self;
}

@end


