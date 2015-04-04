class String
  
  def essence
    strip.
    downcase.
    gsub(/[^a-z0-9]/,'')
  end

end