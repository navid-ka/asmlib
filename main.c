#include <stdio.h>
#include <string.h>

size_t  ft_strlen(char *str);
char    *ft_strcpy(char *dest, const char *src);
int     ft_strcmp(const char *s1, const char *s2);

int main() {
  char *str = "Totototototo";
  int x = ft_strlen(str);
  int y = strlen(str);

  char dst[ft_strlen(str)];

  printf("%d\n%d\n", x, y);
  ft_strcpy(dst, str);
  printf("%s\n", dst);

  char *s1 = "Hello";
  char *s2 = "World";
  char *s1a = "Equal";
  char *s2a = "Equal";
  printf("strcmp test og != %d\n", strcmp(s1, s2));
  printf("strcmp test libasm != %d\n", ft_strcmp(s1, s2));
  printf("strcmp test == %d\n", strcmp(s1a, s2a));
  printf("strcmp test libasm == %d\n", ft_strcmp(s1a, s2a));

  return 0;
}
