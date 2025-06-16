#include <stdio.h>
#include <string.h>

size_t ft_strlen(char *str);
char  *ft_strcpy(char *dest, const char *src);

int main() {
  char *str = "Totototototo";
  int x = ft_strlen(str);
  int y = strlen(str);

  char dst[ft_strlen(str)];

  printf("%d\n%d\n", x, y);
  ft_strcpy(dst, str);
  printf("%s\n", dst);

  return 0;
}
