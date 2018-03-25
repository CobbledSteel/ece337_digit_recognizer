

if __name__=="__main__":
    with open("NN_Optimization_4_Bit_Sigmoid.txt", "r") as read_file:
        read_data = read_file.readlines()[1::]
    write_file = open('NN_Optimization_CSV_Format_4_Bit_Sigmoid.txt', "w")
    split_data = []
    for test in range(len(read_data)):
        split_data.append(read_data[test].replace('\n', '').split())
    w, h = 28, 20
    csv_matrix = [[0 for x in range(w)] for y in range(h)]
    for test_num in range(len(split_data)):
        size = int(split_data[test_num][0])
        hidden_layers = int(split_data[test_num][1])
        f_trunc_sig_trunc = int(split_data[test_num][9])
        csv_matrix[hidden_layers - 1][size - 1] = f_trunc_sig_trunc
    for i in range(20):
        for j in range(28):
            write_file.write("{0} ".format(csv_matrix[20 - i - 1][j]))
        write_file.write('\n')

    write_file.close()