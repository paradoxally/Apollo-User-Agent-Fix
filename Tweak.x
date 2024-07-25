#import <Foundation/Foundation.h>

@interface __NSCFLocalSessionTask : NSObject <NSCopying, NSProgressReporting>
@end

%hook __NSCFLocalSessionTask

- (void)_onqueue_resume {
    NSURLRequest *request =  [self valueForKey:@"_originalRequest"];
    NSString *requestURL = request.URL.absoluteString;

    if ([requestURL containsString:@"reddit.com"]) {
        NSMutableURLRequest *mutableRequest = [request mutableCopy];
        // Change this to whatever you like
        [mutableRequest setValue:@"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36" forHTTPHeaderField:@"User-Agent"];

        [self setValue:mutableRequest forKey:@"_originalRequest"];
        [self setValue:mutableRequest forKey:@"_currentRequest"];
    }

    %orig;
}

%end
