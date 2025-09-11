#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include<setjmp.h>

jmp_buf buffer;

void handle_error()
{
	printf("Error occurred , jumping back to the set point\n");
	longjmp(buffer,1);
}

int main()
{
	const char *filename="example.txt";
	const char *linkname="example_link.txt";
	FILE *file=fopen(filename,"w");

	if(file==NULL)
	{
		printf("Error Creating file\n");
		exit(1);
	}
	
	fprintf(file,"This is an example file\n");
	fclose(file);

	if(link(filename,linkname)==-1)
	{
		printf("Error creating link\n");
	}
	else
	{
		printf("Link Created : %s -> %s\n",linkname,filename);
	}

	if(unlink(linkname)==-1)
	{
		printf("Error unlinking file\n");
	}
	else
	{
		printf("Link removed : %s\n",linkname);
	}

	if(setjmp(buffer)==0)
	{
		printf("Setting jump point\n");
		handle_error();
	}
	else
	{
		printf("Returned to jump point using longjump\n");
	}

	unlink(filename);
	
	return 0;
}
