def IntersectingLines(strArr)
	(0..3).each do |i| 
		strArr[i].gsub!("(", "") 
		strArr[i].gsub!(")", "") 
		strArr[i] = strArr[i].split(",")
		strArr[i][0] = strArr[i][0].to_i 
		strArr[i][1] = strArr[i][1].to_i 
	end	 
	line1 = strArr[0..1] 
	line2 = strArr[2..3] 
# If line1 is vertical but line2 is not:	
	if line1[0][0] == line1[1][0] && line2[0][0] != line2[1][0]
		intersection_x = line1[0][0].to_r
		slope2 = (line2[0][1] - line2[1][1])/(line2[0][0] - line2[1][0]).to_r 
		y_intercept2 = (line2[0][1] - slope2*line2[0][0]).to_r  
		intersection_y = (slope2 * intersection_x + y_intercept2).to_r 
	end 	
# If line2 is vertical but line1 is not:	
	if line2[0][0] == line2[1][0] && line1[0][0] != line1[1][0]
		intersection_x = line2[0][0].to_r
		slope1 = (line1[0][1] - line1[1][1])/(line1[0][0] - line1[1][0]).to_r 
		y_intercept1 = (line1[0][1] - slope1*line1[0][0]).to_r  
		intersection_y = (slope1 * intersection_x + y_intercept1).to_r
	end
# If both line1 and line2 are vertical but are not the same:	
	return "no intersection" if line1[0][0] == line1[1][0] && line2[0][0] == line2[1][0] && line1[0][0] != line2[0][0] 
# If neither line1 nor line2 is vertical: 	
	if line1[0][0] != line1[1][0] && line2[0][0] != line2[1][0]
		slope1 = (line1[0][1] - line1[1][1])/(line1[0][0] - line1[1][0]).to_r  
		slope2 = (line2[0][1] - line2[1][1])/(line2[0][0] - line2[1][0]).to_r 
		
		y_intercept1 = (line1[0][1] - slope1*line1[0][0]).to_r 
		y_intercept2 = (line2[0][1] - slope2*line2[0][0]).to_r  
		
		return "no intersection" if slope1 == slope2 && y_intercept1 != y_intercept2 
		
		intersection_x = (y_intercept2 - y_intercept1)/(slope1 - slope2).to_r
		intersection_y = (slope1 * intersection_x + y_intercept1).to_r  
	end  
	
	if intersection_x.to_f != intersection_x.to_i  
				intersection_x = intersection_x.to_r 
	else 
				intersection_x = intersection_x.to_i 
	end 	
			
	if intersection_y.to_f != intersection_y.to_i   
				intersection_y = intersection_y.to_r 
	else 
				intersection_y = intersection_y.to_i 
	end 	
	
	return "(" + intersection_x.to_s + "," + intersection_y.to_s + ")" 
end
   
   
# keep this function call here    
puts IntersectingLines(STDIN.gets)
