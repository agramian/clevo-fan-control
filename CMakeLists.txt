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

# Use the package PkgConfig to detect dependencies.
find_package(PkgConfig REQUIRED)
pkg_check_modules(APPINDICATOR REQUIRED appindicator3-0.1)

# Include the dependencies.
include_directories(${APPINDICATOR_INCLUDE_DIRS})

# Link the target to the dependencies.
target_link_libraries(clevo-fan-control ${APPINDICATOR_LIBRARIES} ${GTK3_LIBRARIES})

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
install (
        CODE "execute_process(COMMAND sudo chown ${USER}:${GROUP} ${HOME}/.config/autostart/clevo-fan-control.desktop)"
)

