fn _solve(max: usize) -> usize {
    let mut count: usize = 0;
    for i in 0..max {
        if i % 3 == 0 || i % 5 == 0 {
            count += i;
        }
    }
    count
}

pub fn solve() {
    println!("{}", _solve(1000));
}
