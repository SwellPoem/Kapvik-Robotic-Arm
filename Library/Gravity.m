function G = Gravity(q_1, q_2, q_3, q_4)
g=3.71;

G=[                                                                 0;
    0.0418*cos(q_2 + q_3 + q_4) + 0.811*cos(q_2 + q_3) + 1.65*cos(q_2);
                    0.0418*cos(q_2 + q_3 + q_4) + 0.811*cos(q_2 + q_3);
                                          0.0418*cos(q_2 + q_3 + q_4)];
  
end