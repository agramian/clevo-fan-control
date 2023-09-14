# Set minimum CMake version.
cmake_minimum_required(VERSION 3.17)

# Create project.
project(ClevoFanControl C)

# Enable the language standard.
set(CMAKE_C_STANDARD 99)

# Explicitly link the math library.
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -lm")

# Add the main executable.
add_executable(clevo-fan-control src/main.c)

# Specify installation rules.
install(
    TARGETS clevo-fan-control
    PERMISSIONS WORLD_EXECUTE OWNER_WRITE OWNER_READ SETUID GROUP_EXECUTE
    DESTINATION bin
)
install(
    FILES src/clevo-fan-control.desktop
    PERMISSIONS WORLD_EXECUTE OWNER_WRITE OWNER_READ GROUP_EXECUTE
    DESTINATION ~/.config/autostart
)
install(
    CODE "execute_process(COMMAND sudo chown ${USER}:${GROUP} ${HOME}/.config/autostart/clevo-fan-control.desktop)"
)
