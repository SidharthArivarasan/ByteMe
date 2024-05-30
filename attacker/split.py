#import sys
def split_binary_data(binary_data, num_splits):
    # with open(file_path, 'rb') as file:
    #     binary_data = file.read()

    data_length = len(binary_data)
    split_size = data_length // num_splits
    remaining = data_length % num_splits

    splits = []
    start = 0

    for i in range(num_splits):
        split_end = start + split_size + (1 if i < remaining else 0)
        splits.append(binary_data[start:split_end])
        start = split_end

    return splits

# Example usage:
#file_path = sys.argv[1]
#num_splits = 3
#data_splits = split_binary_data(file_path, num_splits)

#print(list(data_splits[0]))

# with open('abc', 'wb') as f:
# 	f.write(b'ABCDEFG')