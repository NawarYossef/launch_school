h1 = {a: 23, b: 25, c: 45}
h2 = {a: 23, b: 125, c: 30}
#the merge mehod will merge both hashes but keeing the original value of each hash
p h1.merge(h2)
p h1              #h1 stil retains its original value  
p h2
#Now with the ! operator, hash h1 will be modified permenantly.
p h1.merge!(h2)   #distructive method
p h1
p h2
 