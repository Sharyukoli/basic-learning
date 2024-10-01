
import {Routes, Route} from "react-router-dom";
import Services from "../components/standard/Services";
import Customers from "../components/crm/crud/customers";
import Customer from "../components/crm/crud/customer";
import CustomerInsert from "../components/crm/crud/CustomerInsert";
import CustomerUpdate from "../components/crm/crud/CustomerUpdate";
import CustomerDelete  from "../components/crm/crud/CustomerDelete";



const AppRoutes = () => (
    <Routes>
        <Route path="customers" element={<Customers/>}/>
        <Route path="customers/details/:id" element={<Customer/>}/>
        <Route path="customers/update/:id" element={ <CustomerUpdate/>}/>
        <Route path="customers/delete/:id" element={<CustomerDelete/>}/>
        <Route path="customers/insert" element={<CustomerInsert/>}/>
        
</Routes>
);
export default AppRoutes;