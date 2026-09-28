#include  <stdio.h>
extern unsigned char ram[];

extern void fill_ram(void);
int main(){
  fill_ram();
  
  
  printf("\n");
  return 0;
}
