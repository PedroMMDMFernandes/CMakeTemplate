set(LIBRARY_NAME LIB_DEVICE)


set (HEADERS
    ${CMAKE_CURRENT_SOURCE_DIR}/Inc/stm32h7xx_hal.h
    ${CMAKE_CURRENT_SOURCE_DIR}/Inc/stm32h7xx_hal_rcc.h
    ${CMAKE_CURRENT_SOURCE_DIR}/Inc/stm32h7xx_hal_cortex.h

)

set (SOURCES
    ${CMAKE_CURRENT_SOURCE_DIR}/startup_stm32h743zitx.s
    ${CMAKE_CURRENT_SOURCE_DIR}/system_stm32h7xx.c
    ${CMAKE_CURRENT_SOURCE_DIR}/Src/stm32h7xx_hal.c
    ${CMAKE_CURRENT_SOURCE_DIR}/Src/stm32h7xx_hal_cortex.c
    ${CMAKE_CURRENT_SOURCE_DIR}/Src/stm32h7xx_hal_rcc.c
)

add_library(${LIBRARY_NAME} STATIC ${SOURCES})


target_link_libraries(${LIBRARY_NAME}  PRIVATE
    LIB_STM32H7xx
    #LIB_MCAL
   )

target_include_directories(${LIBRARY_NAME} PUBLIC 
    "${CMAKE_CURRENT_SOURCE_DIR}/Inc"
    "${CMAKE_CURRENT_SOURCE_DIR}/Src")

#add_subdirectory(${CMAKE_CURRENT_LIST_DIR}/CMSIS/Device/ST/STM32H7xx/Include)

target_compile_definitions(${LIBRARY_NAME} PRIVATE
    -DSTM32H743xx
    -DUSE_HAL_DRIVER
    -DDEBUG
    )

target_include_directories(${LIBRARY_NAME} 
    PUBLIC     
    ../CMSIS/Include/
    ../src/
    Inc/
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
