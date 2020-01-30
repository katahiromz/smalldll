#include <windows.h>
#include <stdio.h>

int main(void)
{
#ifdef _WIN64
    HINSTANCE hinst = LoadLibraryA("smalldll64.dll");
#else
    HINSTANCE hinst = LoadLibraryA("smalldll.dll");
#endif
    if (hinst)
        puts("OK");
    else
        puts("NG");

    FreeLibrary(hinst);
    return 0;
}
