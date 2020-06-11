with PolyORB_HI.Output;

package body Parking is
    use PolyORB_HI.Output;


    type Licence_Plate_Array is array (Natural range <>) of License_Plate;

    Fake_counter_number: Car_Counter := 3;

    Cars : Licence_Plate_Array := (1234, 2345, 3456);
    Cars_Idx : Natural := 0;
    Cars_In : Licence_Plate_Array (0..2);
    Cars_In_Idx : Natural := 0;



    procedure Enter(Decrement_counter: out Car_Counter; Counter_number: Car_Counter; Camera_License_Plates: License_Plate) is 
	New_Car_In : License_Plate;
    begin
	if Fake_counter_number > 0 then
		New_Car_In := Cars(Cars_Idx);
		Decrement_counter := Fake_counter_number - 1;
		Put_Line ("Entering car: " &
		          License_Plate'Image (New_Car_In));
		if Cars_Idx < 2 then
			Cars_Idx:= Cars_Idx + 1;
		else 
			Cars_Idx:= 0;
		end if;
		Cars_In(Cars_In_Idx) := New_Car_In;
		Cars_In_Idx:= Cars_In_Idx + 1;
		Fake_counter_number := Decrement_counter;
	else
		Put_Line("Parking Full");
	end if;
    end Enter;

    procedure Leave(Increment_counter: out Car_Counter; Counter_number: Car_Counter; Camera_License_Plates: License_Plate) is 
	Car_Out : License_Plate;
    begin
	if Fake_counter_number < 3 then 
		Car_Out := Cars_In(Cars_In'First);
		Increment_counter := Fake_counter_number + 1;
		Put_Line ("Leaving car: " &
			License_Plate'Image (Car_Out));
		Cars_In(0..1) := Cars_In(1..2);
		--Cars_In'First := Null;
		Cars_In_Idx := Cars_In_Idx - 1;
		Fake_counter_number:= Increment_counter;
	else 
		Put_Line("No car to leave");
	end if;
	
    end Leave;

    procedure Counter(Increment: Car_Counter; Decrement: Car_Counter; Counter: out Car_Counter) is 
    begin
	
        Put_Line ("Free Spot Number: " & Car_Counter'Image (Fake_counter_number));
    end Counter;
end Parking;
