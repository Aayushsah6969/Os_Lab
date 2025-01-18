#include <stdio.h>

int main() {
    char name[100]; // Use an array to store a string
    printf("Enter your name: ");
    scanf("%99s", name); // Read a string with a size limit
    printf("Your name = %s\n", name);
    return 0;
}
