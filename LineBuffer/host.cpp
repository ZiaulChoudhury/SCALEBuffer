#include <stdio.h>

#define IMG 16
#define KERNEL 3
#define REPL 1

int row_counter;
int col_counter;
int offset;
int image[16][16];

extern "C" 
{
void fill_image()
{
	row_counter = 0; 
	col_counter = 0;
	for(int i = 0 ; i < IMG; i++)
		for(int j=0; j< IMG; j++)
			image[i][j] = ((i+1)*(j+1))%255;
}
int initial_load()
{
	int data = image[row_counter][col_counter];
	row_counter = row_counter+1;
	if(row_counter == KERNEL - 1) {
		row_counter = 0;
		col_counter = (col_counter+1);
		if(col_counter == IMG){
			col_counter = 0;
			row_counter = KERNEL - 1;
			offset = KERNEL - 1 ;
		}
	}
	return data;	
}

int lateral_load()
{
	int data = image[row_counter][col_counter];

	printf("\n R = %d C = %d offset = %d ", row_counter, col_counter, offset);
	row_counter = row_counter + 1;
	if(row_counter == offset + REPL)
	{
		row_counter = offset;
		col_counter = col_counter + 1;
		if(col_counter == IMG)
		{
			col_counter = 0;
			row_counter = offset + REPL;
			offset += REPL;
		}
	}
			
        return data;
}

}

int main()
{
	fill_image();
	for(int i=0;i<16; i++) 
	{
		int a = initial_load();
		int b = initial_load();
		int c = initial_load();
		int d = initial_load();
		//printf("[%d %d %d %d] = [%d %d %d %d]\n", a, b, c, d, image[0][i], image[1][i], image[2][i], image[3][i]);
	}
	/*for(int i=0;i<16; i++)
		printf("[%d %d] == [%d %d]\n", initial_load(), initial_load(), image[0][i], image[1][i]);
	*/
	//printf("\n\n");

	for(int i=0;i<64; i++)
		lateral_load(); 
}
