require "benchmark"

n = 200_000

str = "abc12345def67890"

Benchmark.bm 7 do |r|
  r.report "[^\d]" do
    n.times do
      str.gsub(/[^\d]/, "")
    end
  end

  r.report "[^\d]+" do
    n.times do
      str.gsub(/[^\d]+/, "")
    end
  end

  r.report "delete" do
    n.times do
      str.delete("^0-9")
    end
  end
end
