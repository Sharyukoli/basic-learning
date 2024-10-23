SELECT * from Users;

use Greenhouseautomation;
--Application queries :
 1.Retrive all users  
 SELECT * from users; 
--2.Retrive Sensor Information with Readings  
 SELECT s.SensorID, s.SensorType, sr.ReadingValue, sr.ReadingTime  
 FROM Sensors s  
 JOIN SensorReadings sr ON s.SensorID =sr.SensorID   
 ORDER BY sr.ReadingTime DESC;

 ----3.Get Recent Sensor Readings for a Specific Sensor Type 
------4.Get Control Device Status 
------5.Get Control logs for a specific Device 
------6.Find Alerts for Threshold Viloations
SELECT sr.ReadingID , st.SensorType,st.ThresholdMin, st.ThresholdMax, sr.ReadingValue
FROM SensorReadings sr 
Join Sensor s ON sr. SensorID=s.SensorID
Join Settings st ON s. SensorType=st.SensorType



7.Count of Sensor Readings per Sensor Types


 8.Get users with Admin Role.

 SELECT * 
FROM Users
WHERE Role = 'Admin';

 9.Get Devices that are currently On
 s
 10.Recent actions taken by Control Devices 
11.Retrieve Settings for Sensor Types.
 12.Average Sensor Reading for Temperature.
 SELECT AVG(SR.ReadingValue) AS AverageTemperature
FROM SensorReadings SR
JOIN Sensors S ON SR.SensorID = S.SensorID
WHERE S.SensorType = 'Temperature';
 13.Find latest Reading for each Sensor.
 SELECT S.SensorID, S.SensorType, SR.ReadingValue, SR.ReadingTime
FROM Sensors S
JOIN SensorReadings SR ON S.SensorID = SR.SensorID
WHERE SR.ReadingTime = (
    SELECT MAX(SR2.ReadingTime)
    FROM SensorReadings SR2
    WHERE SR2.SensorID = SR.SensorID
);
