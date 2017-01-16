//
//  GameModel.h
//  TwoPlayerMath
//
//  Created by Chris Jones on 2017-01-16.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import <Foundation/Foundation.h>
@class PlayerModel;

@interface GameModel : NSObject

@property (nonatomic, strong) NSString *question;

- (NSString *)createQuestion: (PlayerModel *)player;
- (void)checkAnswer: (PlayerModel *)player answer: (NSString *)anwer;

@end
