fn main() {
    let mut sum: u32 = 0;
    let mut i: u32 = 1;
    let mut j: u32 = 1;
    let mut tmp: u32;

    loop {
        tmp = j;
        j = i + j;
        i = tmp;
        if j % 2 == 0 { sum += j; }
        if i + j > 4000000 { break; }
    }
    println!("{}", sum);
}
