fn fib(n: usize) -> usize {
    match n {
        1 => 1,
        2 => 2,
        _ => fib(n - 1) + fib(n - 2)
    }
}

pub fn solve() {
    let mut count: usize = 0;
    let mut i:usize = 1;
    loop {
        let term:usize = fib(i);
        if term > 4000000 { break; }
        if term % 2 == 0 { count += term; }
        i += 1;
    }
    println!("{}", count);
}
