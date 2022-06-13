class Contador
  @qtd = 0

  class << self
    attr_reader :qtd
  end

  def self.incrementa
    @qtd += 1
  end
end
