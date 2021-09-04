
create table Address (
	id int primary key,
	first_name varchar(20),
	last_name varchar(20),
	phone_number varchar(20),
	address_1 varchar(100),
	address_2 varchar(100),
	country varchar(20),
	state varchar(20),
	city varchar(20),
	postcode varchar(10)
);

create table Orders (
	id int primary key,
	action_required bit,
	urgent bit,
	o_priority int,
	o_status varchar(20),
	action_description varchar(100),
	payment_status varchar(20),
	cost float,
	tracking_number varchar(20),
	order_description varchar(100),
	first_name varchar(20),
	last_name varchar(20),
	company_name varchar(50),
	email varchar(50),
	phone_number varchar(20),
	shipping_address_id int references Address(id),
	billing_address_id int references Address(id),
	order_date datetime
);

create table Geometry (
	id int primary key,
	g_type varchar(20),
	major_diameter float,
	minor_diameter float,
	thickness float,
	wedge float,
	chamfer_width float,
	side_length float,
	width float,
	height float,
	file_link varchar(100),
	dimension_accuracy float,
	number_of_sides int
);

create table MaterialProperty (
	id int primary key,
	reactivity varchar(20),
	toxicity varchar(20),
	m_type varchar(20),
	max_temp float,
	hazards varchar(50),
	special_instructions varchar(100),
	chemical_com bit,
	MTA varchar(20),
	doc_link varchar(100)
);

create table SPDT (
	id int primary key,
	blank_source varchar(50),
	material varchar(20),
	geometry_id int references Geometry(id),
	special_instruction varchar(100),
	quantity int,
	doc_link varchar(100)
);


create table Optical_Or_Photonic (
	id int primary key,
	service_type varchar(10),
	supplier_type varchar(10),
	stock_type varchar(10),
	material varchar(10),
	material_prop_id int references MaterialProperty(id),
	geometry_id int references Geometry(id), 
	special_instruction varchar(100),
	quantity int
);

create table Part (
	id int primary key,
	order_id int references Orders(id),
	SPDT_id int references SPDT(id),
	optical_id int references Optical_Or_Photonic(id),
	action_required bit,
	urgent bit,
	p_priority int,
	p_status varchar(20),
	part_description varchar(100)
);

create table Side (
	id int primary key,
	optical_id int references Optical_Or_Photonic(id),
	SPDT_id int references SPDT(id),
	description_of_face varchar(100),
	polygonal_extruded varchar(20)
);

create table Coating (
	id int primary key,
	side_id int references Side(id),
	coating_method varchar(20),
	coated_area_dimension varchar(20),
	position varchar(20),
	compensation_coating varchar(50),
	protactive_coating varchar(50),
	add_specification varchar(100),
	deposition_process varchar(50)
);

create table Surface (
	id int primary key,
	side_id int references Side(id),
	s_type varchar(20),
	surface_accuracy float,
	turning_angle float,
	focal_length float,
	radius_of_curvature float,
	cv float,
	k float,
	a1 float,
	a2 float,
	a4 float,
	a6 float,
	a8 float,
	a10 float,
	a12 float,
	file_link varchar(100),
	form_accuracy float
);

create table Layer (
	id int primary key,
	coating_id int references Coating(id),
	thickness_layer float,
	thickness_tolerance float,
	material varchar(20),
	refractive_index float,
	tolerance float,
	wavelength float
);

create table Spec (
	id int primary key,
	coating_id int references Coating(id),
	min_wavelength float,
	max_wavelength float,
	refle_transm varchar(20),
	s_min float,
	s_max float,
	polarisation float,
	aoi_theta1 float,
	aoi_theta2 float
);

create table customer_supplied (
	id int primary key,
	material_id int references MaterialProperty(id),
	geometry_id int references Geometry(id)
);
