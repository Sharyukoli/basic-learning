import {BrowserRouter } from "react-router-dom";
import Navbar from "./NavBar";
import AppRoutes from "../routes/route";
function Container() {
    return (
      <div>
        <h2>Customer context application</h2>
        <BrowserRouter>
            <Navbar/>
            <hr/>
            <AppRoutes/>
        </BrowserRouter>
      </div>
    );
  }
  export default Container;