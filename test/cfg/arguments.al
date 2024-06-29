// RUN: compiler %s -cfg-dump 2>&1 | filecheck %s
fn foo(x: number, y: number): void{}

fn main(): void {
    foo(1.0 + 2.0, 3.0 + 4.0);
}
// CHECK: main
// CHECK-NEXT: ----------
// CHECK-NEXT: [2 (entry)]
// CHECK-NEXT:   preds: 
// CHECK-NEXT:   succs: 1 
// CHECK-NEXT: 
// CHECK-NEXT: [1]
// CHECK-NEXT:   preds: 2 
// CHECK-NEXT:   succs: 0 
// CHECK-NEXT:   NumberLiteral: '1'
// CHECK-NEXT:   | value: 1
// CHECK-NEXT:   NumberLiteral: '2'
// CHECK-NEXT:   | value: 2
// CHECK-NEXT:   ResolvedBinaryOperator: '+'
// CHECK-NEXT:   | value: 3
// CHECK-NEXT:     NumberLiteral: '1'
// CHECK-NEXT:     | value: 1
// CHECK-NEXT:     NumberLiteral: '2'
// CHECK-NEXT:     | value: 2
// CHECK-NEXT:   NumberLiteral: '3'
// CHECK-NEXT:   | value: 3
// CHECK-NEXT:   NumberLiteral: '4'
// CHECK-NEXT:   | value: 4
// CHECK-NEXT:   ResolvedBinaryOperator: '+'
// CHECK-NEXT:   | value: 7
// CHECK-NEXT:     NumberLiteral: '3'
// CHECK-NEXT:     | value: 3
// CHECK-NEXT:     NumberLiteral: '4'
// CHECK-NEXT:     | value: 4
// CHECK-NEXT:   ResolvedCallExpr: @({{.*}}) foo
// CHECK-NEXT:     ResolvedBinaryOperator: '+'
// CHECK-NEXT:     | value: 3
// CHECK-NEXT:       NumberLiteral: '1'
// CHECK-NEXT:       | value: 1
// CHECK-NEXT:       NumberLiteral: '2'
// CHECK-NEXT:       | value: 2
// CHECK-NEXT:     ResolvedBinaryOperator: '+'
// CHECK-NEXT:     | value: 7
// CHECK-NEXT:       NumberLiteral: '3'
// CHECK-NEXT:       | value: 3
// CHECK-NEXT:       NumberLiteral: '4'
// CHECK-NEXT:       | value: 4
// CHECK-NEXT: 
// CHECK-NEXT: [0 (exit)]
// CHECK-NEXT:   preds: 1 
// CHECK-NEXT:   succs: 
