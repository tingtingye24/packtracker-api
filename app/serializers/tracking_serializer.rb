class TrackingSerializer
  include FastJsonapi::ObjectSerializer
  attributes :carrier, :tracking_number, :name

  def carrier
    object.carrier
  end
end
