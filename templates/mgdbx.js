var dbx = require('mg-dbx').dbx;
var db = new dbx();
var open = db.open({
           type: "Cache",
           host: "{{ hst }}",
           tcp_port: 7041,
           username: "_SYSTEM",
           password: "SYS",
           namespace: "SAMPLES"
         });
var result = db.version();
console.log("\nmg-dbx Version: " + db.version());
var person = db.mglobal("Sample.PersonS");
var spers = person.get(1);
console.log("The value of subscript 1 in global Sample.PersonS in the SAMPLES namespace is " + spers);
db.close();
