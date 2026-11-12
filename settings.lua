data:extend({
    {
        type = "bool-setting",
        name = "tb-mq-singularity-enabled",
        setting_type = "startup",
        default_value = true,
        order = "aasb",
    },
    {
        type = "bool-setting",
        name = "tb-mq-seperate-singularity",
        setting_type = "startup",
        default_value = true,
        order = "aasba",
    },
    {
        type = "string-setting",
        name = "tb-mq-scale-factor",
        setting_type = "startup",
        allowed_values = { "linear", "normal", "high", "higher", "extreme" },
        default_value = "normal",
        order = "aar",
    },
    {
        type = "string-setting",
        name = "tb-mq-research-cost",
        setting_type = "startup",
        allowed_values = { "normal", "high", "extreme" },
        default_value = "high",
        order = "aas",
    },
    {
        type = "double-setting",
        name = "tb-mq-mythic-odds",
        setting_type = "startup",
        default_value = 0.1,
        order = "odds-a",
    },
    {
        type = "double-setting",
        name = "tb-mq-celestial-odds",
        setting_type = "startup",
        default_value = 0.01,
        order = "odds-b",
    },
    {
        type = "double-setting",
        name = "tb-mq-singularity-odds",
        setting_type = "startup",
        default_value = 0.001,
        order = "odds-c",
    },

})
