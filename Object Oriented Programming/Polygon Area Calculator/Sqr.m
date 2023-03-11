classdef Sqr < Rctngl
    
    methods
        
        function obj = Sqr(side)
            arguments
                side (1,1) double {mustBePositive}
            end
            obj@Rctngl(side,side)
        end   
        
        function set_side(obj, side)
            obj.width = side;
            obj.height = side;
        end
        
    end
    
end
        