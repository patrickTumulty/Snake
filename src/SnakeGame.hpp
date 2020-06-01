
#ifndef SNAKEGAME_HPP
#define SNAKEGAME_HPP

#include <stdio.h>
#include <ncurses.h>
#include <iostream>
#include <unistd.h>
#include <random>
#include <vector>

#include "Snake.hpp"

enum direction { UP, DOWN, LEFT, RIGHT };

class SnakeGame
{
public:
    SnakeGame();
    ~SnakeGame();

    void start_up();
    void main_loop();
    void draw_field();
    void draw_line(int yAxis);
    void draw_game_over();
    void input_handler();
    void create_snake();
    void init_rand_num();
    int getScore();
    void incrementScore();
    void getNextApple();

    std::string score_string(int score);
    
private:
    WINDOW *snake_window;
    direction snake_direction;
    Snake * snake;
    bool game_over;

    int xPos;
    int yPos;
    int xNew;
    int yNew;
    int xApple;
    int yApple;
    int keyboard_input;
    int score;

};

#endif