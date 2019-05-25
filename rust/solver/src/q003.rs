fn largest_prime_factor(n: usize) -> usize {
    let mut num = n;
    let mut divisor: usize = 2;
    while num != 1 {
        if num % divisor == 0 {
            num /= divisor;
        } else {
            divisor += 1;
        }
    }
    divisor
}

pub fn solve() {
    println!("{}", largest_prime_factor(600851475143));
}
