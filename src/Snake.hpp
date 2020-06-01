
#ifndef SNAKE_HPP
#define SNAKE_HPP

#include <iostream>
#include <vector>


class Snake
{
public:
    Snake();
    ~Snake();
    void move(int x, int y);
    void move_and_add(int x, int y);
    void append(int x, int y);
    bool is_snake(int x, int y, bool include_head);
    void print_snake();

    int getLength();

private:
    std::vector< std::pair<int, int> > * snake;

};

#endif