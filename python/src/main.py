import mnist_loader
import network

from functools import partial
import numpy as np


def func(z,scale):
    #return sigmoid(z,scale)
    return sigmoid(z,scale)

def func_prime(z,scale):
    #return sigmoid_prime(z,scale)
    return sigmoid_prime(z,scale)

def sigmoid(z,scale):
    """The sigmoid function."""
    return 1.0/(1.0+np.exp(-scale*z))

def sigmoid_prime(z,scale):
    """Derivative of the sigmoid function."""
    return scale*np.exp(-scale*z)/((np.exp(-scale*z)+1)**2)
    #return scale*sigmoid(z,scale)*(1-sigmoid(z,scale))

def ramp(z,scale):
    return np.clip(z/(2*scale)+0.5,0,1)

def ramp_prime(z,scale):
    f = np.vectorize(partial(ramp_prime_basic,scale=scale))
    return f(z)

def ramp_prime_basic(z,scale):
    if z < -scale:
        return 0
    elif z > scale:
        return 0
    else:
        return 1/(2*scale)

if __name__=="__main__":
    write_file = open("NN_Optimization.txt", "w+")
    write_file.write("SIZE LAYERS EPOCH_0 EPOCH_1 EPOCH_2 EPOCH_3 EPOCH_4 F_UNTRUNC F_TRUNC F_TRUNC_SIG_TRUNC\n")
    for size in range(28, 29):
        for hidden_neurons in range(20, 21):
            write_file.write("{0} {1} ".format(size, hidden_neurons))
            #single side dimension of the image
            #size = 14
            pixels = size**2

            # number of hidden sigmoid
            #hidden_neurons = 12

            # scaling factor for the output function
            scale = 1

            # precision of fractional component of values (in number of binary bits)

            sigmoid_binary_bits = 4
            weight_binary_bits = 0
            bias_binary_bits = 0
            pixel_binary_bits = 4

            # generate scaled training data
            training_data, validation_data, test_data = mnist_loader.load_data_wrapper(size, trunc=pixel_binary_bits)
            # create network with given parameters
            net = network.Network([pixels, hidden_neurons, 10],partial(func,scale=scale),partial(func_prime,scale=scale),
                                  sigmoid_binary_bits, weight_binary_bits, bias_binary_bits, write_file)
            # train the network
            net.SGD(training_data, 5, 10, 3.0, test_data=test_data)
            # print weights and biases (before truncation)
            # net.print_network()
            # evaluate the network with added truncations
            net.final_test(test_data)

            # print weights and biases (after truncation)
            # net.print_network()
    write_file.close()