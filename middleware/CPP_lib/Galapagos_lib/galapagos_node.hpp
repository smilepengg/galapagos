//===============================
// AUTHOR     : Naif Tarafdar
// CREATE DATE     : April 20, 2019
//===============================

#ifndef __GALAPAGOS_NODE_HPP__   // if x.h hasn't been included yet...
#define __GALAPAGOS_NODE_HPP__

#include <map>
#include <assert.h>
#include "galapagos_packet.h"
#include "galapagos_stream.hpp"
#include "galapagos_kernel.hpp"
#include "galapagos_router_node.hpp"
#include "galapagos_net_tcp.hpp"

namespace galapagos{
    template<typename T>
    class node{
        private:
            std::unique_ptr <galapagos::router_node <T> > my_router;
            std::vector < std::unique_ptr<galapagos::kernel <T> > > kernels;
            bool done;
            std::mutex  mutex;

            std::unique_ptr <galapagos::net::tcp::tcp <T> > net_ptr;
            std::map <int, int> dest_to_kern_ind;

        public:
            node(std::vector <std::string>  & _kern_info_table, std::string  & _my_address);
            void add_kernel(short id, void (*func)(stream <T> *, stream <T> *));
            void add_kernel(short id, void (*func)());
            void start();
            void end();
    };
}



#endif
