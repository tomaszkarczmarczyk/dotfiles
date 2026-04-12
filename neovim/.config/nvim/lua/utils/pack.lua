local function get_inactive_pack_names()
  return vim.iter(vim.pack.get())
      :filter(function(plugin)
        return not plugin.active
            and plugin.spec
            and type(plugin.spec.name) == "string"
            and plugin.spec.name ~= ""
      end)
      :map(function(plugin)
        return plugin.spec.name
      end)
      :totable()
end

local function format_plugin_preview(names, limit)
  limit = limit or 5

  if #names <= limit then
    return table.concat(names, ", ")
  end

  local preview = {}
  for i = 1, limit do
    preview[#preview + 1] = names[i]
  end
  preview[#preview + 1] = ("... +%d more"):format(#names - limit)

  return table.concat(preview, ", ")
end

local function notify_info(msg)
  vim.notify(msg, vim.log.levels.INFO)
end

local function notify_error(msg)
  vim.notify(msg, vim.log.levels.ERROR)
end

local function delete_plugins(names)
  local ok, err = pcall(vim.pack.del, names)

  if not ok then
    notify_error("Error during removal: " .. tostring(err))
    return false
  end

  notify_info("Successfully removed: " .. table.concat(names, ", "))
  return true
end

vim.api.nvim_create_user_command("PackPrune", function()
  local inactive = get_inactive_pack_names()

  if #inactive == 0 then
    notify_info("All plugins are active. Nothing to clean!")
    return
  end

  local prompt = ("Delete %d inactive plugin(s)? %s")
      :format(#inactive, format_plugin_preview(inactive, 6))

  vim.ui.select({ "Yes, delete them", "Cancel" }, {
    prompt = prompt,
  }, function(choice)
    if choice == nil or choice == "Cancel" then
      notify_info("Cleanup cancelled.")
      return
    end

    delete_plugins(inactive)
  end)
end, {
  desc = "Safely remove inactive plugins managed by vim.pack",
})
