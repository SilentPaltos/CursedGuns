    
    function c50:this_entity/get/line_of_sight_vector
    data \
        modify storage cursedguns:function macro_input.Motion \
        set value [0d,0d,0d]
    execute \
        store result storage cursedguns:function macro_input.Motion[0] double 0.0002 \
        run data get storage c50:function LastOutput.vector[0] 10000
    execute \
        store result storage cursedguns:function macro_input.Motion[1] double 0.00015 \
        run data get storage c50:function LastOutput.vector[1] 10000
    execute \
        store result storage cursedguns:function macro_input.Motion[2] double 0.0002 \
        run data get storage c50:function LastOutput.vector[2] 10000
    data \
        modify storage cursedguns:function macro_input.Rotation \
        set from entity @s Rotation

    execute \
        anchored eyes \
        positioned ^ ^ ^0.2 \
        run function cursedguns:item/armafly/summon_armadillo with storage cursedguns:function macro_input
        
    data remove storage cursedguns:function macro_input

    execute \
        anchored eyes \
        run playsound entity.breeze.wind_burst neutral @a ^ ^ ^0.2 1 2 0
    execute \
        anchored eyes \
        run playsound entity.armadillo.roll neutral @a ^ ^ ^0.2 1 1 0
    execute \
        anchored eyes \
        run particle poof ^ ^ ^0.2 0 0 0 0 3 normal @a
    execute \
        anchored eyes \
        run particle gust ^ ^ ^0.2 0 0 0 0 1 normal @a