#include "fibonacci.h"

#include "utils.h"
#include "print.h"

int main()
{
    int val1 = 0;
    int val2 = 1;
    int val3 = 0;
    printValue(val2);
    newLine();

    while (1)
    {
        for (int i = 0; i < 10; i++)
        {
            val3 = val1 + val2;
            printValue(val3);
            newLine();
            val1 = val2 + val3;
            printValue(val1);
            newLine();
            val2 = val1 + val3;
            printValue(val2);
            newLine();
        }
        reset();
    }
}