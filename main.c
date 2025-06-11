#include <stdio.h>
#include <string.h>

size_t ft_strlen(char *str);

int main() {
  char *str = "Totototototo";
  int x = ft_strlen(str);
  int y = strlen(str);

  printf("%d\n%d\n", x, y);

  return 0;
}
