#include<stdio.h>
#include<stdlib.h>

int main(int argc,char *argv[])
{
	if(argc!=2)
	{
		printf("USAGE : command(./a.out) filename(example.txt)\n");
		exit(1);
	}

	char buffer[100];
	FILE *fp
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
