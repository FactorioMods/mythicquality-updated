local mythicOdds = settings.startup["tb-mq-mythic-odds"].value
local celestialttings = settings.startup["tb-mq-celestial-odds"].value
local singularityOdds = settings.startup["tb-mq-singularity-odds"].value


data.raw.quality.legendary.next_probability = mythicOdds
data.raw.quality.legendary.next = "tb-mq-mythic"

data:extend(
	{
		{
			type = "quality",
			name = "tb-mq-mythic",
			level = 8,
			color = { 100, 90, 0 },
			order = "f",
			next = "tb-mq-celestial",
			next_probability = celestialttings,
			subgroup = "qualities",
			icon = "__MythicQuality__/graphics/icons/quality-mythic.png",
			beacon_power_usage_multiplier = 1 / 12,
			mining_drill_resource_drain_multiplier = 1 / 12,
			science_pack_drain_multiplier = 92 / 100,
		},
		{
			type = "quality",
			name = "tb-mq-celestial",
			level = 12,
			color = { 0, 100, 98 },
			order = "g",
			next = "tb-mq-singularity",
			next_probability = singularityOdds,
			subgroup = "qualities",
			icon = "__MythicQuality__/graphics/icons/quality-celestial.png",
			beacon_power_usage_multiplier = 1 / 24,
			mining_drill_resource_drain_multiplier = 1 / 24,
			science_pack_drain_multiplier = 88 / 100,
		},
		{
			type = "quality",
			name = "tb-mq-singularity",
			level = 17,
			color = { 156, 156, 156 },
			order = "h",
			subgroup = "qualities",
			icon = "__MythicQuality__/graphics/icons/quality-singularity.png",
			beacon_power_usage_multiplier = 1 / 48,
			mining_drill_resource_drain_multiplier = 1 / 48,
			science_pack_drain_multiplier = 75 / 100,
		}
	}
)


local scale = settings.startup["tb-mq-scale-factor"].value
if scale == "linear" then
	data.raw.quality["tb-mq-mythic"].level = 8
	data.raw.quality["tb-mq-celestial"].level = 10
	data.raw.quality["tb-mq-singularity"].level = 12
elseif scale == "normal" then
	data.raw.quality["tb-mq-mythic"].level = 8
	data.raw.quality["tb-mq-celestial"].level = 12
	data.raw.quality["tb-mq-singularity"].level = 16
elseif scale == "high" then
	data.raw.quality["tb-mq-mythic"].level = 9
	data.raw.quality["tb-mq-celestial"].level = 13
	data.raw.quality["tb-mq-singularity"].level = 19
elseif scale == "higher" then
	data.raw.quality["tb-mq-mythic"].level = 10
	data.raw.quality["tb-mq-celestial"].level = 15
	data.raw.quality["tb-mq-singularity"].level = 21
elseif scale == "extreme" then
	data.raw.quality["tb-mq-mythic"].level = 10
	data.raw.quality["tb-mq-celestial"].level = 18
	data.raw.quality["tb-mq-singularity"].level = 30
end

if mods["rz-quality-labs"] then
	data.raw.quality["tb-mq-mythic"].science_pack_drain_multiplier = 1 / 12
	data.raw.quality["tb-mq-celestial"].science_pack_drain_multiplier = 1 / 24
	if data.raw.quality["tb-mq-celestial"] then
		data.raw.quality["tb-mq-singularity"].science_pack_drain_multiplier = 1 / 48
	end
end
