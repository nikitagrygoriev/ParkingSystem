with PolyORB_HI.Output;

package body Parking is
    use PolyORB_HI.Output;

    procedure Enter is 
    begin
        Put_Line ("Enter");
    end Enter;

    procedure Leave is 
    begin
        Put_Line ("Leave");
    end Leave;

    procedure Counter is 
    begin
        Put_Line ("Counter");
    end Counter;
end Parking;