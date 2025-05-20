$ mongo
MongoDB shell version v3.6.8
connecting to: mongodb://127.0.0.1:27017
Implicit session: session { "id" : UUID("8e44a756-c5a0-475b-b6a0-f22e3b9737a8") }
MongoDB server version: 3.6.8
Server has startup warnings: 
2025-05-20T13:34:55.578+0530 I STORAGE  [initandlisten] 
2025-05-20T13:34:55.578+0530 I STORAGE  [initandlisten] ** WARNING: Using the XFS filesystem is strongly recommended with the WiredTiger storage engine
2025-05-20T13:34:55.579+0530 I STORAGE  [initandlisten] **          See http://dochub.mongodb.org/core/prodnotes-filesystem
2025-05-20T13:34:59.977+0530 I CONTROL  [initandlisten] 
2025-05-20T13:34:59.978+0530 I CONTROL  [initandlisten] ** WARNING: Access control is not enabled for the database.
2025-05-20T13:34:59.978+0530 I CONTROL  [initandlisten] **          Read and write access to data and configuration is unrestricted.
2025-05-20T13:34:59.978+0530 I CONTROL  [initandlisten] 
> use gopika;
switched to db gopika
> db
gopika
> db.drop database();
2025-05-20T13:50:34.055+0530 E QUERY    [thread1] SyntaxError: missing ; before statement @(shell):1:8
> db.dropdatabase();
2025-05-20T13:51:00.591+0530 E QUERY    [thread1] TypeError: db.dropdatabase is not a function :
@(shell):1:1
> db.dropDatabase();
{ "ok" : 1 }
> db
gopika
> db.dropgopika();
2025-05-20T13:52:17.703+0530 E QUERY    [thread1] TypeError: db.dropgopika is not a function :
@(shell):1:1
> db;
gopika
> db.createCollection("student"); 
{ "ok" : 1 }
> db.createCollection("teacher");
{ "ok" : 1 }
> show collections;
student
teacher
> db.teacher.drop();
true
> show collections;
student
> db.student.insert({"rollno":1,"name":"aby"});
WriteResult({ "nInserted" : 1 })
> db.student.insert({"rollno":2,"name":"athira"});
WriteResult({ "nInserted" : 1 })
> db.student.insert({"rollno":3,"name":"akash"});
WriteResult({ "nInserted" : 1 })
> db.student.insert({"rollno":3,"name":"akash","address":"aroor"});
WriteResult({ "nInserted" : 1 })
> db.student.find();
{ "_id" : ObjectId("682c3d1d29d37a175785106e"), "rollno" : 1, "name" : "aby" }
{ "_id" : ObjectId("682c3d5029d37a175785106f"), "rollno" : 2, "name" : "athira" }
{ "_id" : ObjectId("682c3d6429d37a1757851070"), "rollno" : 3, "name" : "akash" }
{ "_id" : ObjectId("682c3da429d37a1757851071"), "rollno" : 3, "name" : "akash", "address" : "aroor" }
> db.student.find().pretty();
{
	"_id" : ObjectId("682c3d1d29d37a175785106e"),
	"rollno" : 1,
	"name" : "aby"
}
{
	"_id" : ObjectId("682c3d5029d37a175785106f"),
	"rollno" : 2,
	"name" : "athira"
}
{
	"_id" : ObjectId("682c3d6429d37a1757851070"),
	"rollno" : 3,
	"name" : "akash"
}
{
	"_id" : ObjectId("682c3da429d37a1757851071"),
	"rollno" : 3,
	"name" : "akash",
	"address" : "aroor"
}
> db.student.insert({ "id1"
... db.student.find().pretty();
... 
... exit;
... 
... mon
... 
... 
 >db.student.insert({"_id":3,"name":"akash","address":"aroor"});
WriteResult({ "nInserted" : 1 })
> db.student.find().pretty();
{
	"_id" : ObjectId("682c3d1d29d37a175785106e"),
	"rollno" : 1,
	"name" : "aby"
}
{
	"_id" : ObjectId("682c3d5029d37a175785106f"),
	"rollno" : 2,
	"name" : "athira"
}
{
	"_id" : ObjectId("682c3d6429d37a1757851070"),
	"rollno" : 3,
	"name" : "akash"
}
{
	"_id" : ObjectId("682c3da429d37a1757851071"),
	"rollno" : 3,
	"name" : "akash",
	"address" : "aroor"
}
{ "_id" : 3, "name" : "akash", "address" : "aroor" }
> db.student.find().pretty().limit(3);
{
	"_id" : ObjectId("682c3d1d29d37a175785106e"),
	"rollno" : 1,
	"name" : "aby"
}
{
	"_id" : ObjectId("682c3d5029d37a175785106f"),
	"rollno" : 2,
	"name" : "athira"
}
{
	"_id" : ObjectId("682c3d6429d37a1757851070"),
	"rollno" : 3,
	"name" : "akash"
}
> db.student.find().pretty().skip(2);
{
	"_id" : ObjectId("682c3d6429d37a1757851070"),
	"rollno" : 3,
	"name" : "akash"
}
{
	"_id" : ObjectId("682c3da429d37a1757851071"),
	"rollno" : 3,
	"name" : "akash",
	"address" : "aroor"
}
{ "_id" : 3, "name" : "akash", "address" : "aroor" }
> db.student.find().pretty().limit(1).skip(2);
{
	"_id" : ObjectId("682c3d6429d37a1757851070"),
	"rollno" : 3,
	"name" : "akash"
}
> db.student.remove({"rollno":1});
WriteResult({ "nRemoved" : 1 })
> show collections;
student
> db.student.find();
{ "_id" : ObjectId("682c3d5029d37a175785106f"), "rollno" : 2, "name" : "athira" }
{ "_id" : ObjectId("682c3d6429d37a1757851070"), "rollno" : 3, "name" : "akash" }
{ "_id" : ObjectId("682c3da429d37a1757851071"), "rollno" : 3, "name" : "akash", "address" : "aroor" }
{ "_id" : 3, "name" : "akash", "address" : "aroor" }
> db.student.update({"rollno":2},{$set:{"name":"gopika"}});
WriteResult({ "nMatched" : 1, "nUpserted" : 0, "nModified" : 1 })
> db.student.find();
{ "_id" : ObjectId("682c3d5029d37a175785106f"), "rollno" : 2, "name" : "gopika" }
{ "_id" : ObjectId("682c3d6429d37a1757851070"), "rollno" : 3, "name" : "akash" }
{ "_id" : ObjectId("682c3da429d37a1757851071"), "rollno" : 3, "name" : "akash", "address" : "aroor" }
{ "_id" : 3, "name" : "akash", "address" : "aroor" }
> db.student.find.sort({"name":1});
2025-05-20T14:27:46.395+0530 E QUERY    [thread1] TypeError: db.student.find.sort is not a function :
@(shell):1:1
> db.student.find().sort({"name":1});
{ "_id" : ObjectId("682c3d6429d37a1757851070"), "rollno" : 3, "name" : "akash" }
{ "_id" : ObjectId("682c3da429d37a1757851071"), "rollno" : 3, "name" : "akash", "address" : "aroor" }
{ "_id" : 3, "name" : "akash", "address" : "aroor" }
{ "_id" : ObjectId("682c3d5029d37a175785106f"), "rollno" : 2, "name" : "gopika" }
> db.student.find().sort({"name":-1});
{ "_id" : ObjectId("682c3d5029d37a175785106f"), "rollno" : 2, "name" : "gopika" }
{ "_id" : ObjectId("682c3d6429d37a1757851070"), "rollno" : 3, "name" : "akash" }
{ "_id" : ObjectId("682c3da429d37a1757851071"), "rollno" : 3, "name" : "akash", "address" : "aroor" }
{ "_id" : 3, "name" : "akash", "address" : "aroor" }
> db.student.insert({"rollno":4,"name":"anju"});
WriteResult({ "nInserted" : 1 })
> db.student.insert({"rollno":5,"name":"ammu"});
WriteResult({ "nInserted" : 1 })
> db.student.insert({"rollno":6,"name":"aswin"});
WriteResult({ "nInserted" : 1 })
> db.student.find();
{ "_id" : ObjectId("682c3d5029d37a175785106f"), "rollno" : 2, "name" : "gopika" }
{ "_id" : ObjectId("682c3d6429d37a1757851070"), "rollno" : 3, "name" : "akash" }
{ "_id" : ObjectId("682c3da429d37a1757851071"), "rollno" : 3, "name" : "akash", "address" : "aroor" }
{ "_id" : 3, "name" : "akash", "address" : "aroor" }
{ "_id" : ObjectId("682c44e429d37a1757851072"), "rollno" : 4, "name" : "anju" }
{ "_id" : ObjectId("682c44f129d37a1757851073"), "rollno" : 5, "name" : "ammu" }
{ "_id" : ObjectId("682c450229d37a1757851074"), "rollno" : 6, "name" : "aswin" }
> db.student.find({"rollno":5});
{ "_id" : ObjectId("682c44f129d37a1757851073"), "rollno" : 5, "name" : "ammu" }
> db.student.insert({"rollno":7,"name":"achu"});
WriteResult({ "nInserted" : 1 })
> db.student.insert({"rollno":8,"name":"eby"});
WriteResult({ "nInserted" : 1 })
> db.student.find();
{ "_id" : ObjectId("682c3d5029d37a175785106f"), "rollno" : 2, "name" : "gopika" }
{ "_id" : ObjectId("682c3d6429d37a1757851070"), "rollno" : 3, "name" : "akash" }
{ "_id" : ObjectId("682c3da429d37a1757851071"), "rollno" : 3, "name" : "akash", "address" : "aroor" }
{ "_id" : 3, "name" : "akash", "address" : "aroor" }
{ "_id" : ObjectId("682c44e429d37a1757851072"), "rollno" : 4, "name" : "anju" }
{ "_id" : ObjectId("682c44f129d37a1757851073"), "rollno" : 5, "name" : "ammu" }
{ "_id" : ObjectId("682c450229d37a1757851074"), "rollno" : 6, "name" : "aswin" }
{ "_id" : ObjectId("682c459c29d37a1757851075"), "rollno" : 7, "name" : "achu" }
{ "_id" : ObjectId("682c45ae29d37a1757851076"), "rollno" : 8, "name" : "eby" }
> db.student.find({"rollno":5});
{ "_id" : ObjectId("682c44f129d37a1757851073"), "rollno" : 5, "name" : "ammu" }
> db.student.find({"rollno":{$ne:5}});
{ "_id" : ObjectId("682c3d5029d37a175785106f"), "rollno" : 2, "name" : "gopika" }
{ "_id" : ObjectId("682c3d6429d37a1757851070"), "rollno" : 3, "name" : "akash" }
{ "_id" : ObjectId("682c3da429d37a1757851071"), "rollno" : 3, "name" : "akash", "address" : "aroor" }
{ "_id" : 3, "name" : "akash", "address" : "aroor" }
{ "_id" : ObjectId("682c44e429d37a1757851072"), "rollno" : 4, "name" : "anju" }
{ "_id" : ObjectId("682c450229d37a1757851074"), "rollno" : 6, "name" : "aswin" }
{ "_id" : ObjectId("682c459c29d37a1757851075"), "rollno" : 7, "name" : "achu" }
{ "_id" : ObjectId("682c45ae29d37a1757851076"), "rollno" : 8, "name" : "eby" }
> db.student.find({"rollno":{$lt:5}});
{ "_id" : ObjectId("682c3d5029d37a175785106f"), "rollno" : 2, "name" : "gopika" }
{ "_id" : ObjectId("682c3d6429d37a1757851070"), "rollno" : 3, "name" : "akash" }
{ "_id" : ObjectId("682c3da429d37a1757851071"), "rollno" : 3, "name" : "akash", "address" : "aroor" }
{ "_id" : ObjectId("682c44e429d37a1757851072"), "rollno" : 4, "name" : "anju" }
> db.student.find({"rollno":{$gt:5}});
{ "_id" : ObjectId("682c450229d37a1757851074"), "rollno" : 6, "name" : "aswin" }
{ "_id" : ObjectId("682c459c29d37a1757851075"), "rollno" : 7, "name" : "achu" }
{ "_id" : ObjectId("682c45ae29d37a1757851076"), "rollno" : 8, "name" : "eby" }
> db.student.find({"rollno":{$gte:5}});
{ "_id" : ObjectId("682c44f129d37a1757851073"), "rollno" : 5, "name" : "ammu" }
{ "_id" : ObjectId("682c450229d37a1757851074"), "rollno" : 6, "name" : "aswin" }
{ "_id" : ObjectId("682c459c29d37a1757851075"), "rollno" : 7, "name" : "achu" }
{ "_id" : ObjectId("682c45ae29d37a1757851076"), "rollno" : 8, "name" : "eby" }
> db.student.find({"rollno":{$lte:5}});
{ "_id" : ObjectId("682c3d5029d37a175785106f"), "rollno" : 2, "name" : "gopika" }
{ "_id" : ObjectId("682c3d6429d37a1757851070"), "rollno" : 3, "name" : "akash" }
{ "_id" : ObjectId("682c3da429d37a1757851071"), "rollno" : 3, "name" : "akash", "address" : "aroor" }
{ "_id" : ObjectId("682c44e429d37a1757851072"), "rollno" : 4, "name" : "anju" }
{ "_id" : ObjectId("682c44f129d37a1757851073"), "rollno" : 5, "name" : "ammu" }
> db.student.find({"name":*a});
2025-05-20T14:45:52.472+0530 E QUERY    [thread1] SyntaxError: expected expression, got '*' @(shell):1:24
> db.student.find({"name":*A});
2025-05-20T14:46:01.425+0530 E QUERY    [thread1] SyntaxError: expected expression, got '*' @(shell):1:24
> db.student.find({"name":*/A/});
2025-05-20T14:46:17.897+0530 E QUERY    [thread1] SyntaxError: expected expression, got '*' @(shell):1:24
> db.student.find({"name":*/a/});
2025-05-20T14:46:25.657+0530 E QUERY    [thread1] SyntaxError: expected expression, got '*' @(shell):1:24
> db.student.find({"name":/*a/});
2025-05-20T14:46:59.993+0530 E QUERY    [thread1] SyntaxError: unterminated comment @(shell):1:24
> db.student.find({"name":/*A/});
2025-05-20T14:47:06.432+0530 E QUERY    [thread1] SyntaxError: unterminated comment @(shell):1:24
> db.student.find({"name":/^A/});
> db.student.find({"name":/^a/});
{ "_id" : ObjectId("682c3d6429d37a1757851070"), "rollno" : 3, "name" : "akash" }
{ "_id" : ObjectId("682c3da429d37a1757851071"), "rollno" : 3, "name" : "akash", "address" : "aroor" }
{ "_id" : 3, "name" : "akash", "address" : "aroor" }
{ "_id" : ObjectId("682c44e429d37a1757851072"), "rollno" : 4, "name" : "anju" }
{ "_id" : ObjectId("682c44f129d37a1757851073"), "rollno" : 5, "name" : "ammu" }
{ "_id" : ObjectId("682c450229d37a1757851074"), "rollno" : 6, "name" : "aswin" }
{ "_id" : ObjectId("682c459c29d37a1757851075"), "rollno" : 7, "name" : "achu" }
> db.student.find({$and:[{"rollno":2},{"name":"anju"}]});
> db.student.find({$and:[{"rollno":4},{"name":"anju"}]});
{ "_id" : ObjectId("682c44e429d37a1757851072"), "rollno" : 4, "name" : "anju" }
> db.student.find({$or:[{"rollno":4},{"name":"anju"}]});
{ "_id" : ObjectId("682c44e429d37a1757851072"), "rollno" : 4, "name" : "anju" }
> 

