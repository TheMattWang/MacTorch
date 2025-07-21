#include <iostream>
#include "layer.h"

int main() {
  Layer l(7);
  std::cout << "Layer size is " << l.get_size() << "\n";
  return 0;
}
