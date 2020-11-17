#include <iostream>
#include "Snake.hpp"


Snake::Snake()
{
    snake = new std::vector< std::pair<int, int> >();
}

Snake::~Snake()
{
    delete snake;
}

void Snake::move(int x, int y)
{
    snake->insert(snake->begin(), std::make_pair<int, int>(x, y));
    snake->pop_back();
}

void Snake::move_and_add(int x, int y)
{
    snake->insert(snake->begin(), std::make_pair<int, int>(x, y));
}

void Snake::append(int x, int y)
{
    snake->push_back(std::make_pair<int, int>(x, y));
}

void Snake::print_snake()
{
    for (int i = 0; i < snake->size(); i++)
    {
        std::cout << snake->at(i).first << " " << snake->at(i).second << std::endl;
    }
}

bool Snake::is_snake(int x, int y, bool include_head)
{
    int start;
    if (include_head) { start = 0; }
    else { start = 1; }
    for (int i = start; i < snake->size(); i++)
    {
        if (snake->at(i).first == x && snake->at(i).second == y) 
            return true;
    }
    return false;
}

int Snake::getLength()
{
    return snake->size();
}
