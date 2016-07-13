#import "BaiduLocation.h"
#import <Cordova/CDC.h>
#import "BMapKit.h"

@implementation BaiduLocation

-(void) excute:(CDVInvokedUrlCommand *) command {

	NSDictionary* options = [command.arguments objectAtIndex:0];

	NSString *message  = [options objectForKey:@"message"];
	NSString *duration = [options objectForKey:@"duration"];
	NSString *position = [options objectForKey:@"position"];
	NSNumber *addPixelsY = [options objectForKey:@"addPixelsY"];

	//初始化BMKLocationService  
    _locService = [[BMKLocationService alloc]init];  
    _locService.delegate = self;  
    //启动LocationService  
    [_locService startUserLocationService];
  	CDVPluginResult * result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsDictionary:[deviceMore copy]];
	[self.commandDelegate sendPluginResult:result callbackId:self.callBackId];
}
@end

