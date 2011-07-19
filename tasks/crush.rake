# Requires pngcrush
# Install with homebrew with `brew install pngcrush`
namespace :crush do
  task :png do
    Dir['output/assets/images/**/'].each do|dir|
      if File.directory? dir
        sh "pngcrush -e .crushed -rem time -rem alla -rem allb -l 9 -w 32 -plte_len 0 -reduce -rem gAMA -rem cHRM -rem iCCP -rem sRGB -brute #{dir}*.png"
      end
    end
    sh 'find output/assets/images -name "*.crushed" -print | sed "s/\\(.*\\)\\.crushed/ & \\1.png/" | xargs -L1 mv'
  end

  task :jpg do
    
  end
end

desc 'Optimize images in output directory'
task :crush => [:'crush:png', :'crush:jpg']