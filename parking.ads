
with PolyORB_HI_Generated.Deployment;
with PolyORB_HI_Generated.Types;

package Parking is

   use PolyORB_HI_Generated.Deployment;
   use PolyORB_HI_Generated.Types;

   procedure Enter(Decrement_counter: out Car_Counter; Counter_number: Car_Counter; Camera_License_Plates: License_Plate);

   procedure Leave(Increment_counter: out Car_Counter; Counter_number: Car_Counter; Camera_License_Plates: License_Plate);

   procedure Counter(Increment: Car_Counter; Decrement: Car_Counter; Counter: out Car_Counter);

end Parking;
