// service logic for CRUD Operations
class ProductService{
    constructor(){
        this.products=[];
    }

    getAll(){
        return this.products;
    }

    getById(productId){
       const product= this.products.find(p=>p.id === productId)
       return product;
    }

    create(product){
        this.products.push(product);
    }
    onInsert(product){
        let product
    }

    
}
