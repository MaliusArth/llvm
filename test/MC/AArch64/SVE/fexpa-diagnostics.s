// RUN: not llvm-mc -triple=aarch64 -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s


// ------------------------------------------------------------------------- //
// Invalid destination or source register.

fexpa z0.b, z31.b
// CHECK: [[@LINE-1]]:{{[0-9]+}}: error: invalid element width
// CHECK-NEXT: fexpa z0.b, z31.b
// CHECK-NOT: [[@LINE-1]]:{{[0-9]+}}:

fexpa z0.s, z31.d
// CHECK: [[@LINE-1]]:{{[0-9]+}}: error: invalid element width
// CHECK-NEXT: fexpa z0.s, z31.d
// CHECK-NOT: [[@LINE-1]]:{{[0-9]+}}: