using System;
using System.Collections.Generic;

namespace MyFirstCSWithVS
{
    public class SQLClass
    {
        public SQLClass()
        {
        }
		public class Address //list
		{
			public double id { get; set; }
			public string first_name { get; set; }
			public string last_name { get; set; }
			public string phone_number { get; set; }
			public string address_1 { get; set; }
			public string address_2 { get; set; }
			public string country { get; set; }
			public string state { get; set; }
			public string city { get; set; }
			public string postcode { get; set; }

            public static implicit operator List<object>(Address v)
            {
                throw new NotImplementedException();
            }
        }

		public class Coating //list
		{
			public double id { get; set; }
			public double side_id { get; set; }
			public string coating_method { get; set; }
			public string coated_area_dimension { get; set; }
			public string position { get; set; }
			public string compensation_coating { get; set; }
			public string protactive_coating { get; set; }
		}

		public class customer_supplied
		{
			public double id { get; set; }
			public double material_id { get; set; }
			public double geometry_id { get; set; }
		}

		public class Geometry
		{
			public double id { get; set; }
			public string g_type { get; set; }
			public string major_diameter { get; set; }
			public string minor_diameter { get; set; }
			public string thickness { get; set; }
			public string wedge { get; set; }
			public string chamfer_width { get; set; }
			public string side_length { get; set; }
			public string width { get; set; }
			public string length { get; set; }
			public string file_link { get; set; }
			public string dimension_accuracy { get; set; }
			public string number_of_sides { get; set; }
		}

		public class Layer
		{
			public double id { get; set; }
			public double coating_id { get; set; }
			public string thickness_tolerance { get; set; }
			public string material { get; set; }
			public string reflective_index { get; set; }
			public string tolerance { get; set; }
			public string wavelength { get; set; }

		}

		public class MaterialProperty
		{
			public double id { get; set; }
			public string toxicity { get; set; }
			public string m_type { get; set; }
			public string max_temp { get; set; }
			public string hazards { get; set; }
			public string special_instructions { get; set; }
			public string chemical_com { get; set; }
			public string MTA { get; set; }
			public string doc_link { get; set; }
		}

		public class Optical_or_Photonic
		{
			public double id { get; set; }
			public string service_type { get; set; }
			public string supplier_type { get; set; }
			public string stock_type { get; set; }
			public string material { get; set; }
			public double material_prop_id { get; set; }
			public double geometry_id { get; set; }
			public string special_instruction { get; set; }
			public string quantity { get; set; }
		}

		public class Order
		{
			public double id { get; set; }
			public string action_required { get; set; }
			public string urgent { get; set; }
			public string o_priority { get; set; }
			public string o_status { get; set; }
			public string action_descriididption { get; set; }
			public string payment_status { get; set; }
			public string cost { get; set; }
			public string tracking_number { get; set; }
			public string order_description { get; set; }
			public string first_name { get; set; }
			public string last_name { get; set; }
			public string company_name { get; set; }
			public string email { get; set; }
			public string phone_number { get; set; }
			public double shipping_address_id { get; set; }
			public double billing_address_id { get; set; }
			public string order_date { get; set; }
		}

		public class Part
		{
			public double id { get; set; }
			public double order_id { get; set; }
			public double SPDT_id { get; set; }
			public double optical_id { get; set; }
			public string action_required { get; set; }
			public string urgent { get; set; }
			public string p_priority { get; set; }
			public string p_status { get; set; }
			public string part_description { get; set; }
		}

		public class Side
		{
			public double id { get; set; }
			public double optical_id { get; set; }
			public double SPDT_id { get; set; }
			public string description_of_face { get; set; }
			public string polygonal_extruded { get; set; }
		}

		public class SPDT
		{
			public double id { get; set; }
			public string blank_source { get; set; }
			public string material { get; set; }
			public double geometry_id { get; set; }
			public string special_instruction { get; set; }
			public string quantity { get; set; }
			public string doc_link { get; set; }
		}

		public class Spec
		{
			public double id { get; set; }
			public double coating_id { get; set; }
			public string min_wavelength { get; set; }
			public string max_wacelength { get; set; }
			public string refle_transm { get; set; }
			public string s_min { get; set; }
			public string s_max { get; set; }
			public string polarisation { get; set; }
			public string aoi_min { get; set; }
			public string aoi_max { get; set; }
		}

		public class Surface //
		{
			public double id { get; set; }
			public double side_id { get; set; }
			public string s_type { get; set; }
			public string surface_figure { get; set; }
			public string surface_roughness { get; set; }
			public string surface_quality { get; set; }
			public string turning_angle { get; set; }
			public string focal_length { get; set; }
			public string radius_of_curvature { get; set; }
			public string cv { get; set; }
			public string k { get; set; }
			public string a1 { get; set; }
			public string a2 { get; set; }
			public string a4 { get; set; }
			public string a8 { get; set; }
			public string a10 { get; set; }
			public string a12 { get; set; }
			public string file_link { get; set; }
			public string form_accuracy { get; set; }
		}

		public class RootObjects
        {
			public List<Address> address { get; set; }
			public Order order { get; set; }
			public List<Part> parts { get; set; }
			public List<SPDT> sPDTs { get; set; }
			public List<Optical_or_Photonic> optical_Or_Photonics { get; set; }
			public List<Side> sides { get; set; }
			public List<Geometry> geometries { get; set; }
			public List<MaterialProperty> materialProperties { get; set; }
			public List<Coating> coatings { get; set; }
			public List<Surface> surfaces { get; set; }
			public List<Layer> layers { get; set; }
			public List<Spec> specs { get; set; }
			public List<customer_supplied> customer_Supplieds { get; set; }

			public RootObjects()
            {
				this.address = new List<Address>();
				this.order = new Order();
				this.parts = new List<Part>();
				this.sPDTs = new List<SPDT>();
				this.optical_Or_Photonics = new List<Optical_or_Photonic>();
				this.sides = new List<Side>();
				this.geometries = new List<Geometry>();
				this.materialProperties = new List<MaterialProperty>();
				this.coatings = new List<Coating>();
				this.surfaces = new List<Surface>();
				this.layers = new List<Layer>();
				this.specs = new List<Spec>();
				this.customer_Supplieds = new List<customer_supplied>();
            }
        }
	}
}
