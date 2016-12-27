//inside CTColumnView.m
#import "CTColumnView.h"

@implementation CTColumnView

@synthesize images;

-(id)initWithFrame:(CGRect)frame
{
    if ([super initWithFrame:frame]!=nil) {
        self.images = [NSMutableArray array];
    }
    return self;
}

-(void)dealloc
{
    self.images= nil;
}

-(void)setCTFrame: (id) f
{
    ctFrame = f;
}

-(void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    // Flip the coordinate system
    CGContextSetTextMatrix(context, CGAffineTransformIdentity);
    CGContextTranslateCTM(context, 0, self.bounds.size.height);
    CGContextScaleCTM(context, 1.0, -1.0);
    
    CTFrameDraw((CTFrameRef)ctFrame, context);
    NSLog(@"%lu",(unsigned long)self.images.count);
    NSLog(@"%@",self.images);
    for (NSArray* imageData in self.images) {
        UIImage* img = [imageData objectAtIndex:0];
        CGRect imgBounds = CGRectFromString([imageData objectAtIndex:1]);
        imgBounds.origin.x = 0;
        
        CGContextDrawImage(context, imgBounds, img.CGImage);
    }
}

@end
