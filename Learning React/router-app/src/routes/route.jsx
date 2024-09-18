
import {Routes, Route} from "react-router-dom";
import Home from "../components/Home";
import Aboutus from "../components/Aboutus";
import Contact from "../components/Contact";
import Services from "../components/Services";
import List from "../components/List";
import Login from "../components/Login";
import Helpus from "../components/Helpus";
import Dashboard from "../components/Dashboard";
import Bi from "../components/Bi";
import LineChart from "../components/LineChart";
import PieChart from "../components/PieChart";
import BarChart from "../components/BarChart";
import Profile from "../components/Profile";
import Settings from "../components/Settings";



const AppRoutes = () => (
    <Routes>
        <Route path="/" element={<Home/>}/>
        <Route path="/aboutus" element={<Aboutus/>}/>
        <Route path="/contact" element={<Contact/>}/>
        <Route path="/services" element={<Services/>}/>
        <Route path="/list" element={<List/>}/>
        <Route path="/login" element= {<Login/>}/>
        <Route path="/helpus" element={<Helpus/>}/>
        

        <Route path="/dashboard" element={<Dashboard/>}>
            {/*  Nested Routes  */}
            <Route path="profile" element={<Profile/>} />
            <Route path="settings" element={<Settings/>} />
        </Route>
 
        <Route path="/bi" element={<Bi/>}>
            {/*  Nested Routes  */}
            <Route path="barchart" element={<BarChart/>} />
            <Route path="linechart" element={<LineChart/>} />
            <Route path="piechart" element={<PieChart/>} />
        </Route>
</Routes>
)
export default AppRoutes;