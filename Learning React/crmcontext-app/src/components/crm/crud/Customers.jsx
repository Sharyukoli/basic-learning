import { Link } from "react-router-dom";
import CustomerService from "../../../services/customerservice";


const Customers=()=>{

    const customers= CustomerService.getAll();

    return(
        <>
      
        <Link to={`/customers/insert`} >Add new Customer</Link> 
          
            <ul>
                {
                    customers.map(customer=>(
                        <li key ={customer.id}>{customer.firstname}  { customer.lastname} <Link to={`/customers/details/${customer.id}`} >Details</Link> |
                                                                     <Link to={`/customers/update/${customer.id}`} >Update</Link> |
                                                                     <Link to={`/customers/delete/${customer.id}`} >Delete</Link>
                        </li>
                    ))
                }
                
             </ul>
        </>
    )
};

export default Customers;