class Student
  def print_name
    p "My name is: #{name}"
    p "My email is: #{email}"
  end

  def meow
    Cat.new.meow
  end

  def path_to_home
    q = @vertices.values
    q.each do |v|
      v.dist = Float::INFINITY
      v.prev = nil
    end
    @vertices[start].dist = 0
    until q.empty?
      u = q.min_by {|vertex| vertex.dist}
      break if u.dist == Float::INFINITY
      q.delete(u)
      u.neighbours.each do |v|
        vv = @vertices[v]
        if q.include?(vv)
          alt = u.dist + @edges[[u.name, v]]
          if alt < vv.dist
            vv.dist = alt
            vv.prev = u.name
          end
        end
      end
    end
  end
end
