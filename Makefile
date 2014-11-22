# Edit these on update
VERSION=0.0.1
# Edit these if necessary
DEBUG_OBJ_NAME=swiftzmq-debug.dylib
RELEASE_OBJ_NAME=swiftzmq-$(VERSION).dylib
SHARED_SWIFTFLAGS=
DEBUG_SWIFTFLAGS=$(SHARED_SWIFTFLAGS) -o $(DEBUG_OBJ_NAME)
RELEASE_SWIFTFLAGS=$(SHARED_SWIFTFLAGS) -o $(RELEASE_OBJ_NAME)
TEST_SWIFTFLAGS=$(SHARED_SWIFTFLAGS)
### Shouldn't need to edit below here ###
INCLUDE_DIR=include
C_SRC_DIR=c-src
SWIFT_SRC_DIR=src
SWIFT_TEST_DIR=t
SWIFT_SOURCES=$(wildcard $(SWIFT_SRC_DIR)/*.swift)
SWIFT_TEST_SOURCES=$(wildcard $(SWIFT_TEST_DIR)/*.swift)
C_SOURCES=$(wildcard $(C_SRC_DIR)/*.c)
# This env var is needed to interface with czmq
SWIFT_OBJC_BRIDGING_HEADER=$(INCLUDE_DIR)/bridge.h
# swift is invoked this way. SWIFTI = interactive, SWIFTC = compiler
XCODEBUILD=xcodebuild
### RULES ###

#Release
szmq:
	$(XCODEBUILD) -target szmq -configuration Release
swiftzmq:
	$(XCODEBUILD) -target swiftzmq -configuration Release
#Debug
szmq_debug:
	$(XCODEBUILD) -target szmq -configuration Debug
swiftzmq_debug:
	$(XCODEBUILD) -target swiftzmq -configuration Debug
swiftzmqtest:
	$(XCODEBUILD) -target swiftzmqtest -configuration Debug
# Aliases for build types
debug: swiftzmq_debug
release: swiftzmq
test: swiftzmqtest
	build/Debug/swiftzmqtest
# Housekeeping
clean:
	rm -f swiftzmq-*.dylib
