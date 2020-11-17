
#include <stdio.h>
#include <ncurses.h>
#include <iostream>
#include <unistd.h>
#include <stdlib.h>
#include "SnakeGame.hpp"
#include "Snake.hpp"



SnakeGame::SnakeGame()
{  
    start_up();
    main_loop();
}

SnakeGame::~SnakeGame()
{
    endwin();
}

void SnakeGame::start_up()
{
    create_snake();
    game_over = false;
    initscr();
	clear();
	noecho();
	cbreak();
    snake_window = newwin(0, 0, 0, 0);
    keypad(snake_window, TRUE);
    nodelay(snake_window, TRUE);
    score = 0;
    xPos = 5;
    yPos = 5;
    xApple = 10;
    yApple = 10;
    // getNextApple();
    draw_field();
}

void SnakeGame::init_rand_num()
{
    
}

void SnakeGame::create_snake()
{
    snake = new Snake();
    snake->append(5, 5);
    snake->append(5, 4);
    snake->append(5, 3);
    snake->append(5, 2);
    snake_direction = DOWN;
}

void SnakeGame::main_loop()
{
     while (game_over == false) // q to quit 
    {
        usleep(0.2 * 1000000);

        keyboard_input = wgetch(snake_window);
        input_handler();
            
        if (snake_direction == UP)          { yPos--; }
        else if (snake_direction == DOWN)   { yPos++; } 
        else if (snake_direction == LEFT)   { xPos--; } 
        else if (snake_direction == RIGHT)  { xPos++; } 
    
        if (xPos == xApple && yPos == yApple)
        {   
            getNextApple();
            snake->move_and_add(xPos, yPos);
            incrementScore();
        }
        else
        {
            snake->move(xPos, yPos);
        }
        

        draw_field();
        if (xPos == 0 || xPos == 19) { game_over = true; }
        else if (yPos == 0 || yPos == 19) { game_over = true; }
        else if (snake->is_snake(xPos, yPos, false)) { game_over = true; }
        
    }
    draw_game_over();
}

void SnakeGame::input_handler()
{
    switch(keyboard_input)
    {
        case(KEY_UP):
            if (snake_direction == DOWN) { break; }
            else
            {
                snake_direction = UP;
                break;
            }
        case(KEY_DOWN):
            if (snake_direction == UP) { break; }
            else
            {
                snake_direction = DOWN;
                break;
            }
        case(KEY_LEFT):
            if (snake_direction == RIGHT) { break; }
            else
            {
                snake_direction = LEFT;
                break;
            }
        case(KEY_RIGHT):
            if (snake_direction == LEFT) { break; }
            else
            {
                snake_direction = RIGHT;
                break;
            }
        case(ERR):
            break;
    }
}

void SnakeGame::draw_field()
{
    std::string title = "Snake ++";
    for (int y = 0; y < 20; y++)
    {
        for (int x = 0; x < 20; x++)
        {
            if (snake->is_snake(y, x, true))
            {
                mvwaddch(snake_window, x, y, 64);
            }
            else if (x == yApple && y == xApple)
            {
                mvwaddch(snake_window, x, y, 42);
            }
            else if ( y == 0 || y == 19)
            {
                mvwaddch(snake_window, x, y, 88); // 88 X
            }
            else if (x == 0 || x == 19)
            {
                mvwaddch(snake_window, x, y, 88);
            }
            else
            {
                mvwaddch(snake_window, x, y, 32);
            }
        }
    }
    draw_line(20);
    std::string sc = std::to_string(getScore());
    for (int i = 0; i < sc.size(); i++)
        mvwaddch(snake_window, 21, i+1, sc.at(i)); 
    for (int i = 0; i < title.size(); i++)
        mvwaddch(snake_window, 21, i+6, title.at(i)); 
    draw_line(22);
    wrefresh(snake_window);
}

void SnakeGame::draw_line(int yAxis)
{
    for (int i = 0; i < 20; i++)
        mvwaddch(snake_window, yAxis, i, 61);
}

void SnakeGame::draw_game_over()
{
    std::string title = "Snake ++";
    std::string gameoverStr = "GAME  OVER";
    for (int y = 0; y < 20; y++)
    {
        for (int x = 0; x < 20; x++)
        {
            if (snake->is_snake(y, x, true))
            {
                mvwaddch(snake_window, x, y, 64);
            }
            else if (x == yApple && y == xApple)
            {
                mvwaddch(snake_window, x, y, 42);
            }
            else if ( y == 0 || y == 19)
            {
                mvwaddch(snake_window, x, y, 88); // 88 X
            }
            else if (x == 0 || x == 19)
            {
                mvwaddch(snake_window, x, y, 88);
            }
            else
            {
                mvwaddch(snake_window, x, y, 32);
            }
        }
    }

    for (int i = 0; i < gameoverStr.size(); i++)
        mvwaddch(snake_window, 8, i+5, gameoverStr.at(i)); 
    for (int i = 0; i < score_string(getScore()).size(); i++)
        mvwaddch(snake_window, 10, i+5, score_string(getScore()).at(i)); 

    draw_line(20);
    std::string sc = std::to_string(getScore());
    for (int i = 0; i < sc.size(); i++)
        mvwaddch(snake_window, 21, i+1, sc.at(i)); 
    for (int i = 0; i < title.size(); i++)
        mvwaddch(snake_window, 21, i+6, title.at(i)); 
    draw_line(22);

    wrefresh(snake_window);

}

int SnakeGame::getScore()
{
    return score;
}

void SnakeGame::incrementScore()
{
    score++;
}

void SnakeGame::getNextApple()
{
    int xNew;
    int yNew;
    while (1)
    {
        xNew = (rand() % 18) + 1;
        yNew = (rand() % 18) + 1;
        if ( (xNew != xPos && yNew != yPos) && (snake->is_snake(xNew, yNew, true) == false) )
        {
            break;
        }
    }
    xApple = xNew;
    yApple = yNew;
}

std::string SnakeGame::score_string(int score)
{
    return "SCORE : " + std::to_string(score) + " ";
}

