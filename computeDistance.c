#include  <stdio.h>


extern void get_input(char **out1, char **out2);
int main(){
  char *input1 = NULL;
  char *input2 = NULL;
  get_input(&input1, &input2);
  int distance = 0;
  int i = 0;
  while(input1[i] != '\0' && input2[i] != '\0'){
    if(input1[i] != input2[i]){
      distance ++;
    }
    i++;
  }
  
  printf("The Hamming Distance is: %d\n", distance);
  return 0;
}
