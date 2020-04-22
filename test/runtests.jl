using gss, Test

@testset "golden section " begin
	f,a,b = x->x^2,-20,20
	@test goldss(f,a,b)== (0.0,0.0)
	f,a,b = x-> cos(x),-3.5,0.
	@test goldss(f,a,b)==(-3.14,-1.0)
	f,a,b = x-> sin(x),0.,5.
	@test goldss(f,a,b)==(4.71,-1.0)
	f,a,b = x->x^4+3*x^3+x^2,-20.,20.
	@test goldss(f,a,b)==(-2.0,-4.0)
	
end