meters_to_feet <- function(val, ft_per_m = 3.28084){
  out <- val * ft_per_m
  return(out)
}

# Function to estimate stem volume, assuming a cylinder
# diam is...
stem_volume <- function(diam, height,
                        diam_mult = 0.1, height_mult = 100){
  if(any(diam <= 0)){
    stop("Diameter must be greater than zero")
  }
  if(any(height <= 0)){
    stop("Height must be greater than zero")
  }
  diam <- diam * diam_mult
  height <- height * height_mult
  radius <- diam / 2
  cross_area <- radius ^ 2 * pi
  volume = cross_area * height
  return(volume)
}

# function to find mean of all values above x
mean_above_x <- function(values, x = 9, na.rm = TRUE){
  val2 <- values[values > x]
  mn <- mean(val2, na.rm = na.rm)
  return(mn)
}