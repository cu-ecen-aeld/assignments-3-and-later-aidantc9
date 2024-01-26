#include <stdio.h>
#include <syslog.h>
int main (int argc, char *argv[] ){
    openlog(NULL,0,LOG_USER);
    if (argc != 3){
        syslog(LOG_ERR,"Invalid number of arguments: %d",argc);
        return 1 ;
    }
    else{
        syslog(LOG_DEBUG,"Writing %s to %s",argv[2],argv[1]);
        FILE *file;
        file = fopen(argv[1],"w+");
        fprintf(file,argv[2]);
        fclose(file);

    }
    return 0; 
}