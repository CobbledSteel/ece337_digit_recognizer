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
    size = 10
    sc = 1
    pixels = size**2
    training_data, validation_data, test_data = mnist_loader.load_data_wrapper(size)
    print "loaded data"
    net = network.Network([pixels, 6, 10],partial(func,scale=sc),partial(func_prime,scale=sc))
    print "set up network"
    net.SGD(training_data, 3, 10, 3.0, test_data=test_data)
    print "done"
    net.print_network()
    net.final_test(test_data)

