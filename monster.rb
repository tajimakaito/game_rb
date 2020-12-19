require "./character.rb"

class Monster < Character
  def attack(brave)
    puts "#{@name}の攻撃！"

    damage = damage(brave)
    cause_damage(target:brave,damage:damage)

  end

  def damage(target)
    @offense - target.defense / 2
  end

  def cause_damage(**params)
    target = params[:target]
    damage = params[:damage]

    target.hp -= damage
    target.hp = 0 if target.hp < 0
    puts "#{target.name}は#{damage}のダメージを受けた！"
  end
end
