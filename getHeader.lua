pathsep = '\\'

session:answer()

--prompt = "ivr" .. pathsep  .. "ivr-say_name.wav"
--session:streamFile(prompt)

--prompt = "c:\\xampp\\htdocs\\a\\prompts\\Urd_prompts\\Salaam.wav"
--session:streamFile(prompt)

uuida = session:get_uuid()
session:setAutoHangup(false)

freeswitch.consoleLog("INFO","UUIDA:  " .. uuida .. "\n")
uuida1 = string.sub(uuida,1)
freeswitch.consoleLog("INFO","UUIDA1:  " .. uuida1 .. "\n")

var1 = session:getVariable("sip_h_X-pass")
freeswitch.consoleLog("INFO","Pass:  " .. var1 .. "\n")
var1 = session:getVariable("sip_h_X-phno")
freeswitch.consoleLog("INFO","Phnone Number:  " .. var1 .. "\n")

-- web-call.lua
 -- web_url = "http://127.0.0.1/FS/APolly2CLUS-TFS.php?uuid=" ..uuida1
-- web_url = "http://127.0.0.1/FS/APolly2QxDkCL-TFS.php?uuid=" ..uuida1
-- web_url = "http://127.0.0.1/FS/TFS.php?uuid=" ..uuida1
-- Get a FreeSWITCH API object
-- api = freeswitch.API()

--freeswitch.consoleLog("INFO","URL:  " .. web_url .. "\n")

--raw_data = api:execute("curl", web_url)
--raw_data = session:execute("curl", web_url) --also works fine. No need for api
-- digits = session:read(5, 7, "c:\\xampp\\htdocs\\a\\prompts\\Urd_prompts\\Salaam.wav", 30000, "#");

--freeswitch.consoleLog("INFO","Raw data:\n" .. raw_data .. "\n\n")