local vcap_services = require('cjson').decode( os.getenv('VCAP_SERVICES') )

local _M = {}
_M._VERSION = '0.1'

function _M.find_by_tag(s_tag)
  for n, service_type in pairs(vcap_services) do
    for s, service in ipairs(service_type) do
      for t, tag in ipairs(service.tags) do
        if tag == s_tag then
          return service
        end
      end
    end
  end
end
  

return _M