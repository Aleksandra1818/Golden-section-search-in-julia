module gss

function goldss(f,a,b;ϵ=1e-6,τ=0.618)
    fa,fb=f(a),f(b)
    x1,x2=b-(τ)*(b-a),a+(τ)*(b-a)
    err=Inf
    while err>ϵ
        if f(x2)>f(x1)
            b=x2
            x2=x1
            x1=a+(1-τ)*(b-a)
        elseif f(x2)<f(x1)
            a=x1
            x1=x2
            x2=b-(1-τ)*(b-a)
        else
            a=(x1+x2)/2
            b=a
        end
        err=2*abs((b-a)/(b+a))
    end
    xsr=(x1+x2)/2
    wart=f(xsr)
    return(round(xsr,digits=2),round(wart,digits=3))
end

export goldss

end # module
