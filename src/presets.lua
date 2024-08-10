return {
    ["Minify"] = {
        LuaVersion = "Lua51";  -- The default LuaVersion is Lua51
        VarNamePrefix = "";  -- For minifying, no VarNamePrefix is applied
        NameGenerator = "MangledShuffled";  -- Name Generator for Variables
        PrettyPrint = false;  -- No pretty printing
        Seed = 0;  -- Seed is generated based on current time
        Steps = {}  -- No obfuscation steps
    };
    ["Weak"] = {
        LuaVersion = "Lua51";  -- The default LuaVersion is Lua51
        VarNamePrefix = "";  -- For minifying, no VarNamePrefix is applied
        NameGenerator = "MangledShuffled";  -- Name Generator for Variables that look like this: IlI1lI1l
        PrettyPrint = false;  -- No pretty printing
        Seed = 0;  -- Seed is generated based on current time
        Steps = {  -- Obfuscation steps
            {
                Name = "Vmify";
                Settings = {};
            },
            {
                Name = "ConstantArray";
                Settings = {
                    Treshold = 1;
                    StringsOnly = true;
                };
            },
            {
                Name = "WrapInFunction";
                Settings = {};
            },
            {
                Name = "ProxifyLocals";
                Settings = {};
            }
        }
    };
    ["Medium"] = {
        LuaVersion = "Lua51";  -- The default LuaVersion is Lua51
        VarNamePrefix = "Krixx";  -- VarNamePrefix applied
        NameGenerator = "MangledShuffled";  -- Name Generator for Variables
        PrettyPrint = false;  -- No pretty printing
        Seed = 0;  -- Seed is generated based on current time
        Steps = {  -- Obfuscation steps
            {
                Name = "ProxifyLocals";
                Settings = {};
            },
            {
                Name = "WrapInFunction";
                Settings = {
                    UseDebug = false;
                };
            },
            {
                Name = "Vmify";
                Settings = {};
            },
            {
                Name = "ConstantArray";
                Settings = {
                    Treshold = 1;
                    StringsOnly = true;
                    Shuffle = true;
                    Rotate = true;
                    LocalWrapperTreshold = 0;
                };
            },
            {
                Name = "ConstantArray";
                Settings = {};
            },
            {
                Name = "ProxifyLocals";
                Settings = {};
            }
        }
    };
    ["Strong"] = {
        LuaVersion = "Lua51";  -- The default LuaVersion is Lua51
        VarNamePrefix = "";  -- For minifying, no VarNamePrefix is applied
        NameGenerator = "MangledShuffled";  -- Name Generator for Variables that look like this: IlI1lI1l
        PrettyPrint = false;  -- No pretty printing
        Seed = 0;  -- Seed is generated based on current time
        Steps = {  -- Obfuscation steps
            {
                Name = "Vmify";
                Settings = {};
            },
            {
                Name = "EncryptStrings";
                Settings = {};
            },
            {
                Name = "AntiTamper";
                Settings = {};
            },
            {
                Name = "Vmify";
                Settings = {};
            },
            {
                Name = "ConstantArray";
                Settings = {
                    Treshold = 1;
                    StringsOnly = true;
                    Shuffle = true;
                    Rotate = true;
                    LocalWrapperTreshold = 0;
                };
            },
            {
                Name = "NumbersToExpressions";
                Settings = {};
            },
            {
                Name = "WrapInFunction";
                Settings = {};
            }
        }
    }
}
