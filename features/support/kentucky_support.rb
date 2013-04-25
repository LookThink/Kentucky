module KentuckySupport
  def install_kentucky(path = nil)
    if path
      run_simple("bundle exec kentucky install --path '#{path}'")
    else
      run_simple("bundle exec kentucky install")
    end
  end

  def kentucky_path(prefix, path)
    if prefix
      File.join(prefix, 'kentucky', path)
    else
      File.join('kentucky', path)
    end
  end
end

World(KentuckySupport)
