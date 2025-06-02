other.fuel = min(other.fuel + 50, other.fuel_max)
other.fuel_blink = 30
tocar_som(som_powerup)
instance_destroy()