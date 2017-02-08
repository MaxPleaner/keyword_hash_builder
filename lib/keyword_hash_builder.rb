require 'debug_inspector'


class KeywordHashBuilder
  module BacktickPatch
    def `(str)
      RubyVM::DebugInspector.open do |inspector|
        str.split(?,).zip(eval("[#{str}]", inspector.frame_binding(2))).to_h.reduce({}) do |mem, (k,v)|
          mem.tap { mem[k.to_s] = v }
        end
      end
    end
    refine Object do
      include BacktickPatch
    end
  end
  using BacktickPatch
  def self.autotest
    a = 1
    puts "`a` == #{`a`}"
  end
  def self.load_globally
    Object.include BacktickPatch
  end
  def self.patch
    BacktickPatch
  end
end

Gem.find_files("keyword_hash_builder/**/*.rb").each &method(:require)
