data:extend({
    {
        type = "technology",
        name = "tb-mq-mythic-quality",
        icon = "__MythicQuality__/graphics/technology/mythic-quality.png",
        icon_size = 256,
        effects =
        {
            {
                type = "unlock-quality",
                quality = "tb-mq-mythic"
            }
        },
        prerequisites = { "legendary-quality" },
        unit =
        {
            count = 10000,
            ingredients =
            {
                { "automation-science-pack", 1 },
                { "logistic-science-pack",   1 },
                { "chemical-science-pack",   1 },
                { "production-science-pack", 1 },
                { "utility-science-pack",    1 },
                { "space-science-pack",      1 },
            },
            time = 60
        }
    },
    {
        type = "technology",
        name = "tb-mq-celestial-quality",
        icon = "__MythicQuality__/graphics/technology/celestial-quality.png",
        icon_size = 256,
        effects =
        {
            {
                type = "unlock-quality",
                quality = "tb-mq-celestial"
            }

        },
        prerequisites = { "tb-mq-mythic-quality" },
        unit =
        {
            count = 20000,
            ingredients =
            {
                { "automation-science-pack", 1 },
                { "logistic-science-pack",   1 },
                { "chemical-science-pack",   1 },
                { "production-science-pack", 1 },
                { "utility-science-pack",    1 },
                { "space-science-pack",      1 },
            },
            time = 60
        }
    },

})

if settings.startup["tb-mq-singularity-enabled"].value == true then
    if settings.startup["tb-mq-seperate-singularity"].value == false then
        data.raw.technology["tb-mq-celestial-quality"].effects = {
            {
                type = "unlock-quality",
                quality = "tb-mq-celestial"
            },
            {
                type = "unlock-quality",
                quality = "tb-mq-singularity"
            }
        }
        data.raw.technology["tb-mq-celestial-quality"].icon =
        "__MythicQuality__/graphics/technology/singularity-enabled-quality.png"
    else
        data:extend({
            {
                type = "technology",
                name = "tb-mq-singularity-quality",
                icon = "__MythicQuality__/graphics/technology/singularity-quality.png",
                icon_size = 256,
                effects =
                {
                    {
                        type = "unlock-quality",
                        quality = "tb-mq-singularity"
                    }
                },
                prerequisites = { "tb-mq-celestial-quality" },
                unit =
                {
                    count = 40000,
                    ingredients =
                    {
                        { "automation-science-pack", 1 },
                        { "logistic-science-pack",   1 },
                        { "chemical-science-pack",   1 },
                        { "production-science-pack", 1 },
                        { "utility-science-pack",    1 },
                        { "space-science-pack",      1 },
                    },
                    time = 60
                }
            },
        });
    end
end



if mods["space-age"] then
    data.raw.technology["tb-mq-mythic-quality"].unit = {
        count = 10000,
        ingredients =
        {
            { "automation-science-pack",      1 },
            { "logistic-science-pack",        1 },
            { "chemical-science-pack",        1 },
            { "production-science-pack",      1 },
            { "utility-science-pack",         1 },
            { "space-science-pack",           1 },
            { "metallurgic-science-pack",     1 },
            { "agricultural-science-pack",    1 },
            { "electromagnetic-science-pack", 1 },
            { "cryogenic-science-pack",       1 }
        },
        time = 60
    }
    data.raw.technology["tb-mq-celestial-quality"].unit = {
        count = 20000,
        ingredients =
        {
            { "automation-science-pack",      1 },
            { "logistic-science-pack",        1 },
            { "chemical-science-pack",        1 },
            { "production-science-pack",      1 },
            { "utility-science-pack",         1 },
            { "space-science-pack",           1 },
            { "metallurgic-science-pack",     1 },
            { "agricultural-science-pack",    1 },
            { "electromagnetic-science-pack", 1 },
            { "cryogenic-science-pack",       1 }
        },
        time = 60
    }
    if data.raw.technology["tb-mq-singularity-quality"] then
        data.raw.technology["tb-mq-singularity-quality"].unit = {
            count = 40000,
            ingredients =
            {
                { "automation-science-pack",      1 },
                { "logistic-science-pack",        1 },
                { "chemical-science-pack",        1 },
                { "production-science-pack",      1 },
                { "utility-science-pack",         1 },
                { "space-science-pack",           1 },
                { "metallurgic-science-pack",     1 },
                { "agricultural-science-pack",    1 },
                { "electromagnetic-science-pack", 1 },
                { "cryogenic-science-pack",       1 },
                { "promethium-science-pack",      1 }
            },
            time = 60
        }
    end
end

local rc = settings.startup["tb-mq-research-cost"].value
if rc == "high" then
    data.raw.technology["tb-mq-mythic-quality"].unit.count = 15000
    data.raw.technology["tb-mq-celestial-quality"].unit.count = 30000
    if data.raw.technology["tb-mq-singularity-quality"] then
        data.raw.technology["tb-mq-singularity-quality"].unit.count = 60000
    end
elseif rc == "extreme" then
    data.raw.technology["tb-mq-mythic-quality"].unit.count = 25000
    data.raw.technology["tb-mq-celestial-quality"].unit.count = 75000
    if data.raw.technology["tb-mq-singularity-quality"] then
        data.raw.technology["tb-mq-singularity-quality"].unit.count = 150000
    end
end
