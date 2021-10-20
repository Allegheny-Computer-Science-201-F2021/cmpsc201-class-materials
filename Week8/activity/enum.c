#include <stdio.h>
enum week {Sunday, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday};
int main()
{
    enum week today;
    today = Wednesday;
    printf("Day:%d\n",today+1);
    return 0;
}