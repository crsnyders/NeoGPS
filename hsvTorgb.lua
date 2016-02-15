function round(num) return math.floor(num+.5) end

HSVtoRGB = function(h,s,v)
  r = 0
  g =0
  b =0;
  i=0;
  f = 0;
  p = 0;
  q = 0;
  t = 0;

  h = math.max(0, math.min(360, h))
  s = math.max(0, math.min(100, s))
  v = math.max(0, math.min(100, v))

  s = s/100;
  v = v/100;

  if s ==o then
    r = v;
    g = v;
    b = v;
    return {round(r*255),round(g*255),round(b*255)}
  end

  h = h/100;
  i = math.floor(h);
  f= h-i;
  p = v * (1-s);
  q = v * ( 1 - s * f);
  t = v * (1 - s * (1-f));

  if i == 0 then
    r = v; g = t; b = p;
  elseif i == 1 then
    r = q; g = v; b = p;
  elseif i == 2 then
    r = p; g = v; b = t;
  elseif i == 3 then
    r = p; g = q; b = v;
  elseif i == 4 then
    r = t; g = p; b = v;
  else
    r = v; g = p; b = q;
  end

  return {round(r*255),round(g*255),round(b*255)}
end
