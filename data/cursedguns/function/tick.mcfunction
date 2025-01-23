
    # Обновление бронешаров (снарядов бронестрела)
    execute \
        as @e[ predicate = cursedguns:entity/armaball ] \
        run function cursedguns:entity/armaball/tick

    # Обновление снарядов-бронелётов
    function cursedguns:entity/armafly/tick