const bcrypt = require("bcrypt");
const password = "student123";
bcrypt.hash(password, 10, (err, hash) => {
if(err) {
console.error(err);
} else {
console.log("Password Hash:");
console.log(hash);
}
}
);