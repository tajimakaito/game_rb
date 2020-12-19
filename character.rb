class Character
  attr_reader :name,:offense,:defense
  attr_accessor :hp

  def initialize(**params)
    @name = params[:name]
    @hp = params[:hp]
    @offense = params[:offense]
    @defense = params[:defense]
  end

  def attack(character)
    puts "#{@name}の攻撃！"

    damage = damage(character)
    cause_damage(target:character,damage:damage)

  end

  def damage(target)
    @offense - target.defense / 2
  end
end
