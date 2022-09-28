# Write your MySQL query statement below

# 1) concat function :
#               takes a variable number of string arguments and concatenates (or joins) them                   into a single string.
#                takes minimum 2 input 
#               convert each input in string implicitly
# 2) upper function : 
#                convert string into uppercase . SYNTAX -> UPPER (STRING)
# 3) lower function : 
#                convert string into lowercase . SYNTAX -> LOWER (STRING)
# 4) left function : 
#                extract number of characters from a string. SYNTAX -> LEFT (STRING , NO_OF_CHARS) - starting from left 
# 5) right function :
#                extrat number of characters from a string. SYNTAX -> RIGHT (STRING , NO_OF_CHARS) - starting from right 
# 6) length function : 
#                 return length of string. SYNTAX -> LENGTH(string)



select user_id,concat(upper(left(name,1)),lower(right(name,length(name)-1))) as name
from users order by user_id;