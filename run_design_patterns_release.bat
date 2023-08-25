@ECHO ON

set BASEDIR=%~dp0
PUSHD %BASEDIR%

RMDIR /Q /S build

conan install . -c tools.system.package_manager:mode=install -c tools.system.package_manager:sudo=True --build=missing
cd build
cmake .. -G "Visual Studio 17 2022" -DCMAKE_TOOLCHAIN_FILE=./build/generators/conan_toolchain.cmake -DCMAKE_POLICY_DEFAULT_CMP0091=NEW
cmake --build . --config Release
Release\AbstractFactory.exe
Release\Adapter.exe
Release\Bridge.exe
Release\Builder.exe
Release\Composite.exe
Release\Decorator.exe
Release\Facade.exe
Release\FactoryMethod.exe
Release\Flyweight.exe
Release\Prototype.exe
Release\Proxy.exe
Release\Singleton.exe
Release\ChainOfResponsibility.exe
Release\Iterator.exe
Release\Memento.exe
Release\State.exe
Release\TemplateMethod.exe
Release\Command.exe
Release\Mediator.exe
Release\Observer.exe
Release\Strategy.exe
Release\Visitor.exe



