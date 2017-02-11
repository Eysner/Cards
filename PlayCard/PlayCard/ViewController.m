//
//  ViewController.m
//  PlayCard
//
//  Created by Anton Eysner on 09.02.17.
//  Copyright © 2017 Anton Eysner. All rights reserved.
//

#import "ViewController.h"
#import "PlayingCardDeck.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@property (strong, nonatomic)Deck *deck;

@end

@implementation ViewController

- (Deck *)deck
{
    if (!_deck) {
        _deck = [[PlayingCardDeck alloc] init];
    }
    return _deck;
}


- (void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    if (flipCount == 1)
        self.flipsLabel.text = [NSString stringWithFormat:@"У тебя: %d очко!", flipCount];
    else if((flipCount > 1) && (flipCount < 5))
        self.flipsLabel.text = [NSString stringWithFormat:@"У тебя: %d очка!", flipCount];
    else
        self.flipsLabel.text = [NSString stringWithFormat:@"У тебя: %d очков!", flipCount];
}

- (IBAction)touchCardButton:(UIButton *)sender
{
    if ([sender.currentTitle length]) {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardback"]
                          forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    } else {
        Card *card = [self.deck drawRandomCard];
        if (card){
            [sender setBackgroundImage:[UIImage imageNamed:@"cardfont"]
                              forState:UIControlStateNormal];
            [sender setTitle:card.contents forState:UIControlStateNormal];
        }
    }
    self.flipCount++;
}



@end
