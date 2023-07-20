#import <Foundation/Foundation.h>
#import <dlfcn.h>

__attribute__((constructor)) static void init() {
    @autoreleasepool {
		void *handle = dlopen("/var/mobile/Documents/RevealLoader/RevealServer", RTLD_NOW);
		if (handle) {
			[[NSNotificationCenter defaultCenter] postNotificationName:@"IBARevealRequestStart" object:nil];
		}
    }
}