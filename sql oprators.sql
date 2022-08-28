
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
    }
    
    
    
  public class countrymodel
    {
        public int Id { get; set; }
        public string Name { get; set; }
    }  
    
    


