classdef SphericalSmallCirclePolygon < handle
    
    %% Properties
    
    properties
        
        sphereRadius = 1
        
    end
    
    properties (SetAccess = protected)
                
        vertices
        definingPlanes
        
    end
    
    properties (Dependent)
        sides
        area
        perimeter
        N           % number of vertices
    end
    
    properties (Hidden, Access = private)
        
        vertexCoordinates
        
    end
    
    %% Methods
    
    methods
        
        %% Constructor
        
        function obj = SphericalSmallCirclePolygon(varargin)
            
            % Allow empty object
            if nargin==0
                return; end
        end
        
        %% Getters for dependent properties
        
        function n = get.N(obj)
            n = size(obj.vertices,1); end
        
        % Return all distances in an array
        function D = get.sides(obj)            
        end
       
        
        function P = get.perimeter(obj)
        end
        
        function A = get.area(obj)
        end
        
        
        %% Geometry
        
        function yn = containsPoint(obj, P)
        end
        
        
        %% Visualizations
        
        % plotter
        function show(varargin)
        end
        
        
        
        %% Overloaded functions
        
        function ie = isempty(obj)
        end
        
        
        %% Operations on multiple spherical polygons
        
        % Comparison
        
        function yn = eq(obj, other)
        end
        
        function yn = ne(obj, other)
        end
        
        
        
        
        % Inversion 
        
        function newObj = inv(obj)
        end
        
        function newObj = not(obj)
            newObj = obj.inv; end
        
        
        
        % Polygon union
        
        function newObj = union(obj, other)
        end
        
        function newObj = plus(obj, other)
            newObj = obj.union(other); end
        
        function newObj = or(obj, other)
            newObj = obj.union(other); end
        
        
        
        % Complement
        
        function newObj = complement(obj, other)
        end
        
        function newObj = minus(obj, other)
            newObj = obj.complement(other); end
        
        
        
        
        function newObj = intersect(obj, other)
        end
        
        function newObj = and(obj, other)
            newObj = obj.intersect(other); end
        
        
        % Symmetric difference
        function newObj = xor(obj, other)
        end
        
    end
    
    methods (Hidden, Access = protected)
        
        
        
    end
    
    methods (Static)
    end
    
    
    
end



