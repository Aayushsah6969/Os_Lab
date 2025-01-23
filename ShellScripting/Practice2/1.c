#include <stdio.h>
#include <stdlib.h> // For exit()
#include <sys/types.h>
#include <unistd.h>

int main() {
    // Create a new process
    pid_t p = fork();

    // Check if fork() failed
    if (p < 0) {
        perror("Fork failed");
        exit(1);
    }

    // Print a message from both parent and child processes
    if (p == 0) {
        // This block is executed by the child process
        printf("Hello from the child process! Process ID (pid) = %d, Parent ID (ppid) = %d\n", getpid(), getppid());
    } else {
        // This block is executed by the parent process
        printf("Hello from the parent process! Process ID (pid) = %d, Child ID = %d\n", getpid(), p);
    }

    return 0;
}
