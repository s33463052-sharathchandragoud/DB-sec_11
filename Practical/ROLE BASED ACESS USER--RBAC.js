// ROLE BASED ACESS USER-->RBAC
const user = {
name: "Ravi",
role: "student"
};

if (user.role === "admin"){
console.log("Admin access granted");
}else{
console.log("Access denied");
}