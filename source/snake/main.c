
#include "main.h"
#include "applib/lib_syscall.h"
#include <stdlib.h>
#include <stdio.h>

 
static int row_max, col_max;

 
static body_part_t * food;
static snake_t snake;		 


static int is_hit_itself (void) {
	for (body_part_t * body = snake.head->next; body; body = body->next) {
		if ((body->row == snake.head->row) && (body->col == snake.head->col)) {
			return 1;
		}
	}
	return 0;
}


static int is_hit_wall (void) {
	return ((snake.head->row <= 0) 
			|| (snake.head->col <= 0))
			|| (snake.head->row >= row_max - 1) 
			|| (snake.head->col >= col_max - 1);
}


static int is_hit_food (void) {
	return ((snake.head->row == food->row) && (snake.head->col == food->col));
}

static inline void show_char(int row, int col, char c) {
    printf("\x1b[%d;%dH%c\x1b[%d;%dH", row, col, c, row, col);
}

static inline void show_string (int row, int col, char * str) {
    printf("\x1b[%d;%dH%s", row, col, str);
}


void clear_map (void) {
    printf("%s", ESC_CLEAR_SCREEN);
}


void create_map(void) {
	clear_map();

     
    for (int col = 1; col < col_max - 1; col++) {
        show_char(0, col, '=');
    }
    for (int col = 1; col < col_max - 1; col++) {
        show_char(row_max -1, col, '=');
    }

     
    for (int row = 1; row < row_max - 1; row++) {
        show_char(row, 0, '|');
    }
    for (int row = 1; row < row_max - 1; row++) {
        show_char(row, col_max - 1, '|');
    }
}


static void add_head (int row, int col) {
	body_part_t * part = (body_part_t *)malloc(sizeof(body_part_t));
	part->row = row;
	part->col = col;
	part->next = snake.head;
	snake.head = part;
	show_char(row, col, '*');
}

static void remove_tail (void) {
	 
	body_part_t * pre = (body_part_t *)0;
	body_part_t * curr = snake.head;
	while (curr->next) {
		pre = curr;
		curr = curr->next;
	}

	show_char(curr->row, curr->col, ' ');

	 
	pre->next = curr->next;
	curr->next = (body_part_t *)0;
	free(curr);
}

static void create_snake (void) {
	snake.head = (body_part_t *)malloc(sizeof(body_part_t));
	snake.head->row = 10;         
	snake.head->col = 20;
	snake.head->next = (body_part_t *)0;
	snake.status = SNAKE_BIT_NONE;
	snake.dir = PLAYER1_KEY_LEFT;
    show_char(snake.head->row, snake.head->col, '*');
}


static void create_food(void)  {
	 
	food = (body_part_t *)malloc(sizeof(body_part_t));

	 
	body_part_t * part = snake.head;
	do {
		 
		 
		food->row = 1 + rand() % (row_max - 3);
		food->col = 1 + rand() % (col_max - 3);

		 
		if ((food->row < 0) || (food->row >= row_max)
				|| (food->col < 0) || (food->col >= col_max)) {
			continue;
		}

		 
		 
		while (part) {
			if ((food->row != snake.head->row) || (food->col != snake.head->col)) {
				 
				show_char(food->row, food->col, '*');
				return;
			}
			part = part->next;
		}
		part = snake.head;
	} while (1);
}


static void free_food (void) {
	free(food);
	food = (body_part_t *)0;
}


static void move_forward (int dir) {
	int next_row, next_col;

	 
	switch (dir) {
	case PLAYER1_KEY_LEFT:
		next_row = snake.head->row;
		next_col = snake.head->col - 1;
		break;
	case PLAYER1_KEY_RIGHT:
		next_row = snake.head->row;
		next_col = snake.head->col + 1;
		break;
	case PLAYER1_KEY_UP:
		next_row = snake.head->row - 1;
		next_col = snake.head->col;
		break;
	case PLAYER1_KEY_DOWN:
		next_row = snake.head->row + 1;
		next_col = snake.head->col;
		break;
	default:
		return;
	}

	body_part_t * next_part = snake.head->next;
	if (next_part) {
		if ((next_row == next_part->row) && (next_col == next_part->col)) {
			return;
		}
	}

	 
	add_head(next_row, next_col);

	 
	if (is_hit_itself()) {
		snake.status = SNAKE_BIT_ITSELF;
		remove_tail();
	} else if (is_hit_wall()) {
		snake.status = SNAKE_BIT_WALL;
		remove_tail();
	} else if (is_hit_food()){
		 
		free_food();
		create_food();
		snake.status = SNAKE_BIT_FOOD;
	} else {
		 
		remove_tail();
		snake.status = SNAKE_BIT_NONE;
	}

	snake.dir = dir;
	fflush(stdout);
}


static void show_welcome (void) {
	clear_map();
	 

    show_string(0, 0, "Welcome to sname game");
    show_string(1, 0, "Use a.w.s.d to move snake");
    show_string(2, 0, "Press any key to start game");
	fflush(stdout);
	
	 
	setvbuf(stdin, NULL, _IONBF, 0);
    getchar();
}


static void begin_game (void) {
    create_map();
    create_snake();
    create_food();
	fflush(stdout);
}

int main (int argc, char ** argv) {
	row_max = 25;
	col_max = 80;

	ioctl(0, TTY_CMD_ECHO, 0, 0);

	show_welcome();
    begin_game();

    int count;
	int cnt = 0;
	do {
		 
		ioctl(0, TTY_CMD_IN_COUNT, (int)&count, 0);
		if (count) {
			int ch = getchar();
			move_forward(ch);
		} else if (++cnt % 50 == 0) {
			 
			move_forward(snake.dir);
		}

		if ((snake.status == SNAKE_BIT_ITSELF) || (snake.status == SNAKE_BIT_WALL)) {
			int row = row_max / 2, col = col_max / 2;
			show_string(row, col,  "GAME OVER");
			show_string(row + 1, col,  "Press Any key to continue");
			fflush(stdout);
			getchar();
			break;
		}

		msleep(10);
	}while (1);

	 
	ioctl(0, TTY_CMD_ECHO, 1, 0);
	clear_map();
    return 0;
}

