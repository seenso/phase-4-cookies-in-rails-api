class SessionsController < ApplicationController
  
  def index
    session[:session_hello] ||= "World"
    cookies[:cookies_hello] ||= "World"
    render json: { session: session, cookies: cookies.to_hash }
  end

  # ^ returns the below
  
  # {
  #   "session": {
  #   "session_id": "bc4ef5970aefe9e430fe2b9aad7fb9ef",
  #   "session_hello": "World"
  #   },
  #   "cookies": {
  #   "ab.storage.deviceId.7af503ae-0c84-478f-98b0-ecfff5d67750": "{\"g\":\"9f414678-59e0-22b9-9973-62bf97f3a8ae\",\"c\":1636395759888,\"l\":1638751125219}",
  #   "ab.storage.userId.7af503ae-0c84-478f-98b0-ecfff5d67750": "{\"g\":\"2000517\",\"c\":1638751125216,\"l\":1638751125219}",
  #   "amp_ac9120": "tVf7z3nbTjwrEZVckNvPEN.MjAwMDUxNw==..1fmb5jbfj.1fmb5jcsb.2.0.2",
  #   "_cheese_shop_session": "iGJbgHLVVrmK86uplqlIt1gqyNPNyEF1DZDSD8rkUQUxaxTHk39xCWquuWvJXN6K400kIiIdNT94RqXZgeZzkc3lFfxAkzOlnIW4sxRgSV1bPY0KpPulgjbQfnuI//nujO1rhHapxRGxKnrUMO+jFMXTMok12Gw+YAhgLgLReb4crgyC+D0E9znGU80EA8o/M9GVPpzC6eNXzMEzkIOgnSt+PUfU3v4NBqgQoiRiy7FnTaQMfQBfrzyQDwHeJ8o20+Nv8h90BslVyDX+dN/RfCztg6ahEiqrt0XRFQ==--QGblX512rf7jHOUK--2P5LnC02hV4X8pcxLL55gg==",
  #   "cookies_hello": "World",
  #   "_session_id": "0Fc8csMeQncZEjzbZQBdJzGS7/KLuSSgf1fuZDh9oXX0wVThJYzW81bCAp89ROUPUMKpFM7i+/9H9aK0+Ape4RpCaxhRTU0Tb6n/TNl6SzErztZ0WMYMz3nESWOC3lUixSvw5DOe2UgxnAsFBw1/9X/sd4+QRfeNHZBLaIcLvTwS8AUZhtmk7J1XZdjc1po+nMw23T1kqE3ovF6g+JsX7dWmOXKJ1HXiKSi9CrfzinwqvXUrvkJLv54xbQ==--rxaakFQXtfe8YkDT--Iw+AQtwoT85Rhbmk7rYCXA==",
  #   "ab.storage.sessionId.7af503ae-0c84-478f-98b0-ecfff5d67750": "{\"g\":\"3a346a90-a656-1cd2-b73c-3c566ef418ff\",\"e\":2142623937707,\"c\":1638751125218,\"l\":1642623937707}"
  #   }
  #   }

end
