lastcommand = nil
function string.shellescape(str)
   return "'"..string.gsub(str, "'", "'\"'\"'").."'"
end

function do_notify(a)
-- local ytCommand = "youtube-dl --skip-download --no-warnings --get-title  https://youtu.be/" .. a
   local getTitle = [[playerctl metadata --format "{{ artist }} {{ title }}" | sed 's/[0-9]\{4\}-.*//']]
   local theTitle = io.popen(getTitle)
   
   
   local command = ("dunstify -r 120 -i $HOME/media/wallpapers/icons/cute.png 'Now Playing:' -- '%s'"):format(theTitle:read("*all"))
   if command ~= lastcommand then
      os.execute(command)
      -- os.execute("pkill -RTMIN+3 i3blocks")
      os.execute("polybar-msg hook mpv 1")
      lastcommand = command
   end
end

function notify_current_track()
   data = mp.get_property_native("metadata")
   if data then
      local artist = (data["ARTIST"] or data["artist"] or " ")
      local title = (data["TITLE"] or data["title"] or " ")
      if artist..title~="  " then
         do_notify(title)
         return
      end
   end
   local data = mp.get_property("path")
   if data then
      local file = data:gsub("^.-([^/]+)$","%1")
      file = file:gsub("%....$","") -- delete 3 char suffix
      local dir = data:gsub("^.-([^/]+)/[^/]*$","%1")
      do_notify(file)
   end
end

mp.register_event("file-loaded", notify_current_track)
