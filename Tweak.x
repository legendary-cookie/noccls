#include <UIKit/UIKit.h>

@interface CSTeachableMomentsContainerView : UIView
//@property (nonatomic,retain) UIView * controlCenterGrabberView;
@end

%hook CSTeachableMomentsContainerView
    -(void)layoutSubviews {
        %orig;
        UIView *view = [self valueForKey:@"controlCenterGrabberView"];
        view.hidden = YES;
    }
%end