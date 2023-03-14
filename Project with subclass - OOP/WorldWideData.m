classdef WorldWideData < handle
    
    properties (Access = ?Covid)
        CountryName (1,1) string
        StateName (1,1) string
        CumulativeCases double {mustBeNumeric}
        CumulativeDeaths double {mustBeNumeric}
        DailyCases double {mustBeNumeric}
        DailyDeaths double {mustBeNumeric}
    end
    
    methods
        
        % Constructor
        function obj = WorldWideData(cntryName, sttName, css, dths, dlycss, dlydths)
            arguments
                cntryName (1,1) string
                sttName (1,1) string
                css double {mustBeNumeric}
                dths double {mustBeNumeric}
                dlycss double {mustBeNumeric}
                dlydths double {mustBeNumeric}
            end            
            obj.CountryName = cntryName;
            obj.StateName = sttName;
            obj.CumulativeCases = css; % row vector
            obj.CumulativeDeaths = dths; % row vector
            obj.DailyCases = dlycss; % row vector
            obj.DailyDeaths = dlydths; % row vector
        end
        
        % Defining "set methods" - These are called automatically
        function set.CountryName(obj,cntryName) 
            obj.CountryName = cntryName;
        end
        
        function set.StateName(obj,sttName) 
            obj.StateName = sttName;
        end
        
        function set.CumulativeCases(obj,css) 
            obj.CumulativeCases = css;
        end
        
        function set.CumulativeDeaths(obj,dths)
            obj.CumulativeDeaths = dths;
        end        
        
        function set.DailyCases(obj,dlycss) 
            obj.DailyCases = dlycss;
        end
        
        function set.DailyDeaths(obj,dlydths)
            obj.DailyDeaths = dlydths;
        end        
        % End of "set methods" functions"        
 
    end
    
end