function [a b c]=add(i1,i2)
[sr sg sb]=covar(i1,i2);
[sr1 sg1 sb1]=stadard_deviation(i1);
[sr2 sg2 sb2]=stadard_deviation(i2);
a=sr/(sr1*sr2);
b=sg/(sg1*sg2);
c=sb/(sb1*sb2);
