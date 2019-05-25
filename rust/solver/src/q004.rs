fn is_palin(n: usize) -> bool {
    let raw: String = n.to_string();
    let rev: String = raw.chars().rev().collect::<String>();
    raw == rev
}

pub fn solve(){
    let mut max_pal: usize = 0;

    for i in 100..1000 {
        for j in 100..1000 {
            let prod = i * j;
            if is_palin(prod) && prod > max_pal {  max_pal = prod; }
        }
    }

    println!("{}", max_pal);
}
