#include <unistd.h>
#include <stdio.h>
#include <string.h>
#include <errno.h>
#include <stdlib.h>
#include <fcntl.h>

size_t  ft_strlen(const char *str);
char    *ft_strcpy(char *dest, const char *src);
int     ft_strcmp(const char *s1, const char *s2);
ssize_t ft_write(int fd, const void *buf, size_t count);
char    *ft_strdup(const char *s);
ssize_t ft_read(int fd, void *buf, size_t count);

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

  const char *msg6 = "Hello from ft_write()\n";
  size_t len = strlen(msg6);

  printf("strlen(msg2) = %zu\n", len);

  ssize_t r = ft_write(1, msg6, len);
  printf("ft_write sees count = %zd\n", r);

  char *strdupped = ft_strdup(msg6);
  printf("Dupped %s", strdupped);
  free(strdupped);

  int fd = open("./README.md", O_NONBLOCK);
  if (fd < 0)
    return -1;
  char *file = malloc(1025);
  int ret = 0;
  for (int i = 0; i < 1024; i++) {
    int ret = ft_read(fd, file ,1024);
    if (ret < 0) { 
      free(file);
      return -1;
      };
  }
  printf("%s, %d", file, ret);
  free(file);
    return 0;
}
