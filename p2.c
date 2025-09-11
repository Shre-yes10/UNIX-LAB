#include<stdio.h>
#include<stdlib.h>
#define SIZE 4096

int main(int argc,char *argv[])
{
	FILE *source,*dest;
        char buffer[SIZE];
        size_t bytes_read=0;

	if(argc!=3)
	{
		printf("USAGE : command sourcefile destfile\n");
		exit(1);
	}

	source=fopen(argv[1],"rb");
	if(source==NULL)
	{
		printf("Error Opening the Source file\n");
		exit(1);
	}

	dest=fopen(argv[2],"wb");
	if(dest==NULL)
	{
		printf("Error Opening the Destination File\n");
		exit(1);
	}	

	while((bytes_read=fread(buffer,1,SIZE,source)) >0)
	{
		fwrite(buffer,1,bytes_read,dest);
	}

	if(ferror(source))
	{
		printf("Error reading from the source file\n");
	}

	if(ferror(dest))
	{
		printf("Error writing to the destination file\n");
	}

	fclose(source);
	fclose(dest);

	return 0;
}

	
