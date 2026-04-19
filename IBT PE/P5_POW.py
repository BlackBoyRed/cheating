import hashlib

def proof_of_work(data, difficulty=4):
    nonce = 0
    prefix = "0" * difficulty

    while True:
        text = f"{data}{nonce}"
        hash_result = hashlib.sha256(text.encode()).hexdigest()
        
        if hash_result.startswith(prefix):
            return nonce, hash_result
        
        nonce += 1

# Example usage
data = "Block Data"
nonce, hash_result = proof_of_work(data)

print("Nonce:", nonce)
print("Hash:", hash_result)