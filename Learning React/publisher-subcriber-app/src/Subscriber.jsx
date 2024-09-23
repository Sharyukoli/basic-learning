import React, { useState, useEffect } from 'react';
import emitter from './emitter';


function Subscriber (){
 
    const [data, setData] = useState('');
   
    useEffect(()=>{
        const handleUpdate = (newData) => {
          setData(newData);
        };
   
        emitter.on('update',handleUpdate) //attach event handler
                                          //subscribe event handler
   
        return ()=>{
          emitter.off('update',handleUpdate); //detach event handler
                                              //unsubscribe event handler
          }
        }, []);
   
    return(
      <>
        <h3>Consumer</h3>
        <p>Data received  : {data} </p>
      </>
    );
  };

  export default Subscriber;
   