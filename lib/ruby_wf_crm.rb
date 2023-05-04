require 'fileutils'
class RubyWfCrm
  def self.start
    FileUtils.cp_r 'lib/migrate/.', 'db/migrate'
    FileUtils.cp_r 'lib/models/.', 'app/models'
  end
end
