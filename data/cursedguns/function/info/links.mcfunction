
    tellraw @s [ \
        { \
            "translate": "pack.cursedguns.links", \
            "with": [ \
                { \
                    "translate": "pack.cursedguns.link_modrinth", \
                    "color": "green", \
                    "click_event": { \
                        "action": "open_url", \
                        "url": "https://modrinth.com/project/cursedguns" \
                    } \
                }, \
                { \
                    "translate": "pack.cursedguns.link_planetminecraft", \
                    "color": "aqua", \
                    "click_event": { \
                        "action": "open_url", \
                        "url": "https://www.planetminecraft.com/data-pack/cursedguns/" \
                    } \
                }, \
                { \
                    "translate": "pack.cursedguns.link_github", \
                    "color": "gray", \
                    "click_event": { \
                        "action": "open_url", \
                        "url": "https://github.com/SilentPaltos/cursedguns" \
                    } \
                } \
            ] \
        } \
    ]