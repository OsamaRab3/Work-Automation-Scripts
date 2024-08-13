#!/bin/bash


echo -e "\e[32;1m"
figlet "TO DO LIST"
echo -e "\e[0m"

TASK_FILE="$HOME/.todo_tasks"
COMPLETED_FILE="$HOME/.completed_tasks"

touch "$TASK_FILE"
touch "$COMPLETED_FILE"

add_task() {
    local task="$1"
    echo "$task" >> "$TASK_FILE"
    echo "Task '$task' added."
    display_tasks
}

mark_task_done() {

    local completed_task="$1"

    if ! grep -Fxq "$completed_task" "$TASK_FILE"; then
        echo "Task '$completed_task' not found."
        exit 1
    fi

    grep -Fxv "$completed_task" "$TASK_FILE" > "$TASK_FILE.tmp"
    mv "$TASK_FILE.tmp" "$TASK_FILE"
    echo "$completed_task" >> "$COMPLETED_FILE"

    echo "Task '$completed_task' marked as done."
    display_tasks
}

display_tasks() {
 
    if [ -f "$TASK_FILE" ] && [ -s "$TASK_FILE" ]; then
        echo -e "\e[32mAll Tasks:\e[0m"
        while IFS= read -r line; do
            echo "- $line"
        done < "$TASK_FILE"
    else
        echo "No tasks to display."
    fi

    if [ -f "$COMPLETED_FILE" ] && [ -s "$COMPLETED_FILE" ]; then
        echo -e "\e[31m\nCompleted Tasks:\e[0m"
        while IFS= read -r line; do
            echo -e "\e[31m- $line\e[0m"
        done < "$COMPLETED_FILE"
    fi
}

clear_tasks() {
    > "$TASK_FILE"
    > "$COMPLETED_FILE"
    echo "All tasks cleared."
}


if [ "$#" -eq 0 ]; then
    echo "Usage: $0 add <task> | $0 done <task> | $0 list | $0 clear"
    exit 1
fi

case "$1" in
    add)
        if [ -z "$2" ]; then
            echo "Please provide a task to add."
            exit 1
        fi
        add_task "$2"
        ;;
    done)
        if [ -z "$2" ]; then
            echo "Please provide a task to mark as done."
            exit 1
        fi
        mark_task_done "$2"
        ;;
    list)
        display_tasks
        ;;
    clear)
        clear_tasks
        ;;
    *)
        echo "Invalid option. Use 'add', 'done', 'list', or 'clear'."
        exit 1
        ;;
esac
