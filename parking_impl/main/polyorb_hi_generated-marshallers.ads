--------------------------------------------------------
--  This file was automatically generated by Ocarina  --
--  Do NOT hand-modify this file, as your             --
--  changes will be lost when you re-run Ocarina      --
--------------------------------------------------------
pragma Style_Checks
 ("NM32766");

with PolyORB_HI_Generated.Activity;
with PolyORB_HI.Messages;
with PolyORB_HI_Generated.Types;

package PolyORB_HI_Generated.Marshallers is

  --  Marshallers for interface type of thread enter_analyze.impl

  procedure Marshall
   (Data : PolyORB_HI_Generated.Activity.parking_enter_analyze_impl_Interface;
    Message : in out PolyORB_HI.Messages.Message_Type);

  procedure Unmarshall
   (Port : PolyORB_HI_Generated.Activity.parking_enter_analyze_impl_Port_Type;
    Data : out PolyORB_HI_Generated.Activity.parking_enter_analyze_impl_Interface;
    Message : in out PolyORB_HI.Messages.Message_Type);

  --  Marshallers for DATA type license_plate

  procedure Marshall
   (Data : PolyORB_HI_Generated.Types.License_Plate;
    Message : in out PolyORB_HI.Messages.Message_Type);

  procedure Unmarshall
   (Data : out PolyORB_HI_Generated.Types.License_Plate;
    Message : in out PolyORB_HI.Messages.Message_Type);

  --  Marshallers for DATA type car_counter

  procedure Marshall
   (Data : PolyORB_HI_Generated.Types.Car_Counter;
    Message : in out PolyORB_HI.Messages.Message_Type);

  procedure Unmarshall
   (Data : out PolyORB_HI_Generated.Types.Car_Counter;
    Message : in out PolyORB_HI.Messages.Message_Type);

  --  Marshallers for interface type of thread leave_analyze.impl

  procedure Marshall
   (Data : PolyORB_HI_Generated.Activity.parking_leave_analyze_impl_Interface;
    Message : in out PolyORB_HI.Messages.Message_Type);

  procedure Unmarshall
   (Port : PolyORB_HI_Generated.Activity.parking_leave_analyze_impl_Port_Type;
    Data : out PolyORB_HI_Generated.Activity.parking_leave_analyze_impl_Interface;
    Message : in out PolyORB_HI.Messages.Message_Type);

  --  Marshallers for interface type of thread counter.impl

  procedure Marshall
   (Data : PolyORB_HI_Generated.Activity.parking_counter_impl_Interface;
    Message : in out PolyORB_HI.Messages.Message_Type);

  procedure Unmarshall
   (Port : PolyORB_HI_Generated.Activity.parking_counter_impl_Port_Type;
    Data : out PolyORB_HI_Generated.Activity.parking_counter_impl_Interface;
    Message : in out PolyORB_HI.Messages.Message_Type);

end PolyORB_HI_Generated.Marshallers;
