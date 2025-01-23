
        tellraw @s [ \
            { \
                translate: 'pack.cursedguns.info', \
                with: [ \
                    { \
                        translate: 'emoji.cursedguns.armadillo_scute_concept', \
                        font: 'cursedguns:emoji', \
                        shadow_color: 0 \
                    }, \
                    { \
                        translate: 'pack.cursedguns.name', \
                        color: 'red', \
                        hover_event: { \
                            action: 'show_text', \
                            text: { translate: 'pack.cursedguns.description' } \
                        } \
                    }, \
                    { \
                        translate: 'pack.cursedguns.authors', \
                        color: 'yellow', \
                        with: [ \
                            { \
                                text: 'SilentPaltos', \
                                color: 'green' \
                            }, \
                            { \
                                text: 'Fedea', \
                                color: 'green' \
                            } \
                        ] \
                    }, \
                    { \
                        translate: 'pack.cursedguns.version', \
                        color: 'yellow', \
                        with: [ \
                            { \
                                text: 'Beta 1.4', \
                                color: 'green' \
                            } \
                        ] \
                    }, \
                    { \
                        translate: 'pack.cursedguns.get_links_button', \
                        color: 'aqua', \
                        click_event: { \
                            action: 'run_command', \
                            command: 'function cursedguns:info/links' \
                        }, \
                        with: [ { translate: 'pack.cursedguns.get_links' } ] \
                    } \    
                ] \
            } \
        ]