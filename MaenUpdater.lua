local shell = require("shell")
local filesystem = require("filesystem")
local computer = require("computer")

shell.setWorkingDirectory("/home/myaenetwork/")
shell.execute("rm web.lua")
shell.execute("rm account.lua")

print("Updating")
shell.execute("wget https://raw.githubusercontent.com/PoroCoco/myaenetwork/main/account.lua")
shell.execute("wget https://raw.githubusercontent.com/PoroCoco/myaenetwork/main/web.lua")
shell.setWorkingDirectory("/home/")
print("Rebooting")
computer.shutdown(true)