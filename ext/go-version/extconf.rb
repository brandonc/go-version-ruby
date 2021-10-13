require "mkmf"

ENV['ARCH_FLAGS'] = RbConfig::CONFIG['ARCH_FLAG']
if RUBY_PLATFORM =~ /darwin/
  if RUBY_PLATFORM =~ /arm64/
    ENV['ARCH_FLAGS'] = '-arch arm64'
  else
    ENV['ARCH_FLAGS'] = '-arch i386 -arch x86_64'
  end
end

`go build -buildmode=c-shared -o go-version.so main.go`
