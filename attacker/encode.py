import base64,sys

def encrypt(data, key):
    encrypted_data = bytearray()
    for byte in data:
        encrypted_data.append(byte ^ key)
    return encrypted_data

def encode_file(input_file_path):
    #input_file_path = sys.argv[1]
    #output_file_path = sys.argv[2]
    key = 0x73
    
    with open(input_file_path, 'rb') as file:
        data = file.read()
        encoded_data = base64.b64encode(data)
        #encrypted_data = encoded_data
        encrypted_data = encrypt(encoded_data, key)
    
    #with open(output_file_path, 'wb') as output_file:
    #    output_file.write(encrypted_data)
    
    print("File has been encoded, encrypted, and returned")
    return encrypted_data

#if __name__ == "__main__":
#    main()