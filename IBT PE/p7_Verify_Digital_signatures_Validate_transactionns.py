import hashlib

# Sender side
message = "Sattu pays Nattu 10 BTC"
private_key = "my_private_key"

# Create digital signature
signature = hashlib.sha256((message + private_key).encode()).hexdigest()

print("Original Message:", message)
print("Digital Signature:", signature)

# Receiver side (verification)
# Change message to test tampering
received_message = "Sattu pays Nattu 10 BTC"  # try changing to "50 BTC"

verify_signature = hashlib.sha256((received_message + private_key).encode()).hexdigest()

print("\nReceived Message:", received_message)
print("Generated Hash:", verify_signature)

# Validation
if verify_signature == signature:
    print("\nTransaction is VALID ✅")
else:
    print("\nTransaction is INVALID ❌")
