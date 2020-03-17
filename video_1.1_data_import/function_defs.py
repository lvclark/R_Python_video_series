from numpy import isnan, nan

def meters_to_feet(val):
    ft_per_m = 3.28084
    out = val * ft_per_m
    return out

def stem_volume(diam, height, diam_mult = 0.1, height_mult = 100):
    '''Estimate volume of a stem, assuming a cylinder.
    diam is diameter, height is height.
    Default assumes diam is in mm, height is in m, output is
    in cm cubed.
    Use _mult arguments to convert input units to output units.'''
    if diam <= 0:
        raise Exception("Diameter must be above zero.")
    if height <= 0:
        raise Exception("Height must be above zero.")
    pi = 3.14
    diam = diam * diam_mult
    height = height * height_mult
    radius = diam / 2
    cross_area = radius ** 2 * pi
    volume = cross_area * height
    return volume

def mean_above_x(values, x = 10, na_rm = True):
    '''Finds all values above x, and takes the mean of them.'''
    val2 = [v for v in values if v > x]
    mn = sum(val2) / len(val2)
    if not na_rm and any(isnan(values)):
        mn = nan
    return mn