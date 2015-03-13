module Kernel
  def using(resource)
    begin
      yield
    ensure
      resource.dispose
    end
  end
end

# Kernel::using 以待管理的资源作为参数，还要接收一个块作为参数，在此执行代码。无论块中得代码是否正常执行完成，
# ensure都会调用resource.dispose方法来释放它。
# 如发生了异常，Kernel::using还有把异常重新抛给调用者。