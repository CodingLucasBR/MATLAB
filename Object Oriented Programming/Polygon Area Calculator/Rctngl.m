classdef Rctngl < handle

% Project 'Polygon Area Calculator' written in MATLAB code.
    
    properties
        width double
        height double
    end
    
    methods
        
        function obj = Rctngl(w,h)
            arguments
                w (1,1) double {mustBePositive}
                h (1,1) double {mustBePositive}
            end
            obj.width = w;
            obj.height = h;
        end
        
        function set.width(obj, w)
            obj.width = w;
        end
        
        function set.height(obj, h)
            obj.height = h;
        end
        
        function area = get_area(obj)
            area = obj.width * obj.height;
        end
        
        function perimeter = get_perimeter(obj)
            perimeter = 2 * obj.width + 2 * obj.height;
        end
        
        function diagonal = get_diagonal(obj)
            diagonal = round((obj.width^2 + obj.height^2)^.5, 2);
        end
        
        function picture = get_picture(obj)
            if obj.width > 50 || obj.height > 50
                picture = "Too big for picture.";
            else
                for ii = 1:obj.height
                    for jj = 1:obj.width
                        fprintf('* ');
                     end
                    fprintf("\n");
                end
            end
        end
        
        function amount_inside = get_amount_inside(obj, obj2)
            area1 = obj.get_area();
            area2 = obj2.get_area();
            amount_inside = floor(area1/area2);
        end
        
    end
    
end
