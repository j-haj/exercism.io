pub fn raindrops(n: u32) -> String {
    let mut output = "".to_string();
    if n % 3 == 0 {
        output += "Pling";
    }
    if n % 5 == 0 {
        output += "Plang";
    }
    if n % 7 == 0 {
        output += "Plong";
    }
    if output == "" {
        output = format!("{}", n);
    }
    output
}
