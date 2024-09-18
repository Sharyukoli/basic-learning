
function  onInsert(){
    let id =parseInt(document.getElementById('id').value);
    let title =document.getElementById('title').value;
    let description =document.getElementById('description').value;
    let price =parseInt(document.getElementById('price').value);
    let quantity =parseInt(document.getElementById('quantity').value);
    

    let product={
        id:id,
        title:title,
        description:description,
        price:price,
        quantity:quantity
    }

}