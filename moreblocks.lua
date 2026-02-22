caverealms.stairplus_nodes = {
	"caverealms:glow_crystal",
	"caverealms:glow_emerald",
	"caverealms:glow_mese",
	"caverealms:glow_ruby",
	"caverealms:glow_amethyst",
	"caverealms:salt_crystal",
	"caverealms:stone_with_moss",
	"caverealms:stone_with_lichen",
	"caverealms:stone_with_algae",
	"caverealms:stone_with_salt",
	"caverealms:hot_cobble",
	"caverealms:glow_obsidian",
	"caverealms:glow_obsidian_lava",
	"caverealms:glow_obsidian_brick",
	"caverealms:glow_obsidian_brick_lava",
	"caverealms:glow_obsidian_glass",
}

for i = 1, #caverealms.stairplus_nodes, 1 do
	local modname, nodename = caverealms.stairplus_nodes[i]:match("^(caverealms):(.*)$")
	local fullname = modname .. ":" .. nodename
	local def = core.registered_nodes[fullname]
	stairsplus:register_all(modname, nodename, fullname, def)
end
