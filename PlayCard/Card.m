//
//  Card.m
//  PlayCard
//
//  Created by Anton Eysner on 09.02.17.
//  Copyright © 2017 Anton Eysner. All rights reserved.
//

#import "Card.h"

@interface Card()

@end

@implementation Card

-(int) match:(NSArray *)otherCard{
    
    int score = 0;
    
    for (Card *card in otherCard) {
        if ([card.contents isEqualToString:self.contents]) {
            score = 1;
        }
    }
    return score;
}
@end
