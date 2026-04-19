import hashlib

# Define keys
private_key = "my_private_key"
public_key = "my_public_key"

# Message
message = "Kate pays Johnny 10 BTC"

# Generate Digital Signature using private key
signature = hashlib.sha256((message + private_key).encode()).hexdigest()

print("Message:", message)
print("Digital Signature:", signature)

# Verify Digital Signature using public key (simulation)
verify_signature = hashlib.sha256((message + private_key).encode()).hexdigest()

if signature == verify_signature:
    print("Signature is VALID")
else:
    print("Signature is INVALID")
