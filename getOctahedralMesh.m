function [ P, tri ] = getOctahedralMesh()
	P = [ ...
		1 0 0 ; ...
		0 1 0 ; ...
		0 0 1 ; ...
		-1 0 0 ; ...
		0 -1 0 ; ...
		0 0 -1 ...
	]';
	P = P ./ repmat( sqrt( sum( P.^2 ) ), 3, 1 );
	P = P - repmat( mean( P, 2 ), 1, size( P, 2 ) );
	P = randomlyRotate( P );
	tri = [ ...
		3 1 2 ; ...
		3 2 4 ; ...
		3 4 5 ; ...
		3 5 1 ; ...
		6 2 1 ; ...
		6 4 2 ; ...
		6 5 4 ; ...
		6 1 5   ...
	];
end
