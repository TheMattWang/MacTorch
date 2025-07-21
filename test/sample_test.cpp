#include <cassert>
#include "layer.h"

int main() {
  Layer l(42);
  assert(l.get_size() == 42);
  return 0;
}
