function fis=updateFLC(fis, fl_params)
        
     In_PV1=sort(fl_params(1:3));
     In_PV2=sort(fl_params(4:6));
     In_PV3=sort(fl_params(7:9));

     In_Wind1=sort(fl_params(10:12));
     In_Wind2=sort(fl_params(13:15));
     In_Wind3=sort(fl_params(16:18));
     
     Out_PD1=sort(fl_params(19:21));
     Out_PD2=sort(fl_params(22:24));

     In2_SOC1=sort(fl_params(25:27));
     In2_SOC2=sort(fl_params(28:30));
     In2_SOC3=sort(fl_params(31:33));

     In3_LD1=sort(fl_params(34:36));
     In3_LD2=sort(fl_params(37:39));
     In3_LD3=sort(fl_params(40:42));
     
     Out2_Battery1=sort(fl_params(43:45));
     Out2_Battery2=sort(fl_params(46:48));
     Out2_Battery3=sort(fl_params(49:51));


    fis.Inputs(1).MembershipFunctions(1).Parameters= In_PV1;
    fis.Inputs(1).MembershipFunctions(2).Parameters= In_PV2;
    fis.Inputs(1).MembershipFunctions(3).Parameters= In_PV3;
    
    fis.Inputs(2).MembershipFunctions(1).Parameters= In2_SOC1;
    fis.Inputs(2).MembershipFunctions(2).Parameters= In2_SOC2;
    fis.Inputs(2).MembershipFunctions(3).Parameters= In2_SOC3;

    fis.Inputs(3).MembershipFunctions(1).Parameters= In3_LD1;
    fis.Inputs(3).MembershipFunctions(2).Parameters= In3_LD2;
    fis.Inputs(3).MembershipFunctions(3).Parameters= In3_LD3;

    fis.Inputs(4).MembershipFunctions(1).Parameters= In_Wind1;
    fis.Inputs(4).MembershipFunctions(2).Parameters= In_Wind2;
    fis.Inputs(4).MembershipFunctions(3).Parameters= In_Wind3;

    fis.Outputs(1).MembershipFunctions(1).Parameters= Out_PD1;
    fis.Outputs(1).MembershipFunctions(2).Parameters= Out_PD2;

    fis.Outputs(2).MembershipFunctions(1).Parameters= Out2_Battery1;
    fis.Outputs(2).MembershipFunctions(2).Parameters= Out2_Battery2;
    fis.Outputs(2).MembershipFunctions(3).Parameters= Out2_Battery3;

end
