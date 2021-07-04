set(LIBRARY_NAME STM32H7xx)

set (SOURCES
    ${CMAKE_CURRENT_SOURCE_DIR}/stm32h7xx.h
    ${CMAKE_CURRENT_SOURCE_DIR}/stm32h743xx.h
)
    

add_library(${LIBRARY_NAME} INTERFACE )


target_include_directories(${LIBRARY_NAME} INTERFACE .)
