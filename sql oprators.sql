
use rihan

select*from ahmad

select naam,city from ahmad 

select naam from ahmad where city='sbd'

select * from ahmad where city='sbd' and naam='sameer'

select * from ahmad where city='sbd' and (city='sbd' or city='saifni')


use demo
select*from country
select*from state
sp_rename 'username.state','country'


create table country(id int identity primary key,name nvarchar(100))

create table state(id int identity primary key,name nvarchar(100),countryid int foreign key references country (id))





insert into country values('india')
insert into country values('japan')
insert into country values('iran')
insert into country values('malaysia')
insert into country values('america')

insert into state values('uttar pradesh',1)
insert into state values('
Andhra Pradesh',1)
insert into state values('bihar',1)
insert into state values('assam',1)
insert into  state values ('Chūbu',2)
insert into  state values (' Niigata',2)
insert into state values('Toyama',2)
insert into state values('Tiioyama',2)
insert into state values('Ilam	',3)
insert into state values('Isfahan	',3)
insert into state values('Kerman	',3)
insert into state values('Kermanshah	',3)

insert into state values('Johor',4)
insert into state values('Kedah',4)
insert into state values('Kelantan',4)
insert into state values('Malacca',4)

insert into state values('Alabama',5)
insert into state values('Florida',5)
insert into state values('Alaska',5)
insert into state values('Hawaii',5)

sp_rename 'state','statetab'

select* from statetab


alter proc get
@countryid int
as
begin
select id,name,countryid from statetab where countryid=@countryid
end
execute get 1

create proc alldata
as
begin
select* from countrytab
end

else if @ActionType='countrytable'
begin
SELECT  countrytab.name,statetab.name
FROM countrytab
INNER JOIN statetab
ON countrytab.id = statetab.countryid
End


public ActionResult getDepartment()  
        {  
            DatabaseEntities db = new DatabaseEntities();  
            return Json(db.Departments.Select(x => new  
            {  
                DepartmentID = x.DepartmentID,  
                DepartmentName = x.DepartmentName  
            }).ToList(), JsonRequestBehavior.AllowGet);  
        }  
        
        
        $(document).ready(function () {  
       $.ajax({  
           type: "GET",  
           url: "/Users/getDepartment",  
           data: "{}",  
           success: function (data) {  
               var s = '<option value="-1">Please Select a Department</option>';  
               for (var i = 0; i < data.length; i++) {  
                   s += '<option value="' + data[i].DepartmentID + '">' + data[i].DepartmentName + '</option>';  
               }  
               $("#departmentsDropdown").html(s);  
           }  
       });  
   });  
   
   https://www.c-sharpcorner.com/article/crud-operation-in-asp-net-mvc-using-ajax-and-bootstrap/
   
   
    public class statemodel
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public int  Countryid {get; set; }
        public string ActionType { get; set; }
    }
    
    
    
  public class countrymodel
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string ActionType { get; set; }
    }  
    
    store proc----------
    
    Alter procedure CRUDUsers
@Id int=null,
@Name nvarchar(100)=null,
@Age nvarchar(100)=null,
@Gender nvarchar(100)=null,
@Email nvarchar(100)=null,
@Address nvarchar(100)=null,
@Country nvarchar(100)=null,
@State nvarchar(100)=null,
@ActionType nvarchar(100)

AS
Begin
IF @ActionType='Insert'
Begin
if Exists(select * from username where name=@Name)
Begin
	Select 0 as 'Success', 'Record already exisits' as 'MSG'
End
else if Exists(select * from username where email=@Email)
Begin
	Select 0 as 'Success', 'Record already exisits' as 'MSG'
End


Else
Begin
Insert into username(name,age,gender,email,[address],country,state)
Values(@Name,@Age,@Gender,@Email,@Address,@Country,@State)

Select 1 as 'Success', 'Record has been inserted successfully' as 'MSG'
ENd

END
ELSE IF @ActionType='getALL'
Begin
Select * from username
END

ELSE IF @ActionType='Update'
Begin
update username set name=@Name, age=@Age,gender=@Gender,email=@Email,address=@address,country=@Country ,state=@State where id=@id
Select 1 as 'Success', 'Record has been updated successfully' as 'MSG'
END

else if @ActionType='Delete'
begin
delete from username where id=@id
Select 1 as 'Success', 'Record has been deleted successfully' as 'MSG'
end
else if @ActionType='FillById'
begin
select * from username  where id=@id
end
else if @ActionType='AllDataFind'
begin 
select  countrytab.id,countrytab.name,statetab.countryid,statetab.name from countrytab
inner join statetab
on countrytab.id=statetab.countryid
end

end



