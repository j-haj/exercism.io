use std::cmp::min;

pub fn find_saddle_points(input: &[Vec<u64>]) -> Vec<(usize, usize)> {
    if input.len() == 0 {
        return Vec::new();
    }
    let mut saddle_points: Vec<(usize, usize)> = Vec::new();
    let mut col_mins: Vec<Option<u64>> = Vec::new();
    let mut row_maxs: Vec<Option<&u64>> = Vec::new();
    // Get row max
    for i in 0..input.len() {
        let row_max = input[i].iter().max();
        row_maxs.push(row_max);
    }

    // Get col mins
    for j in 0..input[0].len() {
        let mut col_min = u64::max_value();
        for i in 0..input.len() {
            col_min = min(col_min, input[i][j]);
        }
        col_mins.push(Some(col_min));
    }

    for i in 0..input.len() {
        for j in 0..input[i].len() {
            let cur = input[i][j];
            if let (Some(rmax), Some(cmin)) = (row_maxs[i], col_mins[j]) {
                if cur >= *rmax && cur <= cmin {
                    saddle_points.push((i, j));
                }
            }
        }
    }
    saddle_points
}
