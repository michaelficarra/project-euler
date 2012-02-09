head [x | x <- [1..],
  let x' = sort $ show $ 2 * x in
  all ((== x') . sort . show) [k * x | k <- [3..6]]
  ]
