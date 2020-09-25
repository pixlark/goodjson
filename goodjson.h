#pragma once

struct Reader {
private:
	const char* source;

public:
	static Reader fromFile(const char* path);
	static Reader fromString(const char* source);
};

