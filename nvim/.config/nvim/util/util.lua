local util =  {}

-- adds a new key 'desc' with the value of choice
function util.addDesc(table,value)
    table["desc"] = value
    return table
end


return util
