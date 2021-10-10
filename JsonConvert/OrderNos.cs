using System;
using System.Collections.Generic;

namespace MyFirstCSWithVS
{
    public class OrderLists
    {
        public OrderLists()
        {
        }
        public class Orders
        {
            public double order { get; set; }
        }

        public class RootObject
        {
            public List<Orders> orders { get; set; }
        }
    }
}
