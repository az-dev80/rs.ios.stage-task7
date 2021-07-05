//
//  RootViewController.h
//  rs.ios.stage-task7
//
//  Created by Albert Zhloba on 4.07.21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface RootViewController : UIViewController <UITextFieldDelegate, UIAlertViewDelegate>

@property (nonatomic, strong) UILabel *myLabel;
@property (nonatomic, strong) UILabel *myLabel2;
@property (nonatomic, strong) UITextField *loginTextField;
@property (nonatomic, strong) UITextField *pwdTextField;
@property (nonatomic, strong) UIButton *authButton;
@property (nonatomic, strong) UIButton *button1;
@property (nonatomic, strong) UIButton *button2;
@property (nonatomic, strong) UIButton *button3;
@property (nonatomic, strong) UIView *view2;

-(void)hideWhenTappedAround;

@end

NS_ASSUME_NONNULL_END
