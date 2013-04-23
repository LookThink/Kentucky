module ChaserSupport
  def install_chaser(path = nil)
    if path
      run_simple("bundle exec chaser install --path '#{path}'")
    else
      run_simple("bundle exec chaser install")
    end
  end

  def chaser_path(prefix, path)
    if prefix
      File.join(prefix, 'chaser', path)
    else
      File.join('chaser', path)
    end
  end
end

World(ChaserSupport)
