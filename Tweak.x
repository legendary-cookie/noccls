#include <UIKit/UIKit.h>

@interface CSTeachableMomentsContainerView : UIView
@end

%hook CSTeachableMomentsContainerView
-(instancetype)initWithFrame:(CGRect)arg1 {
	self  = %orig;
	UIView *view = [self valueForKey:@"controlCenterGrabberView"];
        view.hidden = YES;	
	return self;
}
%end
