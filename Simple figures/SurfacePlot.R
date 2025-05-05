# Create a grid of x and y values
x <- seq(-10, 10, length=50)
y <- seq(-10, 10, length=50)

# Create a matrix of z values based on x and y. We use sin function that is often used to denmostrate 3D plotting
z <- outer(x, y, function(x, y) sin(sqrt(x^2 + y^2))/sqrt(x^2 + y^2))

# Create color gradients based on z values
z_col <- cut(z, breaks = 50)
colors <- heat.colors(50)[z_col]

# 3D surface plot with color gradient
persp(x, y, z,
      col = colors,
      theta = 40, phi = 30,
      expand = 0.5,
      shade = 0.5,
      border = NA,
      xlab = "X-axis", ylab = "Y-axis", zlab = "Z-axis",
      main = "3D Surface Plot with Color Gradient")
