include Math

def slope(base)
  log(base+1, 1.6)**2 / 50.0 + 0.5
end

def intercept(base)
  log(base/3.0 + 1, 1.6)**2
end

def defense_f(base, offset)
  slope = slope(base)
  intercept = intercept(base)

  if offset >= 0
    slope * offset + intercept
  else
    intercept * (base+offset) / base
  end
end

def defense(base, offset)
  df = defense_f(base, offset)

  if offset >= 0
    if offset % 2 == 0
      df.round
    else
      df.floor
    end
  else
    df.round
  end
end
