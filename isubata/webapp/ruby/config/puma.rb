before_fork do
  require 'puma_worker_killer'

  PumaWorkerKiller.start
end
