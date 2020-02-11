function assign5_main(f,x)
%Suppress Warnings
warning('off');

y = feval(f,x)
% Coefficients
disp("Coefficients for p(x):");
a = newton_interpolation(x, y, size(x,2)-1)
disp("Coefficients for S(x):");
[z, h, c, d] = cubic_spline(x,y)
disp("Coefficients for g(x)");
gx_c = least_squares_given_gx(x, y)

%four values
range = @(rx) -1 + (1/6)*(rx-1);
fv = zeros(1,13);
fmpv = zeros(1,13);
fmSv = zeros(1,13);
fmgv = zeros(1,13);
for i = 1:13
    fv(i) = feval(f,range(i));
    fmpv(i) = fv(i) - newton_itp_eval(range(i),x,a,size(x,2)-1);
    fmSv(i) = fv(i) - cubic_sp_eval(range(i),x,z,h,c,d);
    fmgv(i) = fv(i) - ls_given_gx_eval(range(i),gx_c);
end
disp("f(x): ");
fv
disp("f(x) - p(x): ")
fmpv
disp("f(x) - S(x): ")
fmSv
disp("f(x) - g(x): ")
fmgv

%plot
hold on;
fplot(f, [-1,1]);
fplot(@(xx) newton_itp_eval(xx,x,a,size(x,2)-1),[-1,1]);
fplot(@(xx) cubic_sp_eval(xx,x,z,h,c,d), [-1,1]);
fplot(@(x) ls_given_gx_eval(x,gx_c), [-1,1]);
legend({'f(x)','p(x): Newton I.','S(x): Cubic Spline','g(x): Least square'});
end