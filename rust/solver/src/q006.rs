pub fn solve() {
    let max:i32 = 100;
    println!("{}", ((1..=max).fold(0, |acc, cur| acc + cur ).pow(2) - (1..=max).fold(0, |acc, cur| acc + cur.pow(2) )).abs())
}
