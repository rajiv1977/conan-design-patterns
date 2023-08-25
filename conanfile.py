import os

from conan import ConanFile
from conan.tools.cmake import cmake_layout


class designPatterns(ConanFile):
    settings = "os", "compiler", "build_type", "arch"
    generators = "CMakeToolchain", "CMakeDeps"

    def build_requirements(self):
        self.tool_requires("cmake/3.27.0")
             
    def layout(self):
        cmake_layout(self)









        
    