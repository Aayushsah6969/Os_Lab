#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>
int main()
{
    pid_t pid;
    pid = fork();
    if (pid == 0)
    { // Child process
        printf("Child process with PID: %d\n", getpid());
        exit(0); // Terminate child
    }
    else if (pid > 0)
    {               // Parent process
        wait(NULL); // Wait for child to finish
        printf("Parent process with PID: %d, child exited with PID: %d\n", getpid(), pid);
    }
    else
    {
        perror("fork failed");
        exit(1);
    }
    return 0;
}