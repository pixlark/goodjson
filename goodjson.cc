#include <assert.h>

#include "goodjson.h"

//
// Reader
//

// static
Reader Reader::fromFile(const char* path) {
	// Haven't done this yet!
	assert(false);
}

// static
Reader Reader::fromString(const char* source) {
	Reader r;
	r.source = source;
	return r;
}

