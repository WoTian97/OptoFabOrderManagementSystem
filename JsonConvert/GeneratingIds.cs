using System;
namespace MyFirstCSWithVS
{
    public class GeneratingIds
    {
        public GeneratingIds()
        {

        }
        public static int orderId (int lastId)
        {
            return lastId+1;
        }

        public static int shippingAddressId (int orderId) //oooo0ss
        {
            return orderId * 1000 + 101;
        }
        public static int billingAddressId (int orderId) //oooo0bb
        {
            return orderId * 1000 + 102;
        }
        public static int partId (int orderId, int partNo) //oooo1pp
        {
            return (orderId * 1000 + 100 + partNo);
        }
        //TODO:
        public static int serviceTypeId (int partId, string serviceType) // oooo1pps
        {
            if ((serviceType == "Optical Coating") || (serviceType == "Photonic Coating"))
            {
                return partId * 10 + 1;
            }
            else if ((serviceType == "SPDT Coating"))
            {
                return partId * 10 + 2;
            }
            else
                return partId * 10 + 3;
        }
        //generate side id 
        public static int sideId (int service, int sideNo) //oooo1ppss
        {
            return (service * 1000 + 100 + sideNo);
        }
        public static int geometryId (int service)
        {
            return service * 1000 + 200;
        }
        public static int materialId (int service)
        {
            return service * 1000 + 300;
        }
        // coating 1, surface 2. Only one side in each side, but could be multiple coating
        public static int coatingId (int sideId, int coatingNo) //oooo1ppss1cc
        {
            return (sideId * 1000 + 100 + coatingNo);
        }

        public static int surfaceId (int sideId)//oooo1ppss200
        {
            return sideId * 1000 + 200;
        }

        //Layer id 
        public static int layerId (int coatingId, int layerNo) //oooo1ppss1ccll
        {
            return coatingId * 100 + layerNo;
        }
    }
}
