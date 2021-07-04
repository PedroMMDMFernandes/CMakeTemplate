set(LIBRARY_NAME LIB_STM32H7xx)

set (HEADERS
    ${CMAKE_CURRENT_SOURCE_DIR}/stm32h7xx.h
    ${CMAKE_CURRENT_SOURCE_DIR}/stm32h743xx.h
)
    

add_library(${LIBRARY_NAME} INTERFACE )

#target_link_libraries(${LIBRARY_NAME}  INTERFACE
#        LIB_MCAL
#)

target_include_directories(${LIBRARY_NAME} INTERFACE .)

