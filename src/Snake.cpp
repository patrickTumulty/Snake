#include <iostream>
#include "Snake.hpp"


Snake::Snake()
{
    this->snake = new std::vector< std::pair<int, int> >();
}

Snake::~Snake()
{
    delete snake;
}

void Snake::move(int x, int y)
{
    this->snake->insert(this->snake->begin(), std::make_pair<int, int>(x, y));
    this->snake->pop_back();
}

void Snake::move_and_add(int x, int y)
{
    this->snake->insert(this->snake->begin(), std::make_pair<int, int>(x, y));
}

void Snake::append(int x, int y)
{
    this->snake->push_back(std::make_pair<int, int>(x, y));
}

void Snake::print_snake()
{
    for (int i = 0; i < this->snake->size(); i++)
    {
        std::cout << this->snake->at(i).first << " " << this->snake->at(i).second << std::endl;
    }
}

bool Snake::is_snake(int x, int y, bool include_head)
{
    int start;
    if (include_head) { start = 0; }
    else { start = 1; }
    for (int i = start; i < this->snake->size(); i++)
    {
        if (this->snake->at(i).first == x && this->snake->at(i).second == y) 
            return true;
    }
    return false;
}

int Snake::getLength()
{
    return this->snake->size();
}
