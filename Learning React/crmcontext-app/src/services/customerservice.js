//data
var customers = [
    { id: 1, email: 'snehal.koli@gmail.com',  firstname:"snehal", lastname:"koli",contactnumber:"9881735801" },
    { id: 2, email: 'sharyukoli@gmail.com', firstname:"sharyu", lastname:"koli",contactnumber:"9881735801" },
    { id: 3, email: 'pavankoli@gmail.com', firstname:"pavan", lastname:"koli",contactnumber:"9881735801" },
    { id: 4, email: 'sakshikoli@gmail.com',  firstname:"sakshi", lastname:"koli",contactnumber:"9881735801" },
    { id: 5, email: 'sanika.koli@gmail.com', firstname:"sanika", lastname:"koli",contactnumber:"9881735801" },
    { id: 6, email: 'dimple.koli@gmail.com', password:'dimple', firstname:"dimple", lastname:"Koli",contactnumber:"9881735801" },
    { id: 7, email: 'shreyas.koli@gmail.com', password:'shreyas', firstname:"shreyas", lastname:"Koli",contactnumber:"9881735801" },    
    { id: 8, email: 'gouri.koli@gmail.com', password:'gouri', firstname:"gouri", lastname:"koli",contactnumber:"9881735801" },
];

//Service
const CustomerService = {
    //service methods 
     getAll() {     
         return customers;
     },
 
     geCustomerById(id){
        let customer= customers.find( (theCustomers)=>(theCustomers.id ===id));
        return customer;
     },
     
     Update(theCustomer){
         customers=customers.filter(customer=>customers.id !==theCustomer.id);
         customers.push(theCustomer);
     },
 
     remove(id){
         customers=customer.filter(theCustomer=>theCustomer.id !==id);

     } 
 }
  
 export default CustomerService;