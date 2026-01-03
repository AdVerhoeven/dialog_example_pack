$execute unless data storage essentials:options players[$(id)] run tellraw @s "Nothing stored at index $(id)"
$tellraw @s [{storage:"essentials:options",nbt:"players[$(id)].display",interpret:true},{text:"\u00A0["},{storage:"essentials:options",nbt:"players[$(id)].id"},{text:"]"}]
