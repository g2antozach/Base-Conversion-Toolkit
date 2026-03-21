function result = mydec2baseb(decimal_num, base, ndigits)
    % MYDEC2BASEB Converts a decimal number to a system with base b (2-9).
    % Handles both integer and fractional parts.
    integer_part = floor(decimal_num);
    fractional_part = decimal_num - integer_part;

    % Convert parts using helper functions
    s = intdec2baseb(integer_part, base);
    d = fractdec2baseb(fractional_part, base, ndigits);

    result = strcat(s, d);
end

function f = intdec2baseb(i, b)
    % Helper: Successive division for integer part
    if i == 0, f = '0'; return; end
    f = '';
    while (i>0)
        n = mod(i, b);
        i = floor(i/b);
        f = strcat(num2str(n), f); 
    end
end

function g = fractdec2baseb(i, b, ndigits)
    % Helper: Successive multiplication for fractional part
    g = '';
    count = 0;
    while i > 0 && count < ndigits 
        n = floor(i*b);
        g = strcat(g, num2str(n));
        i = i*b - n;
        count = count + 1;
    end
    if isempty(g)
        g = ''; 
    else
        g = strcat('.', g);
    end
end
