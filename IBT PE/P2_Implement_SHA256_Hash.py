import hashlib

text = "hello"
hash_value = hashlib.sha256(text.encode()).hexdigest()

print(hash_value)