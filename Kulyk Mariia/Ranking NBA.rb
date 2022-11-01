
def nba_cup(r,t)
  return "" if t.empty?
  tr = r.tr(",", "\n").scan(/^.*#{t}\s.*$/)
  return "#{t}:This team didn't play!" if tr.empty?
  return "Error(float number):#{tr.join}" if tr.join.match(/\d+\.\d+/)
  tr.map! {|g| g.scan(/^.+\s\d+(?=\s)|\w.+\s\d+$/)}.map! {|a,b| a.match(/#{t}/) ? [a,b] : [b,a]}
  h = {"W"=>0, "D"=>0, "L"=>0, "S"=>0, "C"=>0}
  tr.each do |a,b|
    as = a[/\d+$/].to_i
    bs = b[/\d+$/].to_i
    h["W"] += 1 if as > bs
    h["D"] += 1 if as == bs
    h["L"] += 1 if as < bs
    h["S"] += as
    h["C"] += bs
  end
  "#{t}:W=#{h["W"]};D=#{h["D"]};L=#{h["L"]};Scored=#{h["S"]};Conceded=#{h["C"]};Points=#{h["W"] * 3 + h["D"]}"
end
