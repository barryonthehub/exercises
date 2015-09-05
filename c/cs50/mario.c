#include <stdio.h>
#include <cs50.h>

int main(void)
{
    // Prompt and validate user input
    int height;
    do
    {
        printf("Height: ");    
        height = GetInt();
    }
    while (height < 0 || height > 23);
    
    // Draw the half-pyramid
    for (int i = 0; i < height; i++)
    {
        for (int j = (height - 1)- i; j > 0; j--)
        {
            printf(" ");
        }
        for (int k = 0; k < i; k++)
        {
            printf("#");
        }
        printf("##");
        printf("\n");
    }
    
    // code outside
}
