# C. Constantinides, 2009.

module Authenticator
  def authenticate(passwd)
    if (passwd == "pass") then
      return "true"
    else
      return "false"
    end
  end
end