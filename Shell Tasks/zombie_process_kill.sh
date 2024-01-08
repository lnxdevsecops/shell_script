function kill_zombies() {
    zombie_process=$(ps aux | awk '$8=="S" {print $2}')

    if [ -n "$zombie" ]; then
        echo "Zombie process found... Terminating them...."
        for pid in $zombie; do
            kill -9 "$pid"
            echo "Terminated zombie process with pid: $pid"
        done
    else
        echo "Zombie process are not found"
    fi
}


kill_zombies