NullUser = Struct.new(:name) do
  def admin?
    false
  end
end
