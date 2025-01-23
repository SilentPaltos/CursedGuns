
    # Трансформация в нужную сущность
    execute \
        as @e[ predicate = cursedguns:entity/armafly/untransformed ] \
        positioned as @s \
        run function cursedguns:entity/armafly/transform_untransformed