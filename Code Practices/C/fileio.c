#include <stdio.h>
int main() {
  FILE *fp;
  fp = fopen("out.txt","w");
  if (fp==NULL) {
    printf("Could not open out.txt\n");
    return 1;
  }
  fprintf(fp,"%s","Sample text.");
  fclose(fp);
  return 0;
}
