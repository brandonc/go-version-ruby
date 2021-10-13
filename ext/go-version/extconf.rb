require "mkmf"

find_executable("go")

$objs = []
def $objs.empty?; false; end

create_makefile("go_version/go_version")

case `#{CONFIG["CC"]} --version`
when /Free Software Foundation/
  ldflags = '-W1,--unresolved-symbols=ignore-all'
when /clang/
  ldflags = '-undefined dynamic_lookup'
end

File.open("Makefile", "a") do |f|
  f.write <<-EOS.gsub(/^ {8}/, "\t")
$(DLLIB):
        CGO_CFLAGS='$(INCFLAGS)' CGO_LDFLAGS='#{ldflags}' go build -buildmode=c-shared -o $(DLLIB) .
  EOS
end
