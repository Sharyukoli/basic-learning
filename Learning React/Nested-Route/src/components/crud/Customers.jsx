import {Link} from  "react-router-dom";

const Customers =()=>
{
   
    return( 
        <>
        <h3>top10 customers</h3>
        <ul>
            
                  <li>Sharyu   &nbsp; &nbsp; &nbsp;
            
                <Link to={'/customers/${customer.id}'}>Details |</Link>
                <Link to={'/customers/Update/${customer.id}'}>Update</Link> |
                <Link to={'/customers/delete/${cutomer.id}'}>Delete</Link>
            </li>


        
            <li>shweta  &nbsp; &nbsp;&nbsp;
            <Link to={'/customers/${customer.id}'}>Details |</Link>
                <Link to={'/customers/Update/${customer.id}'}>Update</Link> |
                <Link to={'/customers/delete/${cutomer.id}'}>Delete</Link>
            </li>

            <li>sakshi  &nbsp; &nbsp; &nbsp;
            <Link to={'/customers/${customer.id}'}>Details |</Link>
                <Link to={'/customers/Update/${customer.id}'}>Update</Link> |
                <Link to={'/customers/delete/${cutomer.id}'}>Delete</Link>
            </li>

            <li>sanika &nbsp; &nbsp; &nbsp;
            <Link to={'/customers/${customer.id}'}>Details |</Link>
                <Link to={'/customers/Update/${customer.id}'}>Update</Link> |
                <Link to={'/customers/delete/${cutomer.id}'}>Delete</Link>
            </li>
        </ul>
        </>
        );
}
 
export default Customers;