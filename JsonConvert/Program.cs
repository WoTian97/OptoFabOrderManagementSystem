using System;
using System.IO;
using System.Collections.Generic;
using Newtonsoft.Json;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static MyFirstCSWithVS.SQLClass;
using static MyFirstCSWithVS.GeneratingIds;
using static MyFirstCSWithVS.ImportedJson;
using static MyFirstCSWithVS.OrderLists;

namespace MyFirstCSWithVS
{
    class Program
    {
        static void Main(string[] args)
        {
            double id;
            
            // deserialize imported json file into a object order
            ImportedOrder importedOrder;
            //TODO: change file path
            using (StreamReader fileJson = new StreamReader("filename.json")) 
            {
                string json = fileJson.ReadToEnd();
                importedOrder = JsonConvert.DeserializeObject<ImportedOrder>(json);
                
            }

            //Console.WriteLine(importedOrder.customerInfo.sameAsAbove);

            // deserialize order number json file into a object rootObjects
            RootObject orderNoList;
            // TODO: change file path 
            using (StreamReader fileJson = new StreamReader("filename.json"))
            {
                string json = fileJson.ReadToEnd();
                orderNoList = JsonConvert.DeserializeObject<RootObject>(json);
                id = orderNoList.orders[orderNoList.orders.Count - 1].order;
            }

            if (orderNoList.orders.Count>0)
            {
                id = orderNoList.orders[orderNoList.orders.Count - 1].order + 1;
            } else
            {
                id = 1001;
            }

            SQLClass.RootObjects sqlClasses = new SQLClass.RootObjects();


            //generate order
            sqlClasses.order.id = id;
            id = id*10;
            sqlClasses.order.first_name = importedOrder.customerInfo.firstName;
            sqlClasses.order.last_name = importedOrder.customerInfo.lastName;
            sqlClasses.order.company_name = importedOrder.customerInfo.companyName;
            sqlClasses.order.email = importedOrder.customerInfo.email;
            sqlClasses.order.phone_number = importedOrder.customerInfo.phoneNumber;
            sqlClasses.order.shipping_address_id = id;
            id++;
            sqlClasses.order.billing_address_id = id;
            id++;

            //generate shipping addresses
            sqlClasses.address[0].id = sqlClasses.order.shipping_address_id;
            sqlClasses.address[0].first_name = importedOrder.customerInfo.firstNameShipping;
            sqlClasses.address[0].last_name = importedOrder.customerInfo.lastNameShipping;
            sqlClasses.address[0].phone_number = importedOrder.customerInfo.postcodeShipping;
            sqlClasses.address[0].address_1 = importedOrder.customerInfo.address1Shipping;
            sqlClasses.address[0].address_2 = importedOrder.customerInfo.address2Shipping;
            sqlClasses.address[0].country = importedOrder.customerInfo.cityShipping;
            sqlClasses.address[0].state = importedOrder.customerInfo.stateShipping;
            sqlClasses.address[0].city = importedOrder.customerInfo.cityShipping;
            sqlClasses.address[0].postcode = importedOrder.customerInfo.postcodeShipping;

            //generate billing address
            if (importedOrder.customerInfo.sameAsAbove == false)
            {
                sqlClasses.address[1] = sqlClasses.address[0];
                sqlClasses.address[1].id = sqlClasses.order.billing_address_id;
            } else
            {
                sqlClasses.address[1].id = sqlClasses.order.billing_address_id;
                sqlClasses.address[1].first_name = importedOrder.customerInfo.firstNameBilling;
                sqlClasses.address[1].last_name = importedOrder.customerInfo.lastNameBilling;
                sqlClasses.address[1].phone_number = importedOrder.customerInfo.postcodeBilling;
                sqlClasses.address[1].address_1 = importedOrder.customerInfo.address1Billing;
                sqlClasses.address[1].address_2 = importedOrder.customerInfo.address2Billing;
                sqlClasses.address[1].country = importedOrder.customerInfo.cityBilling;
                sqlClasses.address[1].state = importedOrder.customerInfo.stateBilling;
                sqlClasses.address[1].city = importedOrder.customerInfo.cityBilling;
                sqlClasses.address[1].postcode = importedOrder.customerInfo.postcodeBilling;
            }

            //generate part
            sqlClasses.parts[0].id = id;
            id++;
            sqlClasses.parts[0].order_id = sqlClasses.order.id;
            if (importedOrder.part1.serviceType == "SPDT Optic")
            {
                sqlClasses.parts[0].SPDT_id = id;
                id++; 
                sqlClasses.sPDTs[0].id = sqlClasses.parts[0].SPDT_id;
                sqlClasses.sPDTs[0].blank_source = importedOrder.part1.blankSource;
                //sqlClasses.sPDTs[0].material = id;
                sqlClasses.sPDTs[0].geometry_id = id;
                id++;
                sqlClasses.sPDTs[0].special_instruction = importedOrder.part1.specialInstructions;
                sqlClasses.sPDTs[0].quantity = importedOrder.part1.quantity;

            } else if (importedOrder.part1.serviceType == "Optical Coating" || importedOrder.part1.serviceType == "Photonic Coating")
            {
                sqlClasses.parts[0].optical_id = id;
                id++; //TODO：add optical 
                sqlClasses.optical_Or_Photonics[0].id = sqlClasses.parts[0].optical_id;
                sqlClasses.optical_Or_Photonics[0].service_type = importedOrder.part1.serviceType;

            } else // custom 
            {
                //TODO: 
            }
            
            //TODO: convert created object: sqlClasses into a new exported json

        }
    }

}
