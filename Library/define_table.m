function TableMDH = define_table(q1, q2, q3, q4, a2, a3, d3)
% Description: this is a utility function which defines the MDH Table
% outside of the main enviroment

% ofs2 = pi/6;
% ofs3 = pi;

ofs2 = 0;
ofs3 = 0;

TableMDH = [0,      0,     0,     q1;...
            pi/2,   0,     0,     q2+ofs2;...
            0,      a2,    d3,    q3+ofs3;...
            0,      a3,    0,     q4];

show_table(TableMDH)

end