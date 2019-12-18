SELECT
  *
FROM
  `hats` h
WHERE
  h.color == 'red'
GROUP BY
  h.color, h.material
HAVING
  count(h.quantity) >= 200
ORDER BY
  h.color DESC
LIMIT
  20
OFFSET
  10
