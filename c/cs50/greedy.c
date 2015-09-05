#include <cs50.h>
#include <math.h>
#include <stdio.h>

int main(void)
{
    // get correct input from user
    float change;
    do
    {
        printf("How much change is owed?\n");
        change = GetFloat();
    }
    while(change <= 0);

    // change into...
    int coins = 0;
    
    // quarters...
    while(change >= 0.25)
    {
        change = change - 0.25;
        coins++;
    }
    change = (round(change * 100)/100);
    
    // dimes...
    while(change >= 0.1)
    {
        change = change - 0.1;
        coins++;
    }
    change = (round(change * 100)/100);
    
    // nickels
    while(change >= 0.05)
    {
        change = change - 0.05;
        coins++;
    }
    change = (round(change * 100)/100);
    
    // and pennys
    while(change >= 0.009)
    {
        change = change - 0.01;
        coins++;
    }
    change = (round(change * 100)/100);
    
    // print result
    printf("%i\n", coins);
}

