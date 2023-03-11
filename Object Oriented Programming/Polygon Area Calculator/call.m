% Creating an instance for class Rctngl and calling its methods
rt = Rctngl(10,5);
rt.get_area()
rt.width = 20; rt.height = 3;
rt.get_area()
rt.get_perimeter()
rt.get_diagonal()
rt.get_picture()

% Creating an instance for class Sqr and calling its method and parent
% methods
sq = Sqr(9);
sq.get_area()
sq.set_side(4);
sq.get_area()
sq.get_perimeter()
sq.get_diagonal()
sq.get_picture()

% Calling the last method with two objects
rt.get_amount_inside(sq) % Preferred use for handle classes
get_amount_inside(rt,sq) % Another way of calling - Preferred use for value classes
