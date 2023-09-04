cmake_minimum_required(VERSION 3.27.0)

project(designPatterns LANGUAGES CXX C VERSION 0.0.1)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} /STACK:100000000")
option(BUILD_SHARED_LIBS "Build using shared libraries" OFF)

set(CPACK_NSIS_CONTACT "rajiv.sithiravel@gmail.com")

# Creational Patterns Start
add_executable(AbstractFactory 
AbstractFactory/src/AbstractFactory.cpp 
AbstractFactory/include/AbstractFactory.h)
target_include_directories(AbstractFactory PRIVATE ${PROJECT_SOURCE_DIR}/AbstractFactory/include)

add_executable(Builder 
Builder/src/Builder.cpp 
Builder/include/Builder.h)
target_include_directories(Builder PRIVATE ${PROJECT_SOURCE_DIR}/Builder/include)

add_executable(FactoryMethod 
FactoryMethod/src/FactoryMethod.cpp 
FactoryMethod/include/FactoryMethod.h)
target_include_directories(FactoryMethod PRIVATE ${PROJECT_SOURCE_DIR}/FactoryMethod/include)

add_executable(Prototype 
Prototype/src/Prototype.cpp 
Prototype/include/Prototype.h)
target_include_directories(Prototype PRIVATE ${PROJECT_SOURCE_DIR}/Prototype/include)

add_executable(Singleton 
Singleton/src/Singleton.cpp 
Singleton/include/Singleton.h)
target_include_directories(Singleton PRIVATE ${PROJECT_SOURCE_DIR}/Singleton/include)
# Creational Patterns End

# Structural Patterns Start
add_executable(Adapter 
Adapter/src/Adapter.cpp 
Adapter/include/Adapter.h)
target_include_directories(Adapter PRIVATE ${PROJECT_SOURCE_DIR}/Adapter/include)

add_executable(Bridge 
Bridge/src/Bridge.cpp 
Bridge/include/Bridge.h)
target_include_directories(Bridge PRIVATE ${PROJECT_SOURCE_DIR}/Bridge/include)

add_executable(Composite 
Composite/src/Composite.cpp 
Composite/include/Composite.h)
target_include_directories(Composite PRIVATE ${PROJECT_SOURCE_DIR}/Composite/include)

add_executable(Decorator 
Decorator/src/Decorator.cpp 
Decorator/include/Decorator.h)
target_include_directories(Decorator PRIVATE ${PROJECT_SOURCE_DIR}/Decorator/include)

add_executable(Facade 
Facade/src/Facade.cpp 
Facade/include/Facade.h)
target_include_directories(Facade PRIVATE ${PROJECT_SOURCE_DIR}/Facade/include)

add_executable(Flyweight 
Flyweight/src/Flyweight.cpp 
Flyweight/include/Flyweight.h)
target_include_directories(Flyweight PRIVATE ${PROJECT_SOURCE_DIR}/Flyweight/include)

add_executable(Proxy 
Proxy/src/Proxy.cpp 
Proxy/include/Proxy.h)
target_include_directories(Proxy PRIVATE ${PROJECT_SOURCE_DIR}/Proxy/include)

# Structural Patterns End

#Behavioral Patterns Start
add_executable(ChainOfResponsibility 
ChainOfResponsibility/src/ChainOfResponsibility.cpp 
ChainOfResponsibility/include/ChainOfResponsibility.h)
target_include_directories(ChainOfResponsibility PRIVATE ${PROJECT_SOURCE_DIR}/ChainOfResponsibility/include)

add_executable(Iterator 
Iterator/src/Iterator.cpp 
Iterator/include/Iterator.h)
target_include_directories(Iterator PRIVATE ${PROJECT_SOURCE_DIR}/Iterator/include)

add_executable(Memento 
Memento/src/Memento.cpp 
Memento/include/Memento.h)
target_include_directories(Memento PRIVATE ${PROJECT_SOURCE_DIR}/Memento/include)

add_executable(State 
State/src/State.cpp 
State/include/State.h)
target_include_directories(State PRIVATE ${PROJECT_SOURCE_DIR}/State/include)

add_executable(TemplateMethod 
TemplateMethod/src/TemplateMethod.cpp 
TemplateMethod/include/TemplateMethod.h)
target_include_directories(TemplateMethod PRIVATE ${PROJECT_SOURCE_DIR}/TemplateMethod/include)

add_executable(Command 
Command/src/Command.cpp 
Command/include/Command.h)
target_include_directories(Command PRIVATE ${PROJECT_SOURCE_DIR}/Command/include)

add_executable(Mediator 
Mediator/src/Mediator.cpp 
Mediator/include/Mediator.h)
target_include_directories(Mediator PRIVATE ${PROJECT_SOURCE_DIR}/Mediator/include)

add_executable(Observer 
Observer/src/Observer.cpp 
Observer/include/Observer.h)
target_include_directories(Observer PRIVATE ${PROJECT_SOURCE_DIR}/Observer/include)

add_executable(Strategy 
Strategy/src/Strategy.cpp 
Strategy/include/Strategy.h)
target_include_directories(Strategy PRIVATE ${PROJECT_SOURCE_DIR}/Strategy/include)

add_executable(Visitor 
Visitor/src/Visitor.cpp 
Visitor/include/Visitor.h)
target_include_directories(Visitor PRIVATE ${PROJECT_SOURCE_DIR}/Visitor/include)

#Behavioral Patterns End