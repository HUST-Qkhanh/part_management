
target_sources(${CMAKE_PROJECT_NAME} PUBLIC
        "main.cpp"
        "backend.cpp"
        "backend.h"
)

qt6_add_qml_module(UiBackend
    URI "App.UiBackend"
    VERSION 1.0
    SOURCES backend.cpp backend.h
)

target_link_libraries(${CMAKE_PROJECT_NAME} PRIVATE
    Qt${QT_VERSION_MAJOR}::Core
    Qt${QT_VERSION_MAJOR}::Gui
    Qt${QT_VERSION_MAJOR}::Quick
    Qt${QT_VERSION_MAJOR}::Qml
    UiBackend)
