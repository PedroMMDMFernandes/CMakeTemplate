cmake_minimum_required(VERSION 3.15.3)

# Optional: print out extra messages to see what is going on. Comment it to have less verbose messages
set(CMAKE_VERBOSE_MAKEFILE ON)

# Path to toolchain file. This one has to be before 'project()' below
set(CMAKE_TOOLCHAIN_FILE ${CMAKE_SOURCE_DIR}/arm-none-eabi-gcc.cmake)

# Setup project, output and linker file
project(CMAKE_Simple)
set(EXECUTABLE ${PROJECT_NAME}.elf)
set(LINKER_FILE ${CMAKE_SOURCE_DIR}/device/STM32H743ZITX_FLASH.ld)

enable_language(CXX C ASM)
set(CMAKE_C_STANDARD 99)
set(CMAKE_C_STANDARD_REQUIRED ON)
set(CMAKE_C_EXTENSIONS OFF)

# Optional: issue a message to be sure it uses the correct toolchain file.
message(STATUS "CMAKE_TOOLCHAIN_FILE is: ${CMAKE_TOOLCHAIN_FILE}")


# List of source files
set(SRC_FILES
        src/MCAL/src/main.c
        )

add_subdirectory(${CMAKE_CURRENT_LIST_DIR}/CMSIS)
add_subdirectory(${CMAKE_CURRENT_LIST_DIR}/device)
add_subdirectory(${CMAKE_CURRENT_LIST_DIR}/src)

file(GLOB_RECURSE _headers CONFIGURE_DEPENDS
     "${CMAKE_CURRENT_SOURCE_DIR}/src/*.h"
)

# Build the executable based on the source files
add_executable(${EXECUTABLE} ${SRC_FILES})

# List of include directories
target_include_directories(${EXECUTABLE} PRIVATE
        src
    device
    CMSIS
)



target_link_libraries(${EXECUTABLE} PUBLIC
        LIB_MCAL
        LIB_DEVICE
        LIB_STM32H7xx
        
)


# List of compiler defines, prefix with -D compiler option
target_compile_definitions(${EXECUTABLE} PRIVATE
        -DSTM32H743xx
        -DUSE_HAL_DRIVER
        -DDEBUG
        )

#file(GLOB_RECURSE STM32H7xx CONFIGURE_DEPENDS CMSIS/Device/ST/STM32H7xx/Include/stm32h7xx.h)
#file(GLOB_RECURSE STM32H7xx CONFIGURE_DEPENDS CMSIS/Device/ST/STM32H7xx/Include/stm32h743xx.h)

#include_directories("CMSIS/Device/ST/STM32H7xx/Include/stm32h7xx.h")
#include_directories("CMSIS/Device/ST/STM32H7xx/Include/stm32h743xx.h")

# Compiler options
target_compile_options(${EXECUTABLE} PRIVATE
        -mcpu=cortex-m7
        -mthumb
        -mfpu=fpv5-d16
        -mfloat-abi=hard
        -fdata-sections
        -ffunction-sections
        -c 
        -Wall
        -O0
        -g3
)

# Linker options
target_link_options(${EXECUTABLE} PRIVATE
        -T${LINKER_FILE}
        -mcpu=cortex-m7
        -mthumb
        -mfpu=fpv5-d16
        -mfloat-abi=hard
        -specs=nano.specs
        -lc
        -lm
        -lnosys
        -Wl,-Map=${PROJECT_NAME}.map,--cref
        -Wl,--gc-sections
        -Xlinker -print-memory-usage -Xlinker
)

# Optional: Print executable size as part of the post build process
add_custom_command(TARGET ${EXECUTABLE}
        POST_BUILD
        COMMAND ${CMAKE_SIZE_UTIL} ${EXECUTABLE})

# Optional: Create hex, bin and S-Record files after the build
add_custom_command(TARGET ${EXECUTABLE}
        POST_BUILD
        COMMAND ${CMAKE_OBJCOPY} -O srec --srec-len=64 ${EXECUTABLE} ${EXECUTABLE}.s19
        COMMAND ${CMAKE_OBJCOPY} -O ihex ${EXECUTABLE} ${EXECUTABLE}.hex
        COMMAND ${CMAKE_OBJCOPY} -O binary ${EXECUTABLE} ${EXECUTABLE}.bin)


#sset_target_properties(${EXECUTABLE} PROPERTIES LINKER_LANGUAGE C)

add_custom_target("${EXECUTABLE}_All")

add_dependencies("${EXECUTABLE}_All" "${EXECUTABLE}")
