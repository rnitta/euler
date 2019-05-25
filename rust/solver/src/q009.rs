pub fn solve() {
    'a: for a in 1usize..1000 {
        'b: for b in a..1000 - a {
            let c2 = a.pow(2) + b.pow(2);
            let c = (c2 as f64).sqrt() as usize;
            if c.pow(2) != c2 { continue 'b; }
            if a + b + c  == 1000 {
                println!("{}", a * b * c);
                break 'a;
            }
        }
    }
}
