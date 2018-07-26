function FE = XO2FE(XO)
FE = [0.01, 0.01, 0.01, 0.01, 0.01, 0.01];
for j = 1:6
    T = XO(1,j);
    if strcmp(T,'x')
        FE(1,j) = 1.0;
    end
end

end