https://tutorialslink.com/Articles/Bind-Country-State-and-City-Dropdownlist-in-Aspnet-MVC-using-ajax/21

<script src="~/script/jquery-1.7.1.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script async src="https://docs.opencv.org/master/opencv.js" type="text/javascript"></script>
    
    age calcultor
    
    <html>
<head>
<script>

function ageCalculator() {
    //collect input from HTML form and convert into date format
    var userinput = document.getElementById("DOB").value;
    var dob = new Date(userinput);
    
    //check user provide input or not
    if(userinput==null || userinput==''){
      document.getElementById("message").innerHTML = "**Choose a date please!";  
      return false; 
    } 
    
    //execute if user entered a date 
    else {
    //extract and collect only date from date-time string
    var mdate = userinput.toString();
    var dobYear = parseInt(mdate.substring(0,4), 10);
    var dobMonth = parseInt(mdate.substring(5,7), 10);
    var dobDate = parseInt(mdate.substring(8,10), 10);
    
    //get the current date from system
    var today = new Date();
    //date string after broking
    var birthday = new Date(dobYear, dobMonth-1, dobDate);
    
    //calculate the difference of dates
    var diffInMillisecond = today.valueOf() - birthday.valueOf();

    //convert the difference in milliseconds and store in day and year variable        
    var year_age = Math.floor(diffInMillisecond / 31536000000);
    var day_age = Math.floor((diffInMillisecond % 31536000000) / 86400000);

    //when birth date and month is same as today's date      
    if ((today.getMonth() == birthday.getMonth()) && (today.getDate() == birthday.getDate())) {
            alert("Happy Birthday!");
        }
        
     var month_age = Math.floor(day_age/30);        
     day_age = day_age % 30;
        
     var tMnt= (month_age + (year_age*12));
     var tDays =(tMnt*30) + day_age;
     
    //DOB is greater than today?s date, generate an error: Invalid date  
     if (dob>today) {
        document.getElementById("result").innerHTML = ("Invalid date input - Please try again!");
      }
      else {
        document.getElementById("result").innerHTML = year_age + " years " + month_age + " months " + day_age + " days"
      }
   }
}
</script>
</head>
<body>
<center>
<h2 style="color: #008CBA" align="center"> Calculate Age from Date of Birth <br> <br> </h2> 

<b> Enter Date of Birth: <input type=date id = DOB>  </b>
<span id = "message" style="color:red"> </span> <br><br>  
<button type="submit" onclick = "ageCalculator()"> Calculate age </button> <br><br>
<h3 style="color:#008CBA" id="result" align="center"></h3> 
</center>
</body>
</html>

 create database testCREATE TABLE [dbo].[tbl_registration] (    [Sr_no]    INT            IDENTITY (1, 1) NOT NULL,    [Email]    NVARCHAR (100) NULL,    [Password] NVARCHAR (MAX) NULL,    [Name]     VARCHAR (MAX)  NULL,    [Address]  NVARCHAR (MAX) NULL,    [City]     NVARCHAR (MAX) NULL,    CONSTRAINT [PK_tbl_registration] PRIMARY KEY CLUSTERED ([Sr_no] ASC));select*from[tbl_registration]insert into [tbl_registration]values('abc2@gmail.com','abc','farhan','qzd','ang') 

   
   
  login pro
  
  alter proc [dbo].[usp_UserLogin](@EmailId nvarchar(255),@Pwd varchar(50))
AS
SET XACT_ABORT ON;
BEGIN TRAN

   SET @Pwd= (SELECT CONVERT(VARCHAR(32),HashBytes('MD5', @Pwd),2))
   DECLARE @UserId uniqueidentifier=(SELECT UserId FROM [DBO].[UserDetails] where EmailId=@EmailId and Pwd=@Pwd);

   IF(@UserId is not null)
   BEGIN
        
		SELECT 'Login successfully' as MSG, 1 as Success
		DECLARE @SessionKey uniqueidentifier=NEWID();

		INSERT INTO [DBO].[LoginAudit](UserIdRef,SessionKey,LoginDateTime,LogOutDateTime )
		SELECT  UserId,FirstName,LastName,EmailId,@SessionKey as SessionKey FROM [DBO].[UserDetails] where EmailId=@EmailId and Pwd=@Pwd

		--SELECT  @UserId,@SessionKey as SessionKey ,GETDATE(),GETDATE()UserIdRef,FirstName,LastName,EmailId FROM [DBO].[UserDetails] where EmailId=@EmailId and Pwd=@Pwd
	END

 ELSE
    BEGIN
	  SELECT 'Invailid email or password ' as MSG, 0 as Success
	END

COMMIT TRAN


   
