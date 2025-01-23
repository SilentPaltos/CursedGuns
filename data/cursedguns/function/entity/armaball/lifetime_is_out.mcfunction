
    # Уничтожение базовой сущности
    execute \
        on vehicle \
        run kill @s
    
    # Столкновение
    function cursedguns:entity/armaball/collide with entity @s item.components."minecraft:custom_data".cursedguns