# movieapp

1. Download and unzip the project
2. To run this project locally, you need to run database. Use the JAMD.sql file inside the file and create database with SSMS.
3. You should modify database connection string to connect with database, Modify 'MovieApp/appsettings.json'

"ConnectionStrings": {
    //"JAMDConnection": "Server=(localdb)\\mssqllocaldb;Database=JAMD;Trusted_Connection=True;",
    "JAMDConnection": "Server=tcp:movieappdb-ykim.database.windows.net,1433;Initial Catalog=movieappdb;Persist Security Info=False;User ID=Ykim1059;Password=tkdenddl12@;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;",
    "DefaultConnection": "Server=(localdb)\\mssqllocaldb;Database=aspnet-MovieApp-6F9D0A6D-FDE2-4349-9C9E-F2D33B17B921;Trusted_Connection=True;MultipleActiveResultSets=true"
  }
  
  From this part, modify after "JAMDConnection": {what you should modify}
  
  i.e. "JAMDConnection": "Server=DESKTOP-9U81O2R\\CLEARDHSQL;Database=JAMD;Trusted_Connection=True;"
  
  4. If you connect database completely, now you can run it.
  
  * You can run this project without connect with database, but you cannot sign in/up. And you need sign up, then sign in to see the movie list. 
