--require "json"

local kcloud = {}

kcloud.init = function()
    --ngx.header["content-type"] = 'application/json; charset=UTF-8'
    --nginx.req.read_body()
    ngx.say('Hello world!')
end



kcloud.init();

