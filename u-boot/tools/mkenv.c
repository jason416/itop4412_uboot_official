#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/types.h>

#define ENV_SIZE 8192

int main(int argc, char **argv)
{
	char *filename;
	char *dev;
	int fdr, fdw;

	if (argc != 3) {
		printf("usage : mkenv [dev] [file]\n");
		return -1;
	
	}

	dev = argv[1];
	if (access(dev, F_OK) == -1) {
		printf("%s is not exist", dev);
		return -1;
	}
	
	filename = argcv[2];
		
	fdr = open(dev, O_OR);
	return 0;
}
