local Location = {
    rootPath =  "plugins.cyber_engine_tweaks.mods.cityhack."
}

function Location.ListAll()

    local db = sqlite3.open(Location.rootPath.."main.db")

    -- db:exec[[
    --   CREATE TABLE test (id INTEGER PRIMARY KEY, content);
    
    --   INSERT INTO test VALUES (NULL, 'Hello World');
    --   INSERT INTO test VALUES (NULL, 'Hello Lua');
    --   INSERT INTO test VALUES (NULL, 'Hello Sqlite3')
    -- ]]
    
    for row in db:nrows("SELECT * FROM locations") do
      print(row.id, row.name)
    end

end

return Location