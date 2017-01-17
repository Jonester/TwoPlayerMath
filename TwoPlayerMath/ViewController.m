//
//  ViewController.m
//  TwoPlayerMath
//
//  Created by Chris Jones on 2017-01-16.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import "ViewController.h"
#import "PlayerModel.h"
#import "GameModel.h"

@interface ViewController ()

@property (nonatomic, strong) GameModel *gameModel;
@property (weak, nonatomic) IBOutlet UILabel *questAnsLabel;

@property (weak, nonatomic) IBOutlet UILabel *player1Label;
@property (weak, nonatomic) IBOutlet UILabel *player2Label;

- (IBAction)numberButton:(UIButton *)sender;
- (IBAction)enterButton:(UIButton *)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.gameModel = [GameModel new];
    [self.gameModel startNewGame];
    
    self.questAnsLabel.text = [self.gameModel createQuestion];

    self.player1Label.text = [NSString stringWithFormat:@"Player 1:    3"];
    self.player2Label.text = [NSString stringWithFormat:@"Player 2:    3"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)numberButton:(UIButton *)sender {
    self.questAnsLabel.text = [self.gameModel generateAnswerString:sender.tag];
}

- (IBAction)enterButton:(UIButton *)sender {
    if (self.gameModel.currentPlayer == self.gameModel.player1) {
    self.player1Label.text = [self.gameModel checkAnswer:self.questAnsLabel.text];
    } else {
    self.player2Label.text = [self.gameModel checkAnswer:self.questAnsLabel.text];
    }
    if (self.gameModel.currentPlayer.score == 0) {
        [self endGame];
    }
    [self.gameModel nextPlayer];
    self.questAnsLabel.text = [self.gameModel createQuestion];
    self.gameModel.answerString = [NSString new];
}

-(void)endGame {
    [self.gameModel nextPlayer];
    UIAlertController *gameOver = [UIAlertController alertControllerWithTitle:[NSString stringWithFormat:@"%@ wins! Game Over!", self.gameModel.currentPlayer.name] message:@"Would you like to play again?" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *replay = [UIAlertAction actionWithTitle:@"Play Again!" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
        [self startNewGame];
    }];
    
    UIAlertAction *exitGame = [UIAlertAction actionWithTitle:@"Exit Game" style:UIAlertActionStyleDefault handler: nil];
    
    [gameOver addAction:replay];
    [gameOver addAction:exitGame];
    [self presentViewController:gameOver animated:YES completion:nil];
}

-(void)startNewGame {
    self.gameModel = [GameModel new];
    [self.gameModel startNewGame];
    
    self.questAnsLabel.text = [self.gameModel createQuestion];
    
    self.player1Label.text = [NSString stringWithFormat:@"Player 1:    3"];
    self.player2Label.text = [NSString stringWithFormat:@"Player 2:    3"];
}
@end
