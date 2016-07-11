require 'json'
require 'bundler'
Bundler.require :default
Oj.default_options = { mode: :compat }


class RediJson

  def initialize(redis_host: "127.0.0.1", redis_port: 6372) # TODO: recheck port
    @r = Redis.new
  end

  def keys(keys="*")
    R.keys keys
  end

  # main api - aliases for get and set in implementation terms

  def [](key)
    get key
  end

  def []=(key, val)
    set key, val
  end

  # core concept and implementation

  def get(key)
    if @r.exists key
      val = @r[key]
      if %w({ [).include?(val[0])
        JSON.parse val
      else
        val[1..-2]
      end
    end
  end

  def set(key, val)
    @r[key] = val.to_json
  end

end
