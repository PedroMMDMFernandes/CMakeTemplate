
set(LIBRARY_NAME LIB_MCAL)

set (SOURCES
    #${CMAKE_CURRENT_SOURCE_DIR}/src/eth.c
    #${CMAKE_CURRENT_SOURCE_DIR}/src/gpio.c
    ${CMAKE_CURRENT_SOURCE_DIR}/src/main.c
    ${CMAKE_CURRENT_SOURCE_DIR}/src/stm32h7xx_hal_msp.c
    ${CMAKE_CURRENT_SOURCE_DIR}/src/stm32h7xx_it.c
    #${CMAKE_CURRENT_SOURCE_DIR}/src/usart.c
    #${CMAKE_CURRENT_SOURCE_DIR}/src/usb_otg.c
)

set (HEADERS
    ${CMAKE_CURRENT_SOURCE_DIR}/inc/main.h
    #${CMAKE_CURRENT_SOURCE_DIR}/inc/stm32h7xx_hal_conf.h
    ${CMAKE_CURRENT_SOURCE_DIR}/inc/stm32h7xx_it.h
   # ${CMAKE_CURRENT_SOURCE_DIR}/inc/eth.h
   # ${CMAKE_CURRENT_SOURCE_DIR}/inc/gpio.h
    #${CMAKE_CURRENT_SOURCE_DIR}/inc/usart.h
)

# Sources 
file(GLOB Library_SOURCES     
#${CMAKE_CURRENT_SOURCE_DIR}/src/main.c
${CMAKE_CURRENT_SOURCE_DIR}/src/stm32h7xx_hal_msp.c
${CMAKE_CURRENT_SOURCE_DIR}/src/stm32h7xx_it.c
)

file(GLOB Library_HEADER 
${CMAKE_CURRENT_SOURCE_DIR}/inc/main.h
${CMAKE_CURRENT_SOURCE_DIR}/inc/stm32h7xx_it.h
) 

# Executable
add_library(${LIBRARY_NAME} ${Library_SOURCES} ${Library_HEADERS})
    

#add_library(${LIBRARY_NAME} OBJECT ${SOURCES} ${HEADERS})

target_include_directories(${LIBRARY_NAME} PUBLIC 
    "${CMAKE_CURRENT_SOURCE_DIR}/inc"
    #"${CMAKE_CURRENT_SOURCE_DIR}/src"
    )

target_link_libraries(${LIBRARY_NAME}  PRIVATE
    LIB_DEVICE
    LIB_STM32H7xx
   )

target_compile_definitions(${LIBRARY_NAME} PRIVATE
-DSTM32H743xx
-DUSE_HAL_DRIVER
-DDEBUG
)

# Compiler options
target_compile_options(${LIBRARY_NAME}  PRIVATE
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

