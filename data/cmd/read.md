## read file 
```bash
sed -n '17,20p' filename  # for read only line 17 to 20
awk 'NR>=17 && NR<=20 {print}' filename
head -20 filename | tail -4   # meaning we show only 20 but only the last 4 : 20 , 19 ,18 ,17
#grep
grep [option] "pattern" file
grep -E "the" filename # search the regular expression option  of "the"
grep -E "the$" filename # find the start from the**
#on docker : 
docker logs nginx | grep "words"
```
## edit file
```bash

```
