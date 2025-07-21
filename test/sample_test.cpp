#include <cassert>
#include "layer.h"
#include <iostream>

int main() {
  Layer l(42);
  assert(l.get_size() == 42);
  std::cout << "Going through test" << std::endl;
  return 0;
}
