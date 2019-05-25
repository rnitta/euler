extern crate num_integer;
use num_integer:: {lcm};

fn evenly_divisable_prod(n: usize) -> usize {
//    let mut table = vec!(true; n + 1);
//    table[0] = false;
//    table[1] = false;
//    let sieve_max = (n as f64).sqrt().floor() as usize;
//    for i in 2..=sieve_max {
//        for j in 2..=(n / i) {
//            table[j * i] = false;
//        }
//    }
//    let mut prod = 1;
//    let mut index = 0;
//    for f in &table {
//        if *f { prod *= index; }
//        index += 1;
//    }
//    prod
    (2..=n).fold(1, |acc, cur| lcm(acc, cur) )
}

pub fn solve() {
    println!("{}", evenly_divisable_prod(20))
}
