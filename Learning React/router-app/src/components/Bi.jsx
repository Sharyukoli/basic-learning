

import {Outlet,Link} from "react-router-dom";

const Bi=()=>
{
    return(
        <div>
        <h1>Buisness Inteligence</h1>
        <nav> 
            <ul> 
                <li><Link to= "linechart">LineChart</Link></li>
                <li><Link to= "piechart">PieChart</Link></li>
                <li><Link to= "barchart">BarChart</Link></li>
            </ul>
            </nav>
            <Outlet/>
        </div>
    );
}
export default Bi;