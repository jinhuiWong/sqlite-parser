/* select id from movies where id in
 * (select movie_id from rooms where seats > 75);
 */ SELECT 1; /* select id from movies where id in
 * (select movie_id from rooms where seats > 75);
 * /*
 * nested block comment -- here is another one
 * /* another nest level */
 * and this
 * */
 * some more stuff here
 */

select movie_id
 -- FROM movies
 -- WHERE seats != 0
from rooms -- unicorn
AS hat
   -- comments!
where seats > 75 -- happy birthday

;SELECT 2 FROM -- comments
hats
