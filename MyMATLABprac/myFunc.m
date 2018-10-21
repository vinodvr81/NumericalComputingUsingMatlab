function [fibo] = myFunc(inp1,inp2)

    fibo = [inp1,inp2];

    while (fibo(end)<200)
        fiboNew = fibo(end)+fibo(end-1);
        fibo=[fibo, fiboNew];
    end
    fibo=fibo(1:end-1);
 
