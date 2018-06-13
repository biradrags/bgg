import urllib


h="hello"
w="world"
print(h+' '+w)

massive = (1,2,3,4)
print(massive[2])
url = 'https://youtube.com'
response = urllib.urlopen(url)
print (response.getcode)
print (response.headers)
