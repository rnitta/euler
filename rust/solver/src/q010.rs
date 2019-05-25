pub fn solve() {
    let n = 2000000usize;
    let mut table = vec!(true; n + 1);
    table[0] = false;
    table[1] = false;
    let sieve_max = (n as f64).sqrt().floor() as usize;
    for i in 2..=sieve_max {
        for j in 2..=(n / i) {
            table[j * i] = false;
        }
    }
    let mut sum: u64 = 0;
    let mut index = 0;
    for f in &table {
        if *f { sum += index as u64; }
        index += 1;
    }
    println!("{}", sum);
}
