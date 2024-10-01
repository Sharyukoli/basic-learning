import { Link } from "react-router-dom";
const Navbar = () => (
    <nav>
        <Link to="/customers">Customers</Link> 
    </nav>
);
export default Navbar;
//Implicit return
//When you use parentheses directly after the arrow, 
//it allows for an implicit return.
// This means that you can return a value without explicitly using the return keyword: