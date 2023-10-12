SELECT pokemon.pokemon_name AS pokemon_name, pokemon.str * multipliers.multiplier AS modifiedStrength, multipliers.element AS element
FROM pokemon
JOIN multipliers ON pokemon.element_id = multipliers.id
WHERE pokemon.str * multipliers.multiplier >= 40
ORDER BY modifiedStrength DESC;

--P table
--R rows where str * multipler >= 40. Rows pokemon_name, modifiedStrength, and element; descending order of modifiedStrength
--E Flareon, 40, Fire
--P ORDER BY modifiedStrength join both tables on pokemon.element_id = multipliers.id
