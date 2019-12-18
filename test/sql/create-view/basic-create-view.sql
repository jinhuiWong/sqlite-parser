CREATE VIEW happy.bananaview
AS
  SELECT type, name, origin
  FROM bananas
  WHERE color = 'red'
