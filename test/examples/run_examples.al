// RUN: compiler ../../examples/fibonacci_sequence.al -o fibonacci && ./fibonacci | grep -Plzx '0\n1\n1\n2\n3\n5\n8\n13\n21\n34\n55\n89\n144\n233\n377\n610\n987\n1597\n2584\n4181\n'
// RUN: compiler ../../examples/prime_numbers.al -o prime && ./prime | grep -Plzx '2\n3\n5\n7\n11\n13\n17\n19\n23\n29\n'

