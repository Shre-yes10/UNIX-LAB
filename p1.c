#include<stdio.h>
#include<stdlib.h>

int main(int argc,char *argv[])
{
	char buffer[100];
        FILE *fp;

	if(argc!=2)
	{
		printf("USAGE : command(./a.out) filename(example.txt)\n");
		exit(1);
	}

	fp=fopen(argv[1],"r");

	if(fp==NULL)
	{
		printf("File Doesn't Exists\n");
		exit(1);
	}

	while(fgets(buffer,100,fp))
	{
		printf("%s",buffer);
	}
	fclose(fp);

	return 0;
}
