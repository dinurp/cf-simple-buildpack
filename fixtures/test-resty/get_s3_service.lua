local cf_services = require "vcap_services"
local service = cf_services.find_by_tag("s3")
local host = service.credentials.bucket .. '.' .. service.credentials.host
print(host)