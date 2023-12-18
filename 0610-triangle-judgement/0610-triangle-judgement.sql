# Write your MySQL query statement below
#select x,y,z,if((x>y and x>z and x<y+z) or (y>x and y>z and y<x+z) or (z>y and z>x and z<x+y) or (x=y and y=z and z=x),"Yes","No") as triangle from triangle
SELECT *, 
if( x + y > z AND x + z > y AND z + y > x,'Yes','No')  AS triangle
FROM Triangle;
