using System;
using System.Collections.Generic;

namespace MyFirstCSWithVS
{
    public class ImportedJson
    {
        public ImportedJson()
        {
        }

		public class CustomerInfo
		{
			public bool sameAsAbove { get; set; }
			public string firstName { get; set; }
			public string lastName { get; set; }
			public string companyName { get; set; }
			public string email { get; set; }
			public string phoneNumber { get; set; }
			public string firstNameShipping { get; set; }
			public string lastNameShipping { get; set; }
			public string companyNameShipping { get; set; }
			public string address1Shipping { get; set; }
			public string address2Shipping { get; set; }
			public string countryShipping { get; set; }
			public string cityShipping { get; set; }
			public string stateShipping { get; set; }
			public string postcodeShipping { get; set; }
			public string firstNameBilling { get; set; }
			public string lastNameBilling { get; set; }
			public string companyNameBilling { get; set; }
			public string address1Billing { get; set; }
			public string address2Billing { get; set; }
			public string countryBilling { get; set; }
			public string cityBilling { get; set; }
			public string stateBilling { get; set; }
			public string postcodeBilling { get; set; }
		}

		public class Material
		{
			public string materialType { get; set; }
			public string reactivity { get; set; }
			public string toxicity { get; set; }
			public string type { get; set; }
			public string maxTemperature { get; set; }
			public string hazards { get; set; }
			public string specialInstructions { get; set; }
			public string chemicalCompatibilityForCleaning { get; set; }
			public string materialTransferAgreement { get; set; }
		}

		public class Geometry
		{
			public string geometryType { get; set; }
			public string majorDiameter { get; set; }
			public string minorDiameter { get; set; }
			public string thickness { get; set; }
			public string wedge { get; set; }
			public string chamferWidth { get; set; }
			public string width { get; set; }
			public string length { get; set; }
			public string sideLength { get; set; }
			public string dimensionalAccuracy { get; set; }
			public string numberOfSides { get; set; }
		}

		public class Layers
		{
			public string thicknessOfLayer { get; set; }
			public string thicknessTolerance { get; set; }
			public string material { get; set; }
			public string refractiveIndex { get; set; }
			public string tolerance { get; set; }
			public string wavelength { get; set; }
		}

		public class Specs
		{
			public string wavelengthMin { get; set; }
			public string wavelengthMax { get; set; }
			public string polarisation { get; set; }
			public string RTSelect { get; set; }
			public string min { get; set; }
			public string max { get; set; }
			public string unit { get; set; }
			public string AOImin { get; set; }
			public string AOImax { get; set; }
		}

		public class Coating
		{
			public List<Layers> layers { get; set; }
			public List<Specs> specs { get; set; }
		}

		public class Surface
		{
			public string descriptionOfFace { get; set; }
			public string curvature { get; set; }
			public string surfaceFigure { get; set; }
			public string turningAngle { get; set; }
			public string focalLength { get; set; }
			public string radiusOfCurvature { get; set; }
			public string cv { get; set; }
			public string k { get; set; }
			public string a1 { get; set; }
			public string a2 { get; set; }
			public string a4 { get; set; }
			public string a6 { get; set; }
			public string a8 { get; set; }
			public string a10 { get; set; }
			public string a12 { get; set; }
			public string formAccuracy { get; set; }
			public Coating coating { get; set; }
			public string faceType { get; set; }
		}

		public class Part1
		{
			public string serviceType { get; set; }
			public string blankSource { get; set; }
			public string substrateSource { get; set; }
			public string stockSize { get; set; }
			public Material material { get; set; }
			public Geometry geometry { get; set; }
			public List<Surface> surface { get; set; }
			public string quantity { get; set; }
			public string specialInstructions { get; set; }
		}

		public class Part2
		{
			public string serviceType { get; set; }
			public string blankSource { get; set; }
			public string substrateSource { get; set; }
			public string stockSize { get; set; }
			public Material material { get; set; }
			public Geometry geometry { get; set; }
			public List<Surface> surface { get; set; }
			public string quantity { get; set; }
			public string specialInstructions { get; set; }
		}

		public class ImportedOrder
		{
			public CustomerInfo customerInfo { get; set; }
			public Part1 part1 { get; set; }
			public Part2 part2 { get; set; }
		}
	}
}
