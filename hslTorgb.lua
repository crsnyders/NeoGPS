
function hue2rgb(p, q, t)
    if(t < 0) then t = t+ 1 end;
    if(t > 1) then t =t - 1 end;
    if(t < 1/6) then  return p + (q - p) * 6 * t end;
    if(t < 1/2) then return q end;
    if(t < 2/3) then return p + (q - p) * (2/3 - t) * 6 end;
    return p;
end
function round(num) return math.floor(num+.5) end

function hslToRgb(h, s, l)
    local r = 0;
    local g = 0;
    local b = 0;

    if(s == 0) then
        r = l;
        g = l;
        b = l;
    else
        local q = 0;
          if(l < 0.5) then
            q  =l * (1 + s);
          else
            q = l + s - l * s;
          end
        local p = 2 * l - q;
        r = hue2rgb(p, q, h + 1/3);
        g = hue2rgb(p, q, h);
        b = hue2rgb(p, q, h - 1/3);
    end

    return {round(r * 255), round(g * 255),round( b * 255)};
end
