local dummy = ScenEdit_AddUnit({type="Ship",name="Dummy",dbid=2553,side="PlayerSide",latitude=0,longitude=0})
local unitmt = getmetatable(dummy)
ScenEdit_DeleteUnit({guid=dummy.guid})

function unitmt.__marshal(unit)
	return "unit",unit.guid
end

function KeyStore.demarshallers.mrsh_unit(guid)
	return ScenEdit_GetUnit({guid = guid})
end