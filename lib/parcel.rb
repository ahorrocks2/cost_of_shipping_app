class Parcel
  define_method(:initialize) do |length, width, height|
    @length = length
    @width = width
    @height = height
  end

  define_method(:volume) do
    @volume = @length.*(@width).*(@height)
  end

  define_method(:cost_to_ship) do |distance, weight, speed|
    distance_cost = 0
    weight_cost = 0
    speed_cost = 0
    volume_cost = 0
    final_cost = 0

    if distance < 100
      distance_cost = distance_cost.+(1)
    elsif distance >= 100 && distance < 500
      distance_cost = distance_cost.+(3)
    else
      distance_cost = distance_cost.+(5)
    end

    if weight < 5
      weight_cost = weight_cost.+(1)
    elsif weight >= 5 && weight < 10
      weight_cost = weight_cost.+(3)
    else
      weight_cost = weight_cost.+(5)
    end

    if speed == "One Day"
      speed_cost = speed_cost.+(5)
    elsif speed == "Three Day"
      speed_cost = speed_cost.+(3)
    else
      speed_cost = speed_cost.+(1)
    end

    if self.volume() < 10
      volume_cost = volume_cost.+(1)
    elsif self.volume() >= 10 && self.volume() < 20
      volume_cost = volume_cost.+(3)
    else
      volume_cost = volume_cost.+(5)
    end

    final_cost = distance_cost.+weight_cost.+speed_cost.+volume_cost
    final_cost
  end
end
