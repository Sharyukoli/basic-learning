import { useState, useEffect } from "react";
import { useParams,useNavigate } from "react-router-dom";
import CustomerService from "../../../services/customerservice";
 
const CustomerDelete=()=>{
    const { id } = useParams();
    const [customer, setcustomer] = useState({ id: 1, email: 'ravi.tambade@transflower.in',  firstname:"Ravi", lastname:"Tambade",contactnumber:"9881735801" });
    const navigate = useNavigate();
 
    useEffect(() => {
        const existingcustomer =CustomerService.geCustomerById( parseInt(id));
        if (existingcustomer) {
            setcustomer(existingcustomer);
        }
    }, [id]);
 
    const handleYes=()=>{
      let theExistingCustomerId= parseInt(id);
      CustomerService.remove(theExistingCustomerId);
      navigate("/customers");
    }
 
    const handleNotSure=()=>{  
        navigate("/");
    }
 
    return(
        <>
        <h3>Customer Details</h3>
         <p> Name: {customer.firstname} {customer.lastname}</p>
         <p>Email: {customer.email}</p>
         <p>Contact Nubmer:{customer.contactnumber}</p>
         <p>Location: {customer.location}</p>
         <h3>Do you want to delete  the Customer ?</h3>
         <button onClick={handleYes}> yes</button>
         <button onClick={handleNotSure}> Not Sure</button>
        </>
    )
};
 
export default CustomerDelete;