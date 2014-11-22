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
SRC_DIR=src
TEST_DIR=t
SOURCES=$(wildcard $(SRC_DIR)/*.swift)
TEST_SOURCES=$(wildcard $(TEST_DIR)/*.swift)
# This env var is needed to interface with czmq
SWIFT_OBJC_BRIDGING_HEADER=$(INCLUDE_DIR)/bridge.h
# swift is invoked this way. SWIFTI = interactive, SWIFTC = compiler
SWIFTI=xcrun swift
SWIFTC=xcrun swiftc

### RULES ###

# Debug build
debug: $(SOURCES)
	$(SWIFTC) $(DEBUG_SWIFTFLAGS) $^
# Release build
release: $(SOURCES)
	$(SWIFTC) $(RELEASE_SWIFTFLAGS) $^
# Run the tests
test: $(SOURCES) $(TEST_SOURCES)
	$(SWIFTI) $(TEST_SWIFTFLAGS) $^
# Clean up
clean:
	rm -f swiftzmq-*.dylib
