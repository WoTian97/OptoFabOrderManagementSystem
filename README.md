# OptoFab Order Management System Instruction

The Order Management System is developed using C# and ASP.NET(.NET framework 4.5.2) in Visual Studio 2019, connected to MySQL Community Server 8.0.26. 

## Update instructions

To change, add or delete a field in the Order Management System, follow the next steps:
1. Update the database. One way to do this is to update DatabaseCreate.sql and run it in MySQL to create a new database, then link it to the backend of the project in  <connectionStrings>. If only a few fields need to be updated, we recommend you to use the SQL DDL commands to alter tables instead of doing it in MySQL WorkBench, so that all developers can update their databases by running the SQL commands. 
2. Fill in the pseudo data for testing reasons. 
3. Update the related fields in the front-end (with extension .aspx). Each front-end component should have a unique ID, which will be used in the backend. 
4. Update the back-end functions and SQL query in the corresponding .aspx.cs files if needed. Eg: If there is a label called LabelGeometryType, a statement in backend similar to “LabelGeometryType.Text = getInfo("select g_type from Geometry where id = " + geometry_id);” can be found in OpticalOrPhotonic.aspx.cs.


## Useful links

1. Please check out our [technical handover document](https://docs.google.com/document/d/1namlOrbBlDt14Aku9XytsxvnTgsEDM0-UCTflTzBooc/edit?usp=sharing) if you have any question.
2. Feel free to visit our [landing page](https://optofab.github.io/).
