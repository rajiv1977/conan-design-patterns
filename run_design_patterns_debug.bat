@ECHO ON

set BASEDIR=%~dp0
PUSHD %BASEDIR%

RMDIR /Q /S build


conan install . -c tools.system.package_manager:mode=install -c tools.system.package_manager:sudo=True --output-folder=build --build=missing --settings=build_type=Debug
cd build
cmake .. -G "Visual Studio 17 2022" -DCMAKE_TOOLCHAIN_FILE=./build/generators/conan_toolchain.cmake -DCMAKE_POLICY_DEFAULT_CMP0091=NEW 
cmake --build . --config Debug
Debug\AbstractFactory.exe
Debug\Adapter.exe
Debug\Bridge.exe
Debug\Builder.exe
Debug\Composite.exe
Debug\Decorator.exe
Debug\Facade.exe
Debug\FactoryMethod.exe
Debug\Flyweight.exe
Debug\Prototype.exe
Debug\Proxy.exe
Debug\Singleton.exe
Debug\ChainOfResponsibility.exe
Debug\Iterator.exe
Debug\Memento.exe
Debug\State.exe
Debug\TemplateMethod.exe
Debug\Command.exe
Debug\Mediator.exe
Debug\Observer.exe
Debug\Strategy.exe
Debug\Visitor.exe


