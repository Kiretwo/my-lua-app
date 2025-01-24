local _M = {}

function _M.get_data()
  -- These could be statically defined or even fetched from a database
  return {
    title   = "My Dynamic Page",
    heading = "Hello, OpenResty!",
    message = "Data loaded from a separate Lua module."
  }
end

return _M
