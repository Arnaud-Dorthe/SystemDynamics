        block PPoll_Gen_Ind "Persistent pollution generated by industrial output"
          extends Interfaces.Nonlin_2;
          parameter Real frac_res_pers_mtl = 0.02 "Fraction of resources as persistent materials";
          parameter Real ind_mtl_emiss_fact(unit = "1/ton") = 0.1 "Industrial materials emission factor";
          parameter Real ind_mtl_toxic_index = 10.0 "Industrial materials toxicity index";
          output Real pc_res_use_mlt(unit = "ton/yr") "Per capita resource utilization multiplier";
          output Real population "Total population";
          output Real ppoll_gen_ind(unit = "1/yr") "Persistent pollution generated by industrial output";
        equation
          pc_res_use_mlt = u1;
          population = u2;
          ppoll_gen_ind = pc_res_use_mlt * population * frac_res_pers_mtl * ind_mtl_emiss_fact * ind_mtl_toxic_index;
          y = ppoll_gen_ind;
          annotation(
            Documentation(info = "<html>
This function is described on p.429 of <a href=\"http://www.pegasuscom.com/BookDetail.asp?BookQuery_Action=Find('ISBN','XDYGO')\">Dynamics of Growth in a Finite World</a>.
</html>"));
        end PPoll_Gen_Ind;