// Solve a^2 + b^2 = c^2 constrained to the plane a + b + c = 1000
pub fn find() -> Option<u32> {
    for b in 1..1000 {
        let c = (1000*1000 - 2000*b + 2*b*b)/(2000 - 2 * b);
        let a =  1000 - b - c;
        if a*a + b*b == c*c {
            return Some(a * b * c);
        }
    }
    None
}
