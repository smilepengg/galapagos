#ifndef net_control_device_hpp
#define net_control_device_hpp


#include <boost/thread/locks.hpp>
#include <boost/thread/shared_mutex.hpp>
#include <cstdlib>
#include <iostream>
#include <thread>
#include <memory>
#include <utility>
#include <boost/asio.hpp>

#include "util.h"
#include "control_device.hpp"
#include<iostream>
#include<string>


#define NUM_INT_PER_MESSAGE 3
#define CMD 0
#define ADDR 1
#define SIZE 2

#define SET 0
#define GET 1

class net_control_device {
    control_device dev;
    boost::asio::io_context io_context;
    boost::asio::ip::tcp::acceptor acceptor_;
    
    public:
        net_control_device(std::string, int port, bool axi_full);


};

#endif // guard
