SELECT A.dimension_1 as dimension1, m.correct_dimension_2 as dimesnion2, A.measure_1 as measure_1, 0 as measure_2 FROM Table_A A inner join 
  (
	SELECT distinct * FROM MAP
  ) as m on m.dimension_1 = a.dimension_1
  UNION ALL
  SELECT B.dimension_1 as dimension1, m.correct_dimension_2 as dimesnion2, 0 as measure_1, B.measure_2 as measure_2 FROM Table_B B left join 
  (
	SELECT distinct * FROM MAP
  ) as m on m.dimension_1 = B.dimension_1