// 微妙 tableをメモ化しないと
fn is_prime(n: usize) -> bool { //エラトステネス
    let mut table = vec![true; n + 1];
    table[0] = false;
    table[1] = false;
    let sieve_max = (n as f64).sqrt().floor() as usize;
    for i in 2..=sieve_max {
        if table[i] {
            for j in 2..=(n / i) {
                table[i * j] = false;
            }
        }
    }
    table[n]
}

pub fn solve() {
    let mut index: usize = 2;
    let mut count: usize = 0;
    let mut ans: usize = 0;
    while count < 10001 {
        if is_prime(index) {
            count += 1;
            ans = index;
        }
        index += 1;
    };
    println!("{}", ans);
}
