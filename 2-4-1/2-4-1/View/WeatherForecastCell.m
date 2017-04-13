//
//  WeatherForecastCell.m
//  2-4-1
//
//  Created by yogasawara@stv on 2017/04/10.
//  Copyright © 2017年 stv. All rights reserved.
//

#import "WeatherForecastCell.h"
#import "NSString+DateFormat.h"
#import "AFNetworking.h"
#import "UIImageView+AFNetworking.h"

@implementation WeatherForecastCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)setCellFor:(WeatherForecast *)weatherForecast{
    self.dateLabel.text = [NSString dateString:weatherForecast.date];
    self.weatherLabel.text = weatherForecast.telop;
    
    NSString *urlString = weatherForecast.weatherImage.imageURL;
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest* request = [NSURLRequest requestWithURL:url];
    UIImage *placeholderImage = [UIImage imageNamed:@"no_image"];
    
    [self.weatherImageView setImageWithURLRequest:request
                                 placeholderImage:placeholderImage
                                          success:^(NSURLRequest *request, NSHTTPURLResponse *response, UIImage *image){
                                              //FIXME: selfの扱いはweakで修正
                                              self.weatherImageView.image = image;
                                              [self setNeedsLayout];
                                          }failure:nil];
}

#pragma mark utility
+ (NSString*)className {
    return NSStringFromClass([WeatherForecastCell class]);
}
@end
