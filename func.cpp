// func.cpp

module;

#include <iostream>

export module MyModule;


export void func(int a, int b) {  // definition
    std::cout << "hello world! --> " << a + b;
}
