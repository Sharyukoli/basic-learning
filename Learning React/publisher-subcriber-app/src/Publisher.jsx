import React, { useState } from 'react';
import emitter from './emitter';



function Publisher({}){
 
    const [text,setText]=useState('');
   
    const handleChange=(event)=>{
      setText(event.target.value);
    }
   
    const handleClick=(event)=>{
      emitter.emit('update', text);
    };
   
    return(
      <>
        <h3>Publisher</h3>
        <input type="text" value={text} onChange={handleChange}/>
        <button onClick={handleClick}>Publish Data</button>
      </>
    );
  };


  export default Publisher;
   